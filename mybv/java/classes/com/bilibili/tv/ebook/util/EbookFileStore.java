package com.bilibili.tv.ebook.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;

/**
 * 电子书数据文件存储层
 *
 * 将书架、阅读进度、阅读设置持久化到外部公共目录 /sdcard/Download/ebook_data/bookshelf.json，
 * 使不同视频 APP（复用同一套电子书代码）可以共享书架与阅读进度数据。
 *
 * 存储策略：
 * 1. 优先读写外部公共目录 JSON 文件（可跨 APP 共享）
 * 2. 外部目录不可写（无权限 / 未挂载）时降级回退 SharedPreferences（保证功能始终可用）
 * 3. 写文件成功后同步更新 SharedPreferences 镜像，降级切换时数据不丢
 * 4. 写入采用原子写（临时文件 + rename），防止 JSON 损坏
 * 5. 文件不存在时自动从 SharedPreferences 迁移旧数据
 *
 * 文件格式（bookshelf.json）：
 * {
 *   "version": 1,
 *   "bookshelf": [ ...书架项数组... ],
 *   "progress": { "bookId": { ...阅读进度... } },
 *   "settings": { "font_size": 28, "color_theme_index": 0, "screen_percent": 1, "video_position": 0, "font_size_default": 16 }
 * }
 */
public class EbookFileStore {
    private static final String TAG = "EbookFileStore";

    // 旧版 SharedPreferences 键名（迁移/镜像/降级用，与原实现保持一致）
    private static final String PREF_BOOKSHELF = "bookshelf";
    private static final String KEY_BOOKSHELF_ITEMS = "bookshelf_items";
    private static final String PREF_CACHE = "ebook_reader_prefs";
    private static final String KEY_READING_PROGRESS = "reading_progress";
    private static final String KEY_FONT_SIZE_DEFAULT = "font_size_default";
    private static final String PREF_SETTINGS = "ebook_settings";

    // JSON 文件结构键
    private static final String KEY_VERSION = "version";
    private static final String KEY_BOOKSHELF = "bookshelf";
    private static final String KEY_PROGRESS = "progress";
    private static final String KEY_SETTINGS = "settings";
    private static final String KEY_FONT_SIZE = "font_size";
    private static final String KEY_COLOR_THEME = "color_theme_index";
    private static final String KEY_SCREEN_PERCENT = "screen_percent";
    private static final String KEY_VIDEO_POSITION = "video_position";

    private static final int DATA_VERSION = 1;

    // 外部公共目录：/sdcard/Download/ebook_data/bookshelf.json
    private static final String DIR_NAME = "ebook_data";
    private static final String FILE_NAME = "bookshelf.json";
    private static final String FILE_TMP_NAME = "bookshelf.json.tmp";

    private static EbookFileStore instance;

    private Context context;
    private JSONObject data;   // 内存缓存（懒加载）
    private boolean loaded;

    private EbookFileStore(Context context) {
        this.context = context.getApplicationContext();
    }

    /** 单例：保证书架/进度/设置共享同一内存缓存，避免读写冲突 */
    public static synchronized EbookFileStore getInstance(Context context) {
        if (instance == null) {
            instance = new EbookFileStore(context);
        }
        return instance;
    }

    // ==================== 外部存储可写性 ====================

