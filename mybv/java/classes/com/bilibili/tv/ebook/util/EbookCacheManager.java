package com.bilibili.tv.ebook.util;

import android.content.Context;
import android.util.Log;

import com.bilibili.tv.ebook.model.ReadingProgress;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

/**
 * 电子书缓存管理器
 * 管理阅读进度和书架数据
 *
 * 存储介质：外部公共目录 /sdcard/Download/ebook_data/bookshelf.json（可跨 APP 共享），
 * 外部不可写时由 EbookFileStore 自动降级回退 SharedPreferences。
 */
public class EbookCacheManager {
    private static final String TAG = "EbookCacheManager";

    private Context context;

    public EbookCacheManager(Context context) {
        this.context = context;
    }

    /**
     * 保存阅读进度
     */
    public void saveReadingProgress(ReadingProgress progress) {
        if (progress == null || progress.getBookId() == null) {
            return;
        }

        try {
            JSONObject json = new JSONObject();
            json.put("bookId", progress.getBookId());
            json.put("currentChapterIndex", progress.getCurrentChapterIndex());
            json.put("currentPage", progress.getCurrentPage());
            json.put("progressPercentage", progress.getProgressPercentage());
            json.put("lastReadTimestamp", progress.getLastReadTimestamp());
            json.put("fontSize", progress.getFontSize());

            // 获取现有数据
            Map<String, String> progressMap = getAllReadingProgress();
            progressMap.put(progress.getBookId(), json.toString());

            // 保存（EbookFileStore 内部处理 JSON 文件/SharedPreferences 存储）
            JSONObject allProgress = new JSONObject(progressMap);
            EbookFileStore.getInstance(context).saveReadingProgressJson(allProgress.toString());

            Log.i(TAG, "阅读进度保存成功: " + progress.getBookId());

        } catch (JSONException e) {
            Log.e(TAG, "保存阅读进度失败", e);
        }
    }

    /**
     * 获取阅读进度
     */
    public ReadingProgress getReadingProgress(String bookId) {
        if (bookId == null) {
            return null;
        }

        try {
            String progressStr = EbookFileStore.getInstance(context).getReadingProgressJson();
            JSONObject allProgress = new JSONObject(progressStr);

            if (allProgress.has(bookId)) {
                String jsonStr = allProgress.getString(bookId);
                JSONObject json = new JSONObject(jsonStr);

                ReadingProgress progress = new ReadingProgress();
                progress.setBookId(json.getString("bookId"));
                progress.setCurrentChapterIndex(json.getInt("currentChapterIndex"));
                progress.setCurrentPage(json.getInt("currentPage"));
                progress.setProgressPercentage((float) json.getDouble("progressPercentage"));
                progress.setLastReadTimestamp(json.getLong("lastReadTimestamp"));
                progress.setFontSize(json.getInt("fontSize"));

                return progress;
            }

        } catch (JSONException e) {
            Log.e(TAG, "获取阅读进度失败", e);
        }

        return null;
    }

    /**
     * 获取所有阅读进度
     */
    private Map<String, String> getAllReadingProgress() {
        Map<String, String> progressMap = new HashMap<>();

        try {
            String progressStr = EbookFileStore.getInstance(context).getReadingProgressJson();
            JSONObject allProgress = new JSONObject(progressStr);

            JSONArray keys = allProgress.names();
            if (keys != null) {
                for (int i = 0; i < keys.length(); i++) {
                    String key = keys.getString(i);
                    progressMap.put(key, allProgress.getString(key));
                }
            }

        } catch (JSONException e) {
            Log.e(TAG, "获取所有阅读进度失败", e);
        }

        return progressMap;
    }

    /**
     * 保存默认字体大小
     */
    public void saveDefaultFontSize(int fontSize) {
        EbookFileStore.getInstance(context).saveFontSizeDefault(fontSize);
        Log.i(TAG, "默认字体大小保存: " + fontSize);
    }

    /**
     * 获取默认字体大小
     */
    public int getDefaultFontSize() {
        return EbookFileStore.getInstance(context).getFontSizeDefault();
    }

    /**
     * 清除所有缓存
     */
    public void clearAll() {
        EbookFileStore.getInstance(context).clearAll();
        Log.i(TAG, "所有缓存已清除");
    }

    /**
     * 清除指定书籍的阅读进度
     */
    public void clearReadingProgress(String bookId) {
        if (bookId == null) {
            return;
        }
        EbookFileStore.getInstance(context).removeReadingProgress(bookId);
        Log.i(TAG, "阅读进度清除: " + bookId);
    }

    /**
     * 清除所有阅读进度（保留设置类缓存）
     */
    public void clearAllReadingProgress() {
        EbookFileStore.getInstance(context).clearAllReadingProgress();
        Log.i(TAG, "所有阅读进度已清除");
    }
}