    /**
     * 外部公共存储是否可写（决定 JSON 文件是否可用）
     * 探测顺序：
     * 1. 目录 canWrite() 直接探测 —— targetSdk ≤ 29 + requestLegacyExternalStorage 的应用
     *    在 Android 11 上走 legacy 存储，只要授予 WRITE_EXTERNAL_STORAGE 即可写公共目录，
     *    不需要 MANAGE_EXTERNAL_STORAGE（与 TvBox 在 TCL Android 11/12 实测一致）
     * 2. API 30+ 且 legacy 未生效（Android 12+ 强制分区存储）时，需 MANAGE_EXTERNAL_STORAGE
     */
    public static boolean isExternalWritable() {
        if (!Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())) {
            return false;
        }
        File downloadDir = new File(Environment.getExternalStorageDirectory(), "Download");
        if (downloadDir.canWrite()) {
            return true;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            return hasManageExternalStoragePermission();
        }
        return false;
    }

    /**
     * 是否已授予 MANAGE_EXTERNAL_STORAGE（Android 11+ 所有文件访问权限）
     * 反射调用 Environment.isExternalStorageManager()（API 30 方法，编译期 android.jar 版本不足）
     */
    public static boolean hasManageExternalStoragePermission() {
        try {
            java.lang.reflect.Method method = Environment.class.getMethod("isExternalStorageManager");
            Object result = method.invoke(null);
            return result instanceof Boolean && ((Boolean) result).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    /** 数据文件（外部公共目录） */
    public File getDataFile() {
        return new File(new File(Environment.getExternalStorageDirectory(), "Download"), DIR_NAME + "/" + FILE_NAME);
    }

    // ==================== 数据加载 ====================

    private JSONObject getData() {
        if (!loaded) {
            data = load();
            loaded = true;
        }
        return data;
    }

    /**
     * 加载数据：优先读 JSON 文件；文件不存在则从 SharedPreferences 迁移
     */
    private JSONObject load() {
        JSONObject result = new JSONObject();
        try {
            File file = getDataFile();
            if (file.exists()) {
                String jsonStr = readFile(file);
                if (jsonStr != null && !jsonStr.trim().isEmpty()) {
                    result = new JSONObject(jsonStr);
                    Log.i(TAG, "从 JSON 文件加载电子书数据: " + file.getAbsolutePath());
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "读取 JSON 文件失败，使用 SharedPreferences 数据: " + e.getMessage());
            result = new JSONObject();
        }

        // 文件不存在或解析失败 → 从 SharedPreferences 迁移
        if (!result.has(KEY_BOOKSHELF) && !result.has(KEY_PROGRESS) && !result.has(KEY_SETTINGS)) {
            result = migrateFromPrefs();
        }
        return result;
    }

    /**
     * 重新从 JSON 文件加载数据（检测外部 APP 更新）
     *
     * 跨 APP 共享书架/进度时，其它 APP 可能修改了 JSON 文件；本类为单例（内存缓存），
     * 进程常驻时不感知外部变化，打开电子书面板前调用此方法刷新缓存，
     * 避免用旧缓存覆盖外部 APP 更新的进度。
     *
     * 规则：
     * - JSON 文件存在且可解析 → 以文件为准覆盖内存缓存
     * - JSON 文件不存在/解析失败 → 保留内存缓存（不丢数据）
     */
    public synchronized void reloadFromFile() {
        try {
            File file = getDataFile();
            if (file.exists()) {
                String jsonStr = readFile(file);
                if (jsonStr != null && !jsonStr.trim().isEmpty()) {
                    JSONObject fileData = new JSONObject(jsonStr);
                    if (fileData.has(KEY_BOOKSHELF) || fileData.has(KEY_PROGRESS) || fileData.has(KEY_SETTINGS)) {
                        this.data = fileData;
                        this.loaded = true;
                        Log.i(TAG, "已重新从 JSON 文件加载电子书数据（检测到外部更新）: " + file.getAbsolutePath());
                    }
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "重新加载 JSON 文件失败，保留内存缓存: " + e.getMessage());
        }
    }

    /**
     * 从旧版 SharedPreferences 迁移数据（书架 + 进度 + 设置）
     */
    private JSONObject migrateFromPrefs() {
        JSONObject result = new JSONObject();
        try {
            result.put(KEY_VERSION, DATA_VERSION);

            SharedPreferences shelfPrefs = context.getSharedPreferences(PREF_BOOKSHELF, Context.MODE_PRIVATE);
            String shelfJson = shelfPrefs.getString(KEY_BOOKSHELF_ITEMS, "");
            if (!shelfJson.isEmpty()) {
                result.put(KEY_BOOKSHELF, new org.json.JSONArray(shelfJson));
            } else {
                result.put(KEY_BOOKSHELF, new org.json.JSONArray());
            }

            SharedPreferences cachePrefs = context.getSharedPreferences(PREF_CACHE, Context.MODE_PRIVATE);
            String progressJson = cachePrefs.getString(KEY_READING_PROGRESS, "");
            if (!progressJson.isEmpty()) {
                result.put(KEY_PROGRESS, new JSONObject(progressJson));
            } else {
                result.put(KEY_PROGRESS, new JSONObject());
            }

            JSONObject settings = new JSONObject();
            settings.put(KEY_FONT_SIZE_DEFAULT, cachePrefs.getInt(KEY_FONT_SIZE_DEFAULT, 16));
            SharedPreferences settingsPrefs = context.getSharedPreferences(PREF_SETTINGS, Context.MODE_PRIVATE);
            settings.put(KEY_FONT_SIZE, settingsPrefs.getFloat(KEY_FONT_SIZE, 28f));
            settings.put(KEY_COLOR_THEME, settingsPrefs.getInt(KEY_COLOR_THEME, 0));
            settings.put(KEY_SCREEN_PERCENT, settingsPrefs.getInt(KEY_SCREEN_PERCENT, 1));
            settings.put(KEY_VIDEO_POSITION, settingsPrefs.getInt(KEY_VIDEO_POSITION, 0));
            result.put(KEY_SETTINGS, settings);

            Log.i(TAG, "已从 SharedPreferences 迁移电子书数据");
        } catch (Exception e) {
            Log.e(TAG, "迁移 SharedPreferences 数据失败", e);
        }
        return result;
    }

    // ==================== 数据保存 ====================

    /**
     * 保存：优先原子写 JSON 文件（成功后同步 SP 镜像）；文件不可写时回退 SP
     */
    private synchronized void save() {
        String json = getData().toString();
        boolean fileOk = writeFileIfPossible(json);
        if (fileOk) {
            savePrefsMirror(json);
        } else {
            // 降级：只写 SharedPreferences
            savePrefsMirror(json);
            Log.w(TAG, "外部存储不可写，数据降级保存到 SharedPreferences");
        }
    }

    /**
     * 原子写 JSON 文件（临时文件 + rename）
     */
    private boolean writeFileIfPossible(String json) {
        try {
            File file = getDataFile();
            File dir = file.getParentFile();
            if (dir != null && !dir.exists() && !dir.mkdirs()) {
                Log.w(TAG, "无法创建电子书数据目录: " + dir.getAbsolutePath());
                return false;
            }
            File tmp = new File(dir, FILE_TMP_NAME);
            FileOutputStream fos = new FileOutputStream(tmp);
            try {
                fos.write(json.getBytes("UTF-8"));
                fos.flush();
            } finally {
                fos.close();
            }
            if (!tmp.renameTo(file)) {
                // rename 失败（文件被占用等）→ 直接覆盖写
                FileOutputStream fos2 = new FileOutputStream(file);
                try {
                    fos2.write(json.getBytes("UTF-8"));
                    fos2.flush();
                } finally {
                    fos2.close();
                }
            }
            Log.i(TAG, "电子书数据已写入文件: " + file.getAbsolutePath());
            return true;
        } catch (Exception e) {
            Log.w(TAG, "写入电子书数据文件失败: " + e.getMessage());
            return false;
        }
    }

    /**
     * 同步 SharedPreferences 镜像（bookshelf / ebook_reader_prefs / ebook_settings）
     * 使降级回退时 SP 中的数据与文件保持一致
     */
    private void savePrefsMirror(String json) {
        try {
            JSONObject root = new JSONObject(json);
            JSONObject shelf = root.optJSONObject(KEY_BOOKSHELF);
            JSONObject progress = root.optJSONObject(KEY_PROGRESS);
            JSONObject settings = root.optJSONObject(KEY_SETTINGS);

            if (shelf != null) {
                context.getSharedPreferences(PREF_BOOKSHELF, Context.MODE_PRIVATE)
                        .edit().putString(KEY_BOOKSHELF_ITEMS, shelf.toString()).apply();
            }
            if (progress != null) {
                context.getSharedPreferences(PREF_CACHE, Context.MODE_PRIVATE)
                        .edit().putString(KEY_READING_PROGRESS, progress.toString()).apply();
            }
            if (settings != null) {
                SharedPreferences.Editor editor = context.getSharedPreferences(PREF_SETTINGS, Context.MODE_PRIVATE).edit();
                if (settings.has(KEY_FONT_SIZE)) {
                    editor.putFloat(KEY_FONT_SIZE, (float) settings.optDouble(KEY_FONT_SIZE, 28f));
                }
                if (settings.has(KEY_COLOR_THEME)) {
                    editor.putInt(KEY_COLOR_THEME, settings.optInt(KEY_COLOR_THEME, 0));
                }
                if (settings.has(KEY_SCREEN_PERCENT)) {
                    editor.putInt(KEY_SCREEN_PERCENT, settings.optInt(KEY_SCREEN_PERCENT, 1));
                }
                if (settings.has(KEY_VIDEO_POSITION)) {
                    editor.putInt(KEY_VIDEO_POSITION, settings.optInt(KEY_VIDEO_POSITION, 0));
                }
                editor.apply();
            }
            // 默认字体大小单独键（迁移时保留）
            int fontSizeDefault = settings != null ? settings.optInt(KEY_FONT_SIZE_DEFAULT, 16) : 16;
            context.getSharedPreferences(PREF_CACHE, Context.MODE_PRIVATE)
                    .edit().putInt(KEY_FONT_SIZE_DEFAULT, fontSizeDefault).apply();
        } catch (JSONException e) {
            Log.e(TAG, "同步 SharedPreferences 镜像失败", e);
        }
    }

    private String readFile(File file) {
        try {
            java.io.FileInputStream fis = new java.io.FileInputStream(file);
            java.io.ByteArrayOutputStream bos = new java.io.ByteArrayOutputStream();
            byte[] buf = new byte[4096];
            int len;
            while ((len = fis.read(buf)) != -1) {
                bos.write(buf, 0, len);
            }
            fis.close();
            return new String(bos.toByteArray(), "UTF-8");
        } catch (Exception e) {
            Log.w(TAG, "读取数据文件失败: " + e.getMessage());
            return null;
        }
    }

    // ==================== 书架 ====================

    /** 获取书架 JSON 字符串（数组格式），无数据返回 "[]" */
    public String getBookshelfJson() {
        JSONObject root = getData();
        Object shelf = root.opt(KEY_BOOKSHELF);
        if (shelf instanceof String) {
            return (String) shelf;
        }
        if (shelf != null) {
            return shelf.toString();
        }
        return "[]";
    }

    /** 保存书架 JSON 字符串（数组格式） */
    public void saveBookshelfJson(String bookshelfJson) {
        if (bookshelfJson == null) {
            return;
        }
        try {
            getData().put(KEY_BOOKSHELF, new org.json.JSONArray(bookshelfJson));
            save();
        } catch (JSONException e) {
            Log.e(TAG, "保存书架失败", e);
        }
    }

    // ==================== 阅读进度 ====================

    /** 获取全部阅读进度 JSON 字符串（对象格式 {bookId:{...}}），无数据返回 "{}" */
    public String getReadingProgressJson() {
        JSONObject root = getData();
        Object progress = root.opt(KEY_PROGRESS);
        if (progress != null) {
            return progress.toString();
        }
        return "{}";
    }

    /** 保存全部阅读进度 JSON 字符串（对象格式 {bookId:{...}}） */
    public void saveReadingProgressJson(String progressJson) {
        if (progressJson == null) {
            return;
        }
        try {
            getData().put(KEY_PROGRESS, new JSONObject(progressJson));
            save();
        } catch (JSONException e) {
            Log.e(TAG, "保存阅读进度失败", e);
        }
    }

    /** 删除指定书籍阅读进度 */
    public void removeReadingProgress(String bookId) {
        if (bookId == null) {
            return;
        }
        try {
            JSONObject progress = getData().optJSONObject(KEY_PROGRESS);
            if (progress != null && progress.has(bookId)) {
                progress.remove(bookId);
                save();
                Log.i(TAG, "阅读进度已删除: " + bookId);
            }
        } catch (Exception e) {
            Log.e(TAG, "删除阅读进度失败", e);
        }
    }

    /** 清除全部阅读进度（保留设置） */
    public void clearAllReadingProgress() {
        try {
            getData().put(KEY_PROGRESS, new JSONObject());
            save();
            Log.i(TAG, "全部阅读进度已清除");
        } catch (JSONException e) {
            Log.e(TAG, "清除全部阅读进度失败", e);
        }
    }

    // ==================== 阅读设置 ====================

    private JSONObject getSettings() {
        JSONObject settings = getData().optJSONObject(KEY_SETTINGS);
        if (settings == null) {
            settings = new JSONObject();
            try {
                getData().put(KEY_SETTINGS, settings);
            } catch (JSONException e) {
                Log.e(TAG, "创建设置对象失败", e);
            }
        }
        return settings;
    }

    public float getFontSize() {
        return (float) getSettings().optDouble(KEY_FONT_SIZE, 28f);
    }

    public void saveFontSize(float fontSize) {
        try {
            getSettings().put(KEY_FONT_SIZE, fontSize);
            save();
            Log.i(TAG, "字体大小已保存: " + fontSize);
        } catch (JSONException e) {
            Log.e(TAG, "保存字体大小失败", e);
        }
    }

    public int getColorThemeIndex() {
        return getSettings().optInt(KEY_COLOR_THEME, 0);
    }

    public void saveColorThemeIndex(int themeIndex) {
        try {
            getSettings().put(KEY_COLOR_THEME, themeIndex);
            save();
            Log.i(TAG, "配色方案已保存: " + themeIndex);
        } catch (JSONException e) {
            Log.e(TAG, "保存配色方案失败", e);
        }
    }

    public int getScreenPercent() {
        return getSettings().optInt(KEY_SCREEN_PERCENT, 1);
    }

    public void saveScreenPercent(int percentIndex) {
        try {
            getSettings().put(KEY_SCREEN_PERCENT, percentIndex);
            save();
            Log.i(TAG, "屏幕占比已保存: " + percentIndex);
        } catch (JSONException e) {
            Log.e(TAG, "保存屏幕占比失败", e);
        }
    }

    public int getVideoPosition() {
        return getSettings().optInt(KEY_VIDEO_POSITION, 0);
    }

    public void saveVideoPosition(int positionIndex) {
        try {
            getSettings().put(KEY_VIDEO_POSITION, positionIndex);
            save();
            Log.i(TAG, "视频位置已保存: " + positionIndex);
        } catch (JSONException e) {
            Log.e(TAG, "保存视频位置失败", e);
        }
    }

    public int getFontSizeDefault() {
        return getSettings().optInt(KEY_FONT_SIZE_DEFAULT, 16);
    }

    public void saveFontSizeDefault(int fontSize) {
        try {
            getSettings().put(KEY_FONT_SIZE_DEFAULT, fontSize);
            save();
            Log.i(TAG, "默认字体大小已保存: " + fontSize);
        } catch (JSONException e) {
            Log.e(TAG, "保存默认字体大小失败", e);
        }
    }

    /** 清除全部数据（书架 + 进度 + 设置 + 文件） */
    public void clearAll() {
        try {
            getData().put(KEY_BOOKSHELF, new org.json.JSONArray());
            getData().put(KEY_PROGRESS, new JSONObject());
            getData().put(KEY_SETTINGS, new JSONObject());
            save();
            Log.i(TAG, "所有电子书数据已清除");
        } catch (JSONException e) {
            Log.e(TAG, "清除所有电子书数据失败", e);
        }
    }
}
