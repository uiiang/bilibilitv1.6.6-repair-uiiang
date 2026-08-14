package com.bilibili.tv.ebook.ui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

import com.bilibili.tv.R;
import com.bilibili.tv.ebook.model.Book;
import com.bilibili.tv.ebook.model.BookshelfItem;
import com.bilibili.tv.ebook.model.Chapter;
import com.bilibili.tv.ebook.model.ReadingProgress;
import com.bilibili.tv.ebook.model.ReaderTheme;
import com.bilibili.tv.ebook.parser.EbookParserFactory;
import com.bilibili.tv.ebook.util.BookshelfManager;
import com.bilibili.tv.ebook.util.EbookCacheManager;
import com.bilibili.tv.ebook.util.EbookFileStore;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Stack;

import bl.agb;

/**
 * 电子书阅读器面板（点播/直播共用）
 *
 * 从点播播放器控制器 bl.xw 中抽取封装的电子书核心逻辑：
 * 面板生命周期、书架/文件选择/章节列表 UI、WebView 阅读、
 * 视频等比缩小与位置调整、阅读进度保存、遥控器按键路由。
 *
 * 播放器差异通过 EbookHost 接口适配：
 * - 点播：bl.xw（IPlayerContext 视频视图 + PlayerMenuRight 菜单）
 * - 直播：LivePlayerActivity（LiveVideoPlayer + LivePlayerMenuRight 菜单）
 */
public class EbookReaderPanel {
    private static final String TAG_EBOOK = "EbookReader";

    private final EbookHost host;

    // 电子书阅读器相关
    private FrameLayout ebookPanel = null;
    private boolean isEbookPanelShown = false;
    private ViewGroup.LayoutParams originalVideoParams = null;
    private ViewGroup.LayoutParams originalDanmakuParams = null;
    private boolean isFileChooserShown = false; // 文件选择器是否显示
    private long lastBackPressTime = 0; // 记录上次按返回键的时间
    private static final long DOUBLE_PRESS_INTERVAL = 2000; // 双击时间间隔（2秒）
    private boolean isLoadingEbook = false; // 是否正在加载电子书
    private android.widget.ProgressBar loadingProgressBar = null; // 加载进度条
    private android.widget.TextView loadingTextView = null; // 加载文字提示
    private boolean isReadingBook = false; // 是否在阅读书籍（区分首页和阅读页面）

    // 电子书章节导航相关
    private Book currentBook = null; // 当前书籍
    private int currentChapterIndex = 0; // 当前章节索引
    private android.webkit.WebView ebookWebView = null; // 电子书WebView
    private android.widget.ListView chapterListView = null; // 章节列表View（使用ListView替代RecyclerView）
    private boolean isChapterListShown = false; // 章节列表是否显示
    private EbookCacheManager ebookCacheManager = null; // 电子书缓存管理器
    private BookshelfManager bookshelfManager = null; // 书架管理器
    private android.widget.ListView bookshelfListView = null; // 书架列表View
    private List<BookshelfItem> bookshelfItems = null; // 书架数据
    private String currentBookFilePath = null; // 当前书籍文件路径
    private android.widget.ListView fileListView = null; // 文件选择器列表View（提升为字段，用于恢复焦点）

    // 章节内容LRU缓存管理（避免内存占用随阅读进度增长）
    private static final int MAX_CACHED_CHAPTERS = 5; // 最多缓存5个章节
    private LinkedList<Chapter> cachedChapters = new LinkedList<>();

    // 静态Handler内部类，避免内存泄漏
    private static class SaveProgressHandler extends android.os.Handler {
        private WeakReference<EbookReaderPanel> panelRef;

        SaveProgressHandler(EbookReaderPanel panel) {
            panelRef = new WeakReference<>(panel);
        }

        @Override
        public void handleMessage(android.os.Message msg) {
            EbookReaderPanel panel = panelRef.get();
            if (panel != null) {
                panel.saveReadingProgress();
            }
        }
    }

    // 防抖保存阅读进度的Runnable
    private Runnable saveProgressRunnable = null;
    private SaveProgressHandler saveProgressHandler = null; // 使用静态Handler，避免内存泄漏
    private static final int SAVE_PROGRESS_DELAY_MS = 300; // 防抖延迟300毫秒

    // 后台线程管理（避免长时间持有Activity引用）
    private volatile boolean isParsingCancelled = false;
    private Thread parsingThread = null;

    // 连击三次确定键关闭电子书区域
    private int confirmKeyClickCount = 0; // 确定键点击次数
    private long lastConfirmKeyPressTime = 0; // 上次确定键点击时间
    private static final int TRIPLE_CLICK_INTERVAL = 800; // 三次连击时间间隔（800毫秒）

    // 书架页长按确定键打开电子书菜单的防重复标志
    private boolean confirmKeyLongPressHandled = false;

    // 菜单是否由本次按键（onKeyDown）刚打开；用于 onKeyUp 判断是否应消费 MENU 键
    private boolean menuOpenedByKeyDown = false;

    // 电子书屏幕占比与视频位置
    private static final int VIDEO_POSITION_TOP_LEFT = 0;     // 左上：视频左上角对齐，电子书在右侧
    private static final int VIDEO_POSITION_BOTTOM_LEFT = 1;  // 左下：视频左下角对齐，电子书在右侧
    private static final int VIDEO_POSITION_TOP_RIGHT = 2;    // 右上：视频右上角对齐，电子书在左侧
    private static final int VIDEO_POSITION_BOTTOM_RIGHT = 3; // 右下：视频右下角对齐，电子书在左侧
    private int ebookPanelPercent = 30; // 电子书面板宽度占比（默认30%）
    private int videoPosition = VIDEO_POSITION_TOP_LEFT; // 默认左上
    private List<String> videoPositionList = null; // 视频位置选项列表

    // 遥控器控制目标："video" 或 "ebook"
    private String controlTarget = "video";

    // 章节导航栈（多级目录支持）
    private Stack<List<Chapter>> chapterNavigationStack = null;
    private List<Chapter> currentChapterList = null;
    private String parentChapterTitle = null; // 父章节标题（用于显示在章节列表标题中）

    // 存储权限请求码
    private static final int REQUEST_CODE_STORAGE_PERMISSION = 1001;

    public EbookReaderPanel(EbookHost host) {
        this.host = host;
    }

    // ==================== 状态查询 ====================

    /** 是否电子书模式（面板显示中） */
    public boolean isEbookModeActive() {
        return isEbookPanelShown;
    }

    /** 当前遥控器控制目标 */
    public String getControlTarget() {
        return controlTarget;
    }

    /** 是否在阅读书籍 */
    public boolean isReadingBook() {
        return isReadingBook;
    }

    /** 是否显示文件选择器 */
    public boolean isFileChooserShown() {
        return isFileChooserShown;
    }

    /** 是否显示章节列表 */
    public boolean isChapterListShown() {
        return isChapterListShown;
    }

    /** 是否控制电子书（电子书面板显示且控制目标为电子书） */
    public boolean isControlEbook() {
        return isEbookPanelShown && controlTarget.equals("ebook");
    }

    /**
     * 检查是否在电子书阅读内容页面（不在章节列表或文件选择器）
     */
    public boolean isEbookReadingContent() {
        return (chapterListView == null || !chapterListView.isShown()) &&
               !isFileChooserShown &&
               ebookWebView != null;
    }

    // ==================== 打开/关闭电子书 ====================

    public void openEbookReader() {
        Log.i(TAG_EBOOK, "openEbookReader() called, isEbookPanelShown=" + isEbookPanelShown);

        if (isEbookPanelShown) {
            // 如果已显示,则关闭
            closeEbookPanel();
        } else {
            // 打开前重新从 JSON 文件加载（跨 APP 共享时检测外部 APP 更新的书架/进度，避免旧缓存覆盖）
            EbookFileStore.getInstance(host.getContext()).reloadFromFile();
            // 打开前自动申请存储权限（Android 10+ 写入公共 Download 目录需要，不中断打开流程）
            ensureStoragePermissionForEbook();
            // 关键修复：先关闭右侧菜单，确保电子书首页能够正确显示
            if (host.isMenuShown()) {
                Log.i(TAG_EBOOK, "右侧菜单正在显示，先关闭菜单");
                host.showMenu(false); // 关闭右侧菜单
                // 延迟200ms后显示电子书面板，确保菜单已完全关闭
                new android.os.Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        showEbookPanel();
                    }
                }, 200);
            } else {
                // 菜单未显示，直接打开电子书面板
                showEbookPanel();
            }
        }
    }

    /**
     * 打开电子书时自动申请存储权限（不中断打开流程）
     * - 所有版本：先申请 READ+WRITE_EXTERNAL_STORAGE（弹系统对话框）。
     *   targetSdk ≤ 29 + requestLegacyExternalStorage 的应用在 Android 11 上走 legacy 存储，
     *   仅需 WRITE 权限即可写公共 Download 目录（与 TvBox 在 TCL Android 11/12 实测一致）
     * - 申请后仍不可写（Android 12+ 强制分区存储）→ 提示需 MANAGE_EXTERNAL_STORAGE（所有文件访问）
     * - 权限拒绝不影响功能：EbookFileStore 自动降级 SharedPreferences，数据不丢失
     */
    private void ensureStoragePermissionForEbook() {
        try {
            Activity activity = host.getActivity();
            boolean writeGranted = activity != null
                    && activity.checkSelfPermission(android.Manifest.permission.WRITE_EXTERNAL_STORAGE)
                    == android.content.pm.PackageManager.PERMISSION_GRANTED;
            if (!writeGranted && activity != null && android.os.Build.VERSION.SDK_INT >= 23) {
                Log.i(TAG_EBOOK, "存储权限未授予，自动申请读写权限");
                activity.requestPermissions(
                        new String[]{
                                android.Manifest.permission.READ_EXTERNAL_STORAGE,
                                android.Manifest.permission.WRITE_EXTERNAL_STORAGE
                        },
                        REQUEST_CODE_STORAGE_PERMISSION
                );
                host.showToast("请允许存储权限，书架和阅读进度将保存到 Download 目录");
            }
            if (!EbookFileStore.isExternalWritable()) {
                // 仍不可写：Android 12+ 强制分区存储时需 MANAGE（所有文件访问）
                if (android.os.Build.VERSION.SDK_INT >= 30) {
                    Log.w(TAG_EBOOK, "未授予所有文件访问权限，书架/进度将保存在应用内部（无法跨APP共享）");
                    host.showToast("请授予“所有文件访问”权限（系统设置→应用→权限），书架和进度才能跨APP共享");
                }
            }
        } catch (Exception e) {
            Log.e(TAG_EBOOK, "申请存储权限异常", e);
        }
    }

    public void openEbookFileChooser() {
        Log.i(TAG_EBOOK, "openEbookFileChooser() called");

        Activity activity = host.getActivity();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null, cannot open file chooser");
            return;
        }

        // 关键修复：用户点击"选择文件"菜单项的意图是直接打开文件选择器
        // 先关闭右侧菜单，确保文件选择器能够正确显示
        if (host.isMenuShown()) {
            Log.i(TAG_EBOOK, "右侧菜单正在显示，先关闭菜单");
            host.showMenu(false); // 关闭右侧菜单
            // 延迟200ms后显示文件选择器，确保菜单已完全关闭
            new android.os.Handler().postDelayed(new Runnable() {
                @Override
                public void run() {
                    showFileChooserInPanel();
                }
            }, 200);
        } else {
            // 菜单未显示，直接显示文件选择器
            showFileChooserInPanel();
        }
    }

    /** 关闭当前书籍，回到电子书首页 */
    public void closeCurrentBook() {
        Log.i(TAG_EBOOK, "开始关闭当前书籍，回到电子书首页");

        // 立即保存当前阅读进度（取消防抖等待）
        saveReadingProgressImmediately();

        // 关键修复：销毁WebView，释放native内存（GL纹理/渲染进程），避免内存泄漏
        destroyEbookWebView();

        // 清空电子书面板
        if (ebookPanel != null) {
            ebookPanel.removeAllViews();
            Log.i(TAG_EBOOK, "电子书面板已清空");
        }

        // 重置书籍相关状态
        currentBook = null;
        currentChapterIndex = 0;
        chapterListView = null;
        isReadingBook = false; // 标记为首页状态
        currentBookFilePath = null; // 清除文件路径

        Log.i(TAG_EBOOK, "当前书籍已关闭，回到电子书首页");

        // 显示首页（书架列表）
        showBookshelfOrFileChooser();
    }

    /** 切换遥控器控制目标 */
    public void switchControlTarget(String target) {
        Log.i(TAG_EBOOK, "切换控制目标: " + target);

        if (!isEbookPanelShown) {
            Log.w(TAG_EBOOK, "电子书面板未显示，无法切换控制目标");
            return;
        }

        controlTarget = target;

        // 关键修复：鼠标操作按点击位置分发，不区分控制目标
        // 点击电子书区域→控制电子书（翻页/列表），点击视频区域→控制视频
        // 因此电子书区域组件保持enabled/clickable，仅禁用焦点
        // 遥控器按键仍按controlTarget分发，不被电子书区域抢焦点
        if (target.equals("video")) {
            // 切换到控制视频：仅禁用电子书区域的遥控器焦点
            if (bookshelfListView != null) {
                bookshelfListView.setFocusable(false);
                bookshelfListView.setFocusableInTouchMode(false);
                bookshelfListView.clearFocus();
                Log.i(TAG_EBOOK, "禁用书架列表所有交互");
            }
            if (chapterListView != null) {
                chapterListView.setFocusable(false);
                chapterListView.setFocusableInTouchMode(false);
                chapterListView.clearFocus();
                Log.i(TAG_EBOOK, "禁用章节列表所有交互");
            }
            if (ebookWebView != null) {
                // 关键修复：保持WebView enabled，确保控制视频时鼠标点击阅读页面仍能翻页
                ebookWebView.setFocusable(false);
                ebookWebView.setFocusableInTouchMode(false);
                Log.i(TAG_EBOOK, "WebView保持可用，仅禁用焦点");
            }
            if (ebookPanel != null) {
                ebookPanel.setFocusable(false);
                ebookPanel.setFocusableInTouchMode(false);
                Log.i(TAG_EBOOK, "禁用电子书面板所有交互");
            }
            host.requestVideoFocus();
        } else {
            // 切换到控制电子书：恢复电子书区域的所有交互
            if (ebookPanel != null) {
                ebookPanel.setFocusable(true);
                ebookPanel.setFocusableInTouchMode(true);
                ebookPanel.setClickable(true);
                ebookPanel.setEnabled(true);
                Log.i(TAG_EBOOK, "启用电子书面板所有交互");
            }
            if (bookshelfListView != null) {
                bookshelfListView.setFocusable(true);
                bookshelfListView.setFocusableInTouchMode(true);
                bookshelfListView.setClickable(true);
                bookshelfListView.setEnabled(true);
                bookshelfListView.requestFocus();
                Log.i(TAG_EBOOK, "启用书架列表所有交互");
            }
            if (chapterListView != null) {
                chapterListView.setFocusable(true);
                chapterListView.setFocusableInTouchMode(true);
                chapterListView.setClickable(true);
                chapterListView.setEnabled(true);
                chapterListView.requestFocus();
                Log.i(TAG_EBOOK, "启用章节列表所有交互");
            }
            if (ebookWebView != null) {
                // 关键修复：保持WebView不可聚焦，防止Android焦点系统拦截方向键
                ebookWebView.setFocusable(false);
                ebookWebView.setFocusableInTouchMode(false);
                ebookWebView.setEnabled(true);
                Log.i(TAG_EBOOK, "启用WebView所有交互");
            }
        }

        // 显示Toast提示
        if (target.equals("video")) {
            host.showToast("遥控器操作已切换到视频");
        } else {
            host.showToast("遥控器操作已切换到电子书");
        }

        Log.i(TAG_EBOOK, "控制目标已切换为: " + target);
    }

    /** 清空书架 */
    public void clearBookshelf() {
        Log.i(TAG_EBOOK, "清空书架菜单项被点击");

        Activity activity = host.getActivity();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null");
            return;
        }

        // 显示确认对话框
        agb.a dialogBuilder = new agb.a(activity);
        dialogBuilder.a(1).a("确认清空书架？")
            .a(activity.getString(R.string.confirm), new agb.b() {
                @Override
                public void a(agb dialog, View view) {
                    // 清空所有阅读进度记录（保留设置类缓存）
                    if (ebookCacheManager != null) {
                        ebookCacheManager.clearAllReadingProgress();
                        Log.i(TAG_EBOOK, "所有阅读进度已清除");
                    }

                    // 清空书架列表
                    if (bookshelfManager != null) {
                        bookshelfManager.clearBookshelf();
                        Log.i(TAG_EBOOK, "书架已清空");
                    }

                    // 清空书架数据
                    if (bookshelfItems != null) {
                        bookshelfItems.clear();
                    }

                    // 刷新书架显示
                    showBookshelfOrFileChooser();

                    // 显示提示
                    host.showToast("书架已清空");

                    dialog.dismiss();
                }
            })
            .b(activity.getString(R.string.cancel), new agb.b() {
                @Override
                public void a(agb dialog, View view) {
                    dialog.dismiss();
                }
            });
        dialogBuilder.a().show();
    }

    /** 显示章节列表 */
    public void showChapterList() {
        if (currentBook == null || currentBook.getChapters() == null) {
            Log.w(TAG_EBOOK, "无书籍数据，无法显示章节列表");
            host.showToast("无章节信息");
            return;
        }

        Log.i(TAG_EBOOK, "显示章节列表，总数: " + currentBook.getChapters().size());
        isChapterListShown = true;

        // 初始化章节导航栈（多级目录支持）
        chapterNavigationStack = new Stack<>();
        parentChapterTitle = null; // 一级目录，父章节标题为null

        // 显示一级目录（depth=0的章节）
        List<Chapter> rootChapters = getRootChapters();
        currentChapterList = rootChapters;

        // 添加延时，确保右侧菜单完全关闭后再显示章节列表
        new android.os.Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                createChapterListView(currentChapterList);
            }
        }, 200); // 延迟200毫秒
    }

    /** 设置电子书字体大小 */
    public void setEbookFontSize(float fontSize) {
        Log.i(TAG_EBOOK, "setEbookFontSize: fontSize=" + fontSize);

        // 保存字体大小（EbookFileStore：JSON 文件优先，SharedPreferences 兜底）
        EbookFileStore.getInstance(host.getContext()).saveFontSize(fontSize);
        Log.i(TAG_EBOOK, "字体大小已保存: " + fontSize);

        // 应用字体大小到WebView（如果正在阅读）
        if (ebookWebView != null && isReadingBook) {
            applyFontSizeToWebView(fontSize);
        }
    }

    /** 设置电子书配色方案 */
    public void setEbookColorTheme(int themeIndex) {
        Log.i(TAG_EBOOK, "setEbookColorTheme: themeIndex=" + themeIndex);

        // 保存配色方案（EbookFileStore：JSON 文件优先，SharedPreferences 兜底）
        EbookFileStore.getInstance(host.getContext()).saveColorThemeIndex(themeIndex);
        Log.i(TAG_EBOOK, "配色方案已保存: " + themeIndex);

        // 应用配色方案到WebView（如果正在阅读）
        if (ebookWebView != null && isReadingBook) {
            applyColorThemeToWebView(themeIndex);
        }
    }

    /** 设置电子书屏幕占比 */
    public void setEbookPercent(int percentIndex) {
        Log.i(TAG_EBOOK, "setEbookPercent: percentIndex=" + percentIndex);

        // 屏幕占比选项映射：0=25%, 1=30%, 2=35%, 3=40%, 4=45%, 5=50%
        int[] percentValues = {25, 30, 35, 40, 45, 50};
        if (percentIndex < 0 || percentIndex >= percentValues.length) {
            return;
        }

        int percent = percentValues[percentIndex];
        ebookPanelPercent = percent;

        // 保存屏幕占比（EbookFileStore：JSON 文件优先，SharedPreferences 兜底）
        EbookFileStore.getInstance(host.getContext()).saveScreenPercent(percentIndex);
        Log.i(TAG_EBOOK, "屏幕占比已保存: " + percent + "%");

        // 应用新的屏幕占比（如果电子书面板正在显示）
        if (isEbookPanelShown) {
            new android.os.Handler().post(new Runnable() {
                @Override
                public void run() {
                    applyEbookPanelPercent();
                }
            });
        }

        // 显示Toast提示
        host.showToast("电子书占比已调整为 " + percent + "%");
    }

    /** 设置视频位置 */
    public void setVideoPosition(int positionIndex) {
        Log.i(TAG_EBOOK, "setVideoPosition: positionIndex=" + positionIndex);

        if (positionIndex < 0 || positionIndex > 3) {
            return;
        }

        videoPosition = positionIndex;

        // 保存视频位置（EbookFileStore：JSON 文件优先，SharedPreferences 兜底）
        EbookFileStore.getInstance(host.getContext()).saveVideoPosition(positionIndex);
        String positionName = (videoPositionList != null && positionIndex >= 0 && positionIndex < videoPositionList.size())
                             ? videoPositionList.get(positionIndex) : "左上";
        Log.i(TAG_EBOOK, "视频位置已保存: " + positionName);

        // 应用新的视频位置（如果电子书面板正在显示）
        if (isEbookPanelShown) {
            new android.os.Handler().post(new Runnable() {
                @Override
                public void run() {
                    applyVideoPosition();
                }
            });
        }

        // 显示Toast提示
        String toastPositionName = (videoPositionList != null && positionIndex >= 0 && positionIndex < videoPositionList.size())
                             ? videoPositionList.get(positionIndex) : "左上";
        host.showToast("视频位置已调整为 " + toastPositionName);
    }

    // ==================== 遥控器按键路由 ====================

    private boolean isConfirmKey(int keyCode) {
        return keyCode == KeyEvent.KEYCODE_DPAD_CENTER
                || keyCode == KeyEvent.KEYCODE_ENTER
                || keyCode == KeyEvent.KEYCODE_NUMPAD_ENTER;
    }

    /**
     * 按键路由（keyUp，对应点播 xw.f()）
     * @return true = 按键已消费
     */
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        Log.i(TAG_EBOOK, "onKeyUp: 收到按键 " + keyCode + ", isEbookPanelShown=" + isEbookPanelShown
                + ", controlTarget=" + controlTarget + ", menuShown=" + host.isMenuShown());

        // 连击三次确定键关闭电子书区域（不论焦点在视频还是电子书区域）
        if (isEbookPanelShown && isConfirmKey(keyCode)) {
            long currentTime = System.currentTimeMillis();
            long timeSinceLastPress = currentTime - lastConfirmKeyPressTime;

            Log.i(TAG_EBOOK, "确定键点击: count=" + confirmKeyClickCount + ", timeSinceLastPress=" + timeSinceLastPress + "ms");

            // 如果距离上次点击超过时间间隔，重置计数
            if (timeSinceLastPress > TRIPLE_CLICK_INTERVAL) {
                confirmKeyClickCount = 0;
            }

            confirmKeyClickCount++;
            lastConfirmKeyPressTime = currentTime;

            // 如果连击三次，隐藏电子书区域（不清空书籍数据）
            if (confirmKeyClickCount >= 3) {
                Log.i(TAG_EBOOK, "连击三次确定键，隐藏电子书区域（不清空书籍数据）");
                confirmKeyClickCount = 0; // 重置计数
                hideEbookPanel(); // 只隐藏，不清空书籍数据
                return true;
            }

            // 如果是第一次或第二次点击，等待可能的三连击
            return host.isMenuShown();
        }

        // 关键修复：只在控制电子书时才处理按键
        if (!controlTarget.equals("ebook")) {
            Log.i(TAG_EBOOK, "onKeyUp: 控制目标不是电子书，不处理按键");
            return host.isMenuShown();
        }

        // 电子书阅读内容页面：处理方向键
        if (isEbookReadingContent()) {
            Log.i(TAG_EBOOK, "onKeyUp: 在电子书阅读内容页面");

            // 关键调试：输出WebView状态
            if (ebookWebView != null) {
                Log.i(TAG_EBOOK, "onKeyUp: WebView height=" + ebookWebView.getHeight()
                      + ", scrollY=" + ebookWebView.getScrollY()
                      + ", contentHeight=" + ebookWebView.getContentHeight());
            }

            // 上下键：按距离滚动
            if (keyCode == KeyEvent.KEYCODE_DPAD_UP) {
                Log.i(TAG_EBOOK, "onKeyUp: 电子书阅读页面：向上滚动");
                ebookWebView.scrollBy(0, -200);
                scheduleSaveReadingProgress(); // 防抖保存进度
                return true;
            }

            if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                Log.i(TAG_EBOOK, "onKeyUp: 电子书阅读页面：向下滚动");
                ebookWebView.scrollBy(0, 200);
                scheduleSaveReadingProgress(); // 防抖保存进度
                return true;
            }

            // 左右键：整页翻页（重叠式翻页，保留一部分内容避免错过上下文）
            if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT) {
                Log.i(TAG_EBOOK, "onKeyUp: 电子书阅读页面：向上翻页（左键）");
                handlePageTurn(true); // true = 向前翻页
                return true;
            }

            if (keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                Log.i(TAG_EBOOK, "onKeyUp: 电子书阅读页面：向下翻页（右键）");
                handlePageTurn(false); // false = 向后翻页
                return true;
            }
        }

        // 长按确认键处理：只在电子书书架页面响应（用于打开电子书菜单删除书籍）
        boolean isBookshelfPage = isEbookPanelShown && controlTarget.equals("ebook") &&
                                   (ebookWebView == null || !ebookWebView.isShown()) &&
                                   bookshelfListView != null && bookshelfListView.isShown();

        if (isConfirmKey(keyCode) && !confirmKeyLongPressHandled) {
            // 只有在书架页面才响应长按确认键
            if (isBookshelfPage) {
                confirmKeyLongPressHandled = true;
                host.showMenu(true); // 打开电子书菜单（清空书架等入口）
            }
        }
        return host.isMenuShown();
    }

    /**
     * 按键路由（keyDown，对应点播 xw.g()）
     * @return true = 按键已消费
     */
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        Log.i(TAG_EBOOK, "onKeyDown: 收到按键 " + keyCode + ", isEbookPanelShown=" + isEbookPanelShown
                + ", controlTarget=" + controlTarget + ", menuShown=" + host.isMenuShown());

        // 电子书模式：只在控制电子书时拦截按键（除了菜单键、返回键、确认键）
        if (isEbookPanelShown && controlTarget.equals("ebook") && !host.isMenuShown()) {
            Log.i(TAG_EBOOK, "onKeyDown: 电子书模式拦截按键: " + keyCode);

            // 关键修复：章节列表显示时，确认键和方向键不拦截（让ListView处理）
            if (chapterListView != null && chapterListView.isShown()) {
                Log.i(TAG_EBOOK, "onKeyDown: 章节列表显示中");
                if (isConfirmKey(keyCode) ||
                    keyCode == KeyEvent.KEYCODE_DPAD_UP ||
                    keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                    Log.i(TAG_EBOOK, "onKeyDown: 章节列表显示，不拦截方向键和确认键");
                    return false; // 不拦截，让ListView处理
                }
            }

            // 关键修复：书架列表显示时，确认键和方向键不拦截（让ListView处理打开书籍）
            if (bookshelfListView != null && bookshelfListView.isShown()) {
                if (isConfirmKey(keyCode) ||
                    keyCode == KeyEvent.KEYCODE_DPAD_UP ||
                    keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                    Log.i(TAG_EBOOK, "onKeyDown: 书架列表显示，不拦截方向键和确认键");
                    return false; // 不拦截，让ListView处理
                }
            }

            // 关键修复：文件选择器显示时，确认键和方向键不拦截（让ListView处理）
            if (isFileChooserShown) {
                if (isConfirmKey(keyCode) ||
                    keyCode == KeyEvent.KEYCODE_DPAD_UP ||
                    keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                    Log.i(TAG_EBOOK, "onKeyDown: 文件选择器显示，不拦截方向键和确认键");
                    return false; // 不拦截，让ListView处理
                }
            }

            // 关键功能：电子书阅读内容页面的翻页功能
            // 只在阅读内容页面生效（不在章节列表、文件选择器）
            boolean isReadingContent = (chapterListView == null || !chapterListView.isShown()) &&
                                       !isFileChooserShown &&
                                       ebookWebView != null;

            Log.i(TAG_EBOOK, "onKeyDown: isReadingContent=" + isReadingContent
                  + ", isFileChooserShown=" + isFileChooserShown
                  + ", ebookWebView=" + (ebookWebView != null ? "not null" : "null"));

            if (isReadingContent) {
                Log.i(TAG_EBOOK, "onKeyDown: 在阅读内容页面");

                // 关键修复：方向键的导航逻辑已经在onKeyUp()中处理
                // 在onKeyDown()中对方向键直接返回true，避免重复处理
                if (keyCode == KeyEvent.KEYCODE_DPAD_UP ||
                    keyCode == KeyEvent.KEYCODE_DPAD_DOWN ||
                    keyCode == KeyEvent.KEYCODE_DPAD_LEFT ||
                    keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                    Log.i(TAG_EBOOK, "onKeyDown: 方向键已由onKeyUp()处理，直接返回true");
                    return true;
                }
            }

            // 菜单键：打开右侧菜单
            if (keyCode == KeyEvent.KEYCODE_MENU) {
                // 关键修复：在章节列表和文件选择列表中，不响应菜单键
                if (isChapterListShown) {
                    Log.i(TAG_EBOOK, "章节列表显示中，不响应菜单键");
                    return true;
                }

                if (isFileChooserShown) {
                    Log.i(TAG_EBOOK, "文件选择列表显示中，不响应菜单键");
                    return true;
                }

                Log.i(TAG_EBOOK, "电子书模式下打开右侧菜单");
                menuOpenedByKeyDown = true; // 标记菜单由本次按键打开，onKeyUp 消费 MENU 键
                host.showMenu(true);
                return true;
            }

            // 返回键：优先关闭章节列表，再关闭文件选择器
            if (keyCode == KeyEvent.KEYCODE_BACK) {
                if (isChapterListShown) {
                    // 多级章节导航：检查导航栈是否为空
                    if (chapterNavigationStack != null && !chapterNavigationStack.isEmpty()) {
                        // 导航栈不为空：返回上一级章节列表
                        Log.i(TAG_EBOOK, "返回上一级章节列表，栈大小: " + chapterNavigationStack.size());
                        currentChapterList = chapterNavigationStack.pop();

                        // 恢复父章节标题
                        if (chapterNavigationStack.isEmpty()) {
                            // 返回一级目录，父章节标题为null
                            parentChapterTitle = null;
                        } else {
                            // 返回二级或更深层目录，需要从上一级找到父章节
                            List<Chapter> parentChapterList = chapterNavigationStack.peek();
                            if (parentChapterList != null && currentChapterList.size() > 0) {
                                // 找到包含当前章节列表的父章节
                                int firstChapterIndex = currentChapterList.get(0).getChapterIndex();
                                for (Chapter parent : parentChapterList) {
                                    if (parent.getChapterIndex() < firstChapterIndex) {
                                        // 检查parent是否包含当前章节
                                        List<Chapter> children = getChildChapters(parent);
                                        if (children.size() > 0 && children.get(0).getChapterIndex() == firstChapterIndex) {
                                            parentChapterTitle = parent.getTitle();
                                            break;
                                        }
                                    }
                                }
                            }
                        }

                        createChapterListView(currentChapterList);
                    } else {
                        // 导航栈为空：关闭章节列表
                        Log.i(TAG_EBOOK, "关闭章节列表");
                        hideChapterList();
                    }
                    return true;
                } else if (isFileChooserShown) {
                    // 关闭文件选择器
                    Log.i(TAG_EBOOK, "关闭文件选择器，回到电子书默认界面");
                    hideFileChooser();
                    return true;
                } else if (isReadingBook) {
                    // 在阅读页面：双击返回首页
                    long currentTime = System.currentTimeMillis();
                    if (currentTime - lastBackPressTime < DOUBLE_PRESS_INTERVAL) {
                        // 第二次按返回键（在时间间隔内），关闭书籍，回到首页
                        Log.i(TAG_EBOOK, "阅读页面双击返回，关闭当前书籍，回到电子书首页");
                        lastBackPressTime = 0; // 重置时间戳
                        closeCurrentBook(); // 关闭当前书籍
                        return true;
                    } else {
                        // 第一次按返回键，或超过时间间隔，显示提示
                        lastBackPressTime = currentTime;
                        Log.i(TAG_EBOOK, "阅读页面第一次按返回键，显示提示");
                        host.showToast("再按一次关闭当前书籍");
                        return true;
                    }
                } else {
                    // 在首页：双击退出电子书模式
                    long currentTime = System.currentTimeMillis();
                    if (currentTime - lastBackPressTime < DOUBLE_PRESS_INTERVAL) {
                        // 第二次按返回键（在时间间隔内），退出电子书模式
                        Log.i(TAG_EBOOK, "首页双击返回，退出电子书模式");
                        lastBackPressTime = 0; // 重置时间戳
                        openEbookReader(); // 切换电子书模式（关闭）
                        return true;
                    } else {
                        // 第一次按返回键，或超过时间间隔，显示提示
                        lastBackPressTime = currentTime;
                        Log.i(TAG_EBOOK, "首页第一次按返回键，显示提示");
                        host.showToast("再按一次退出电子书模式");
                        return true;
                    }
                }
            }

            // 其他按键：全部拦截，不让它们传递到播放页面
            return true;
        }

        // 正常模式：原有逻辑
        switch (keyCode) {
            case KeyEvent.KEYCODE_BACK:
                if (host.isMenuShown()) {
                    host.showMenu(false);
                    return true;
                }
                return false;
            case KeyEvent.KEYCODE_MENU:
                host.showMenu(!host.isMenuShown());
                return true;
            case KeyEvent.KEYCODE_DPAD_UP:
            case KeyEvent.KEYCODE_DPAD_DOWN:
                return host.isMenuShown();
            default:
                if (confirmKeyLongPressHandled) {
                    host.showMenu(true);
                }
                confirmKeyLongPressHandled = false;
                return host.isMenuShown();
        }
    }

    /**
     * 消费"菜单由本次按键刚打开"的标记。
     * @return true = 菜单是本按键在 onKeyDown 中刚打开的，onKeyUp 应消费 MENU 键保持菜单打开
     */
    public boolean consumeMenuOpenedByKeyDown() {
        boolean opened = menuOpenedByKeyDown;
        menuOpenedByKeyDown = false;
        return opened;
    }

    // ==================== 菜单关闭/生命周期/事件回调 ====================

    /** 菜单关闭回调：恢复焦点到电子书区域 */
    public void onMenuClosed() {
        // 关键修复：菜单关闭后恢复焦点到电子书区域
        if (isEbookPanelShown && ebookPanel != null && controlTarget.equals("ebook")) {
            Log.i(TAG_EBOOK, "onMenuClosed: 恢复焦点到电子书区域");

            // 根据当前显示的内容恢复焦点
            if (isReadingBook && ebookWebView != null) {
                // 关键修复：阅读页面不恢复焦点到WebView
                // WebView保持不可聚焦，避免Android焦点系统拦截方向键
                Log.i(TAG_EBOOK, "onMenuClosed: 阅读页面，WebView保持不可聚焦，不恢复焦点");
            } else if (bookshelfListView != null && bookshelfListView.isShown()) {
                // 书架页面：恢复焦点到书架列表
                bookshelfListView.post(new Runnable() {
                    @Override
                    public void run() {
                        bookshelfListView.requestFocus();
                        Log.i(TAG_EBOOK, "onMenuClosed: 焦点已恢复到书架列表");
                    }
                });
            }
        }
    }

    /** 生命周期销毁：回收电子书资源 */
    public void onDestroy() {
        Log.i(TAG_EBOOK, "onDestroy: 回收电子书资源");

        // 取消解析任务，避免后台线程持有Activity引用
        cancelParsingTask();

        // 销毁WebView，释放native内存
        destroyEbookWebView();

        // 清空章节缓存
        clearChapterCache();

        // 从父容器中移除电子书面板
        if (ebookPanel != null) {
            ViewGroup panelParent = (ViewGroup) ebookPanel.getParent();
            if (panelParent != null) {
                panelParent.removeView(ebookPanel);
            }
            ebookPanel = null;
        }

        // 移除所有Handler回调
        if (saveProgressHandler != null) {
            saveProgressHandler.removeCallbacksAndMessages(null);
            saveProgressHandler = null;
        }
        saveProgressRunnable = null;

        // 显式移除监听器
        if (chapterListView != null) {
            chapterListView.setOnItemSelectedListener(null);
            chapterListView.setOnItemClickListener(null);
            chapterListView = null;
        }
        if (bookshelfListView != null) {
            bookshelfListView.setOnItemSelectedListener(null);
            bookshelfListView.setOnItemClickListener(null);
            bookshelfListView = null;
        }

        // 清除所有电子书状态
        isEbookPanelShown = false;
        isChapterListShown = false;
        isFileChooserShown = false;
        isLoadingEbook = false;
        isReadingBook = false;
        currentBook = null;
        currentChapterIndex = 0;
        currentBookFilePath = null;
        loadingProgressBar = null;
        loadingTextView = null;
        controlTarget = "video";

        // 释放管理器持有的Activity强引用，避免Activity无法回收
        bookshelfManager = null;
        ebookCacheManager = null;
        bookshelfItems = null;

        // 通知宿主回收电子书资源（点播：xw.h() 链销毁；直播：LivePlayerActivity.onDestroy）
        if (host != null) {
            host.onEbookDestroy();
        }

        Log.i(TAG_EBOOK, "onDestroy: 电子书资源已回收完成");
    }

    /** 视频切换事件：保持电子书缩小状态 */
    public void onVideoSwitch() {
        // 检查电子书区域是否打开
        if (isEbookPanelShown) {
            Log.i(TAG_EBOOK, "onVideoSwitch: 电子书区域已打开，重新应用视频缩小");
            final Activity activity = host.getActivity();
            if (activity != null) {
                // 延迟重新应用缩小布局，确保视频视图已更新
                new android.os.Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        android.util.DisplayMetrics metrics = new android.util.DisplayMetrics();
                        activity.getWindowManager().getDefaultDisplay().getMetrics(metrics);
                        int screenWidth = metrics.widthPixels;
                        int screenHeight = metrics.heightPixels;

                        shrinkVideoView(activity, screenWidth, screenHeight);
                        shrinkDanmakuView(activity, screenWidth, screenHeight);
                    }
                }, 200); // 延迟200毫秒
            }
        }
    }

    // ==================== 书架 ====================

    /**
     * 显示书架列表，如果书架为空则显示文件选择器
     */
    private void showBookshelfOrFileChooser() {
        // 每次显示书架都强制重新读取 json 文件。
        // 书架/进度文件可被其它应用（如 bilitv）共享写入，单例缓存不会感知外部更新，
        // 只有重新读取才能保证书架显示最新数据
        EbookFileStore.getInstance(host.getContext()).reloadFromFile();

        if (bookshelfManager == null) {
            bookshelfManager = new BookshelfManager(host.getActivity());
        }

        bookshelfItems = bookshelfManager.getBookshelfItems();

        // 始终显示书架列表（即使书架为空）
        Log.i(TAG_EBOOK, "显示书架列表，共 " + bookshelfItems.size() + " 本书");
        showBookshelfInPanel();
    }

    /**
     * 在电子书面板中显示书架列表
     */
    private void showBookshelfInPanel() {
        final Activity activity = host.getActivity();
        if (activity == null || ebookPanel == null) {
            Log.e(TAG_EBOOK, "Activity or ebookPanel is null");
            return;
        }

        Log.i(TAG_EBOOK, "在电子书面板中显示书架列表");

        // 关键修复：确保电子书面板可见
        if (ebookPanel.getVisibility() != View.VISIBLE) {
            Log.i(TAG_EBOOK, "电子书面板未显示，设置为VISIBLE");
            ebookPanel.setVisibility(View.VISIBLE);
        }

        // 清空面板
        ebookPanel.removeAllViews();

        // 创建标题
        android.widget.TextView titleView = new android.widget.TextView(activity);
        titleView.setText("我的书架");
        titleView.setTextColor(Color.WHITE);
        titleView.setTextSize(20);
        titleView.setPadding(24, 20, 24, 20);
        titleView.setGravity(android.view.Gravity.CENTER);
        ebookPanel.addView(titleView, new FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT,
            FrameLayout.LayoutParams.WRAP_CONTENT
        ));

        // 创建书架列表
        bookshelfListView = new android.widget.ListView(activity);
        bookshelfListView.setDivider(null);
        bookshelfListView.setDividerHeight(0);

        // 创建适配器（使用自定义布局）
        android.widget.ArrayAdapter<BookshelfItem> adapter =
            new android.widget.ArrayAdapter<BookshelfItem>(
                activity,
                android.R.layout.simple_list_item_1,
                android.R.id.text1,
                bookshelfItems
            ) {
                @Override
                public View getView(int position, View convertView, ViewGroup parent) {
                    View view = super.getView(position, convertView, parent);
                    BookshelfItem item = bookshelfItems.get(position);

                    if (view instanceof android.widget.TextView) {
                        android.widget.TextView textView = (android.widget.TextView) view;
                        // 两行显示：书名 + 进度信息
                        StringBuilder sb = new StringBuilder();
                        sb.append(item.getTitle());
                        if (item.getAuthor() != null && !item.getAuthor().isEmpty()) {
                            sb.append("  ·  ").append(item.getAuthor());
                        }
                        sb.append("\n");
                        if (item.getProgressPercentage() > 0) {
                            sb.append("已读 ").append(String.format("%.1f", item.getProgressPercentage())).append("%");
                        } else {
                            sb.append("未读");
                        }
                        if (item.getChapterTitle() != null && !item.getChapterTitle().isEmpty()) {
                            sb.append("  ·  ").append(item.getChapterTitle());
                        }
                        textView.setText(sb.toString());
                        textView.setTextColor(Color.WHITE);
                        textView.setTextSize(16);
                        textView.setPadding(20, 20, 20, 20);
                    }

                    // 设置选中状态的背景色
                    if (parent instanceof android.widget.ListView) {
                        android.widget.ListView listView = (android.widget.ListView) parent;
                        if (position == listView.getSelectedItemPosition()) {
                            view.setBackgroundColor(Color.parseColor("#1E90FF")); // 蓝色背景（选中）
                        } else {
                            view.setBackgroundColor(Color.TRANSPARENT); // 透明背景（未选中）
                        }
                    }

                    return view;
                }
            };

        // 设置选中项监听器，动态更新背景色
        bookshelfListView.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(android.widget.AdapterView<?> parent, View view, int position, long id) {
                // 重新绘制列表以更新背景色
                parent.post(new Runnable() {
                    @Override
                    public void run() {
                        ((android.widget.ListView) parent).invalidateViews();
                    }
                });
            }

            @Override
            public void onNothingSelected(android.widget.AdapterView<?> parent) {
            }
        });

        bookshelfListView.setAdapter(adapter);

        // 自动请求焦点，确保遥控器可以直接操作
        bookshelfListView.post(new Runnable() {
            @Override
            public void run() {
                bookshelfListView.requestFocus();
                Log.i(TAG_EBOOK, "书架列表已请求焦点");
            }
        });

        // 设置点击事件：打开书籍
        bookshelfListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                BookshelfItem item = bookshelfItems.get(position);
                Log.i(TAG_EBOOK, "点击书架书籍: " + item.getTitle() + ", bookId=" + item.getBookId());

                if (item.getFilePath() == null || item.getFilePath().isEmpty()) {
                    Log.e(TAG_EBOOK, "书籍文件路径为空，无法打开");
                    host.showToast("书籍文件路径无效，请重新选择文件");
                    return;
                }

                // 检查文件是否存在
                java.io.File bookFile = new java.io.File(item.getFilePath());
                if (!bookFile.exists()) {
                    Log.e(TAG_EBOOK, "书籍文件不存在: " + item.getFilePath());
                    host.showToast("书籍文件不存在，请重新选择文件");
                    return;
                }

                // 防止重复点击
                if (isLoadingEbook) {
                    Log.w(TAG_EBOOK, "正在加载电子书，请稍候...");
                    host.showToast("正在加载，请稍候...");
                    return;
                }

                // 显示加载提示
                showLoadingIndicator();

                // 解析并显示电子书
                parseAndDisplayEbook(item.getFilePath());
            }
        });

        // 添加书架列表到面板
        FrameLayout.LayoutParams listParams = new FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT,
            FrameLayout.LayoutParams.MATCH_PARENT
        );
        listParams.topMargin = 70; // 给"我的书架"标题留出空间（与点播 xw.java 保持一致）
        bookshelfListView.setLayoutParams(listParams);
        ebookPanel.addView(bookshelfListView);

        Log.i(TAG_EBOOK, "书架列表已添加到电子书面板");
    }

    // ==================== 文件选择器 ====================

    private void showFileChooserInPanel() {
        final Activity activity = host.getActivity();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null");
            return;
        }

        if (ebookPanel == null) {
            Log.e(TAG_EBOOK, "ebookPanel is null");
            return;
        }

        Log.i(TAG_EBOOK, "在电子书面板中显示文件选择器");
        Log.i(TAG_EBOOK, "ebookPanel可见性: " + (ebookPanel.isShown() ? "已显示" : "未显示"));
        Log.i(TAG_EBOOK, "ebookPanel子视图数: " + ebookPanel.getChildCount());

        // 检查存储权限（Android 6.0+）
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            if (android.os.Build.VERSION.SDK_INT >= 30) {
                // Android 11+：外部公共目录需 MANAGE_EXTERNAL_STORAGE（所有文件访问，反射判断）
                if (!EbookFileStore.hasManageExternalStoragePermission()) {
                    Log.w(TAG_EBOOK, "未授予所有文件访问权限，电子书数据将保存在应用内部（无法跨APP共享）");
                }
            } else if (activity.checkSelfPermission(android.Manifest.permission.READ_EXTERNAL_STORAGE)
                    != android.content.pm.PackageManager.PERMISSION_GRANTED) {
                Log.w(TAG_EBOOK, "没有存储权限，请求权限");
                activity.requestPermissions(
                        new String[]{
                                android.Manifest.permission.READ_EXTERNAL_STORAGE,
                                android.Manifest.permission.WRITE_EXTERNAL_STORAGE
                        },
                        REQUEST_CODE_STORAGE_PERMISSION
                );
                host.showToast("请授予存储权限后再试");
                return;
            }
        }

        // 确保电子书面板可见
        if (ebookPanel.getVisibility() != View.VISIBLE) {
            Log.w(TAG_EBOOK, "电子书面板未显示，设置为VISIBLE");
            ebookPanel.setVisibility(View.VISIBLE);
        }

        // 清空电子书面板
        Log.i(TAG_EBOOK, "清空电子书面板中的内容");
        ebookPanel.removeAllViews();

        // 创建文件选择器布局
        android.widget.LinearLayout layout = new android.widget.LinearLayout(activity);
        layout.setOrientation(android.widget.LinearLayout.VERTICAL);
        layout.setBackgroundColor(Color.parseColor("#333333"));
        layout.setLayoutParams(new FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT,
            FrameLayout.LayoutParams.MATCH_PARENT
        ));

        // 标题
        android.widget.TextView titleView = new android.widget.TextView(activity);
        titleView.setText("选择电子书文件");
        titleView.setTextColor(Color.WHITE);
        titleView.setTextSize(18);
        titleView.setPadding(20, 20, 20, 20);
        titleView.setGravity(android.view.Gravity.CENTER);
        layout.addView(titleView);

        // 路径显示
        final android.widget.TextView pathView = new android.widget.TextView(activity);
        pathView.setTextColor(Color.LTGRAY);
        pathView.setTextSize(14);
        pathView.setPadding(20, 10, 20, 10);
        layout.addView(pathView);

        // 文件列表
        fileListView = new android.widget.ListView(activity);
        android.widget.LinearLayout.LayoutParams listParams = new android.widget.LinearLayout.LayoutParams(
            android.widget.LinearLayout.LayoutParams.MATCH_PARENT,
            android.widget.LinearLayout.LayoutParams.MATCH_PARENT
        );
        fileListView.setLayoutParams(listParams);
        fileListView.setDivider(new android.graphics.drawable.ColorDrawable(Color.DKGRAY));
        fileListView.setDividerHeight(1);
        fileListView.setFocusable(true); // 确保可以获取焦点
        fileListView.setFocusableInTouchMode(true); // 确保在触摸模式下也可以获取焦点
        fileListView.setDescendantFocusability(ViewGroup.FOCUS_BEFORE_DESCENDANTS); // 优先获取焦点
        layout.addView(fileListView);

        Log.i(TAG_EBOOK, "文件选择器布局创建完成，准备添加到电子书面板");
        ebookPanel.addView(layout);
        Log.i(TAG_EBOOK, "文件选择器布局已添加到电子书面板，当前子视图数: " + ebookPanel.getChildCount());

        // 标记文件选择器已显示
        isFileChooserShown = true;
        Log.i(TAG_EBOOK, "文件选择器已显示");

        // 默认路径：/sdcard/Download
        java.io.File defaultDir = new java.io.File(android.os.Environment.getExternalStorageDirectory(), "Download");
        if (!defaultDir.exists()) {
            defaultDir = android.os.Environment.getExternalStorageDirectory();
        }

        // 加载文件列表
        loadFileList(fileListView, pathView, defaultDir);
    }

    /**
     * 隐藏文件选择器，回到电子书默认界面
     */
    private void hideFileChooser() {
        Activity activity = host.getActivity();
        if (activity == null || ebookPanel == null) {
            Log.w(TAG_EBOOK, "无法隐藏文件选择器：activity或panel为null");
            return;
        }

        Log.i(TAG_EBOOK, "开始隐藏文件选择器");

        // 清空电子书面板中的内容
        ebookPanel.removeAllViews();
        isFileChooserShown = false;

        Log.i(TAG_EBOOK, "文件选择器已隐藏，回到电子书首页");

        // 关键修复：显示书架列表（电子书首页）
        showBookshelfOrFileChooser();
    }

    /**
     * 加载文件列表
     */
    private void loadFileList(final android.widget.ListView listView, final android.widget.TextView pathView, final java.io.File currentDir) {
        final Activity activity = host.getActivity();
        if (activity == null) return;

        Log.i(TAG_EBOOK, "加载目录: " + currentDir.getAbsolutePath());

        // 更新路径显示
        pathView.setText(currentDir.getAbsolutePath());

        // 获取文件列表
        java.io.File[] files = currentDir.listFiles();
        if (files == null) {
            Log.e(TAG_EBOOK, "listFiles()返回null，可能没有权限或目录不存在");
            host.showToast("无法访问目录");
            return;
        }

        Log.i(TAG_EBOOK, "找到 " + files.length + " 个文件/文件夹");

        // 过滤并排序
        List<java.io.File> fileList = new ArrayList<>();
        List<java.io.File> folderList = new ArrayList<>();

        for (java.io.File file : files) {
            if (file.isDirectory()) {
                folderList.add(file);
                Log.d(TAG_EBOOK, "文件夹: " + file.getName());
            } else if (isEbookFile(file)) {
                fileList.add(file);
                Log.d(TAG_EBOOK, "电子书文件: " + file.getName());
            }
        }

        Log.i(TAG_EBOOK, "过滤后: " + folderList.size() + " 个文件夹, " + fileList.size() + " 个电子书文件");

        // 文件夹优先，按名称排序
        java.util.Collections.sort(folderList, new java.util.Comparator<java.io.File>() {
            @Override
            public int compare(java.io.File a, java.io.File b) {
                return a.getName().compareToIgnoreCase(b.getName());
            }
        });
        java.util.Collections.sort(fileList, new java.util.Comparator<java.io.File>() {
            @Override
            public int compare(java.io.File a, java.io.File b) {
                return a.getName().compareToIgnoreCase(b.getName());
            }
        });

        // 创建适配器
        List<String> items = new ArrayList<>();
        final List<java.io.File> allFiles = new ArrayList<>();

        // 添加上级目录
        if (currentDir.getParent() != null) {
            items.add("↑ 上级");
            allFiles.add(null); // 占位符
        }

        // 添加文件夹
        for (java.io.File folder : folderList) {
            items.add("📁 " + folder.getName());
            allFiles.add(folder);
        }

        // 添加文件
        for (java.io.File file : fileList) {
            items.add("📖 " + file.getName());
            allFiles.add(file);
        }

        Log.i(TAG_EBOOK, "共 " + items.size() + " 个项目显示在列表中");

        // 设置适配器（使用自定义布局确保文本可见）
        android.widget.ArrayAdapter<String> adapter = new android.widget.ArrayAdapter<String>(
            activity,
            android.R.layout.simple_list_item_1,
            items
        ) {
            @Override
            public View getView(int position, View convertView, ViewGroup parent) {
                View view = super.getView(position, convertView, parent);
                if (view instanceof android.widget.TextView) {
                    android.widget.TextView textView = (android.widget.TextView) view;
                    textView.setTextColor(Color.WHITE); // 设置白色文本
                    textView.setTextSize(16); // 设置合适的字体大小
                    textView.setPadding(16, 16, 16, 16);
                }

                // 设置选中状态的背景色
                if (parent instanceof android.widget.ListView) {
                    android.widget.ListView listView = (android.widget.ListView) parent;
                    if (position == listView.getSelectedItemPosition()) {
                        view.setBackgroundColor(Color.parseColor("#1E90FF")); // 蓝色背景（选中）
                    } else {
                        view.setBackgroundColor(Color.TRANSPARENT); // 透明背景（未选中）
                    }
                }

                return view;
            }
        };

        // 设置选中项监听器，动态更新背景色
        listView.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(android.widget.AdapterView<?> parent, View view, int position, long id) {
                // 重新绘制列表以更新背景色
                parent.post(new Runnable() {
                    @Override
                    public void run() {
                        ((android.widget.ListView) parent).invalidateViews();
                    }
                });
            }

            @Override
            public void onNothingSelected(android.widget.AdapterView<?> parent) {
            }
        });

        listView.setAdapter(adapter);

        // 自动请求焦点，确保遥控器可以直接操作
        listView.post(new Runnable() {
            @Override
            public void run() {
                listView.requestFocus();
                Log.i(TAG_EBOOK, "文件列表已请求焦点");
            }
        });

        // 设置点击事件
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                java.io.File selectedFile = allFiles.get(position);

                if (selectedFile == null) {
                    // 点击了"上级"
                    loadFileList(listView, pathView, currentDir.getParentFile());
                } else if (selectedFile.isDirectory()) {
                    // 点击了文件夹
                    loadFileList(listView, pathView, selectedFile);
                } else {
                    // 点击了文件
                    onEbookFileSelected(selectedFile.getAbsolutePath());
                }
            }
        });
    }

    /**
     * 判断是否是电子书文件
     */
    private boolean isEbookFile(java.io.File file) {
        String name = file.getName().toLowerCase();
        return name.endsWith(".mobi") || name.endsWith(".azw3") || name.endsWith(".epub");
    }

    /**
     * 处理文件选择结果
     */
    public void onEbookFileSelected(String filePath) {
        Log.i(TAG_EBOOK, "选中的电子书文件: " + filePath);

        if (filePath == null || filePath.isEmpty()) {
            Log.w(TAG_EBOOK, "文件路径为空");
            return;
        }

        // 防止重复点击
        if (isLoadingEbook) {
            Log.w(TAG_EBOOK, "正在加载电子书，请稍候...");
            host.showToast("正在加载，请稍候...");
            return;
        }

        // 显示加载提示
        showLoadingIndicator();

        // 解析并显示电子书
        parseAndDisplayEbook(filePath);
    }

    /**
     * 显示加载进度提示
     */
    private void showLoadingIndicator() {
        isLoadingEbook = true;
        Log.i(TAG_EBOOK, "显示加载进度提示");

        // 在主线程创建并显示加载提示
        host.getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (ebookPanel == null) return;

                // 清空面板
                ebookPanel.removeAllViews();

                // 创建容器
                android.widget.LinearLayout loadingContainer = new android.widget.LinearLayout(host.getActivity());
                loadingContainer.setOrientation(android.widget.LinearLayout.VERTICAL);
                loadingContainer.setGravity(android.view.Gravity.CENTER);
                loadingContainer.setBackgroundColor(Color.parseColor("#333333"));

                android.widget.FrameLayout.LayoutParams containerParams = new android.widget.FrameLayout.LayoutParams(
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT,
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT
                );
                loadingContainer.setLayoutParams(containerParams);

                // 创建进度条
                loadingProgressBar = new android.widget.ProgressBar(host.getActivity());
                loadingProgressBar.setIndeterminate(true);
                loadingProgressBar.setLayoutParams(new android.widget.LinearLayout.LayoutParams(
                    android.widget.LinearLayout.LayoutParams.WRAP_CONTENT,
                    android.widget.LinearLayout.LayoutParams.WRAP_CONTENT
                ));

                // 创建文字提示
                loadingTextView = new android.widget.TextView(host.getActivity());
                loadingTextView.setText("正在加载电子书...");
                loadingTextView.setTextColor(Color.WHITE);
                loadingTextView.setTextSize(18);
                loadingTextView.setGravity(android.view.Gravity.CENTER);
                android.widget.LinearLayout.LayoutParams textParams = new android.widget.LinearLayout.LayoutParams(
                    android.widget.LinearLayout.LayoutParams.WRAP_CONTENT,
                    android.widget.LinearLayout.LayoutParams.WRAP_CONTENT
                );
                textParams.setMargins(0, 20, 0, 0);
                loadingTextView.setLayoutParams(textParams);

                // 添加到容器
                loadingContainer.addView(loadingProgressBar);
                loadingContainer.addView(loadingTextView);

                // 添加到电子书面板
                ebookPanel.addView(loadingContainer);

                Log.i(TAG_EBOOK, "加载进度提示已显示");
            }
        });
    }

    /**
     * 隐藏加载进度提示
     */
    private void hideLoadingIndicator() {
        Log.i(TAG_EBOOK, "隐藏加载进度提示");
        isLoadingEbook = false;

        host.getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (loadingProgressBar != null) {
                    loadingProgressBar.setVisibility(View.GONE);
                }
                if (loadingTextView != null) {
                    loadingTextView.setVisibility(View.GONE);
                }
                Log.i(TAG_EBOOK, "加载进度提示已隐藏");
            }
        });
    }

    /**
     * 解析并显示电子书内容
     */
    private void parseAndDisplayEbook(String filePath) {
        Log.i(TAG_EBOOK, "开始解析电子书: " + filePath);

        // 取消之前的解析任务
        cancelParsingTask();

        // 保存文件路径
        currentBookFilePath = filePath;
        isParsingCancelled = false;
        isLoadingEbook = true;

        // 关键修复：显示加载提示
        showLoadingIndicator();

        // 在后台线程解析电子书（使用WeakReference避免内存泄漏）
        final WeakReference<EbookReaderPanel> panelRef = new WeakReference<>(this);

        parsingThread = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    // 检查是否已取消
                    if (isParsingCancelled) {
                        Log.i(TAG_EBOOK, "解析任务已取消");
                        return;
                    }

                    // 获取Panel和Activity引用
                    EbookReaderPanel panel = panelRef.get();
                    if (panel == null || panel.host == null || panel.host.getActivity() == null) {
                        Log.w(TAG_EBOOK, "Panel或Activity已销毁，取消解析");
                        return;
                    }

                    // 创建解析器工厂（使用Activity作为Context）
                    EbookParserFactory factory = new EbookParserFactory(panel.host.getActivity());

                    // 生成书籍ID
                    String bookId = EbookParserFactory.generateBookId(filePath);

                    // 解析电子书文件
                    Book book = factory.parse(filePath, bookId);

                    // 再次检查是否已取消
                    if (isParsingCancelled) {
                        Log.i(TAG_EBOOK, "解析任务已取消，不显示内容");
                        return;
                    }

                    if (book == null) {
                        Log.e(TAG_EBOOK, "电子书解析失败");
                        hideLoadingIndicator();

                        // 在主线程显示错误提示
                        panel = panelRef.get();
                        if (panel != null && panel.host != null && panel.host.getActivity() != null) {
                            final EbookReaderPanel finalPanel = panel;
                            panel.host.getActivity().runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    if (finalPanel.host != null && finalPanel.host.getActivity() != null) {
                                        finalPanel.host.showToast("电子书解析失败，请检查文件格式");
                                    }
                                }
                            });
                        }
                        return;
                    }

                    Log.i(TAG_EBOOK, "电子书解析成功: " + book.getTitle() +
                          ", 章节数: " + book.getChapters().size());

                    // 隐藏加载提示
                    hideLoadingIndicator();

                    // 在主线程显示书籍内容（恢复阅读进度）
                    panel = panelRef.get();
                    if (panel != null && panel.host != null && panel.host.getActivity() != null) {
                        final Book finalBook = book;
                        final EbookReaderPanel finalPanel = panel;
                        panel.host.getActivity().runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                if (finalPanel.host != null && finalPanel.host.getActivity() != null) {
                                    finalPanel.restoreReadingProgress(finalBook);
                                }
                            }
                        });
                    }

                } catch (Exception e) {
                    Log.e(TAG_EBOOK, "解析电子书异常", e);
                    hideLoadingIndicator();

                    // 在主线程显示错误提示
                    EbookReaderPanel panel = panelRef.get();
                    if (panel != null && panel.host != null && panel.host.getActivity() != null) {
                        final Exception finalException = e;
                        final EbookReaderPanel finalPanel = panel;
                        panel.host.getActivity().runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                if (finalPanel.host != null && finalPanel.host.getActivity() != null) {
                                    finalPanel.host.showToast("解析异常: " + finalException.getMessage());
                                }
                            }
                        });
                    }
                } finally {
                    parsingThread = null;
                }
            }
        });

        parsingThread.start();
    }

    /**
     * 取消解析任务
     */
    private void cancelParsingTask() {
        isParsingCancelled = true;
        if (parsingThread != null) {
            parsingThread.interrupt();
            parsingThread = null;
        }
    }

    // ==================== 书籍内容显示 ====================

    /**
     * 显示书籍内容（在WebView中显示指定章节）
     */
    private void displayBookContent(Book book) {
        displayBookContent(book, 0); // 默认显示第一章
    }

    /**
     * 显示书籍内容（在WebView中显示指定章节）
     */
    private void displayBookContent(Book book, int chapterIndex) {
        displayBookContent(book, chapterIndex, false, -1); // 默认显示顶部，不恢复页码
    }

    /**
     * 显示书籍内容（在WebView中显示指定章节）
     * @param book 书籍对象
     * @param chapterIndex 章节索引
     * @param scrollToBottom 是否滚动到章节底部（用于从上一章节跳转时）
     */
    private void displayBookContent(Book book, int chapterIndex, boolean scrollToBottom) {
        displayBookContent(book, chapterIndex, scrollToBottom, -1); // 不恢复页码
    }

    /**
     * 显示书籍内容（在WebView中显示指定章节）
     * @param book 书籍对象
     * @param chapterIndex 章节索引
     * @param scrollToBottom 是否滚动到章节底部（用于从上一章节跳转时）
     * @param restorePage 需要恢复的页码（-1表示不恢复）
     */
    private void displayBookContent(Book book, int chapterIndex, boolean scrollToBottom, int restorePage) {
        if (book == null || book.getChapters() == null || book.getChapters().isEmpty()) {
            Log.e(TAG_EBOOK, "书籍无章节内容");
            host.showToast("书籍内容为空");
            return;
        }

        // 关键修复：重置所有状态标志
        isFileChooserShown = false;
        isChapterListShown = false;
        Log.i(TAG_EBOOK, "重置状态标志: isFileChooserShown=false, isChapterListShown=false");

        // 保存当前书籍和章节索引
        currentBook = book;
        currentChapterIndex = chapterIndex;
        isReadingBook = true; // 标记为阅读状态

        Log.i(TAG_EBOOK, "开始显示书籍内容: " + book.getTitle() +
              ", 章节: " + (chapterIndex + 1) + "/" + book.getChapters().size() +
              ", scrollToBottom=" + scrollToBottom);

        // 清空电子书面板（确保移除所有视图，包括文件选择器和章节列表）
        if (ebookPanel != null) {
            ebookPanel.removeAllViews();
            Log.i(TAG_EBOOK, "已清空电子书面板");
        }

        // 关键修复：销毁旧的WebView，避免内存泄漏
        // 每次显示新章节时，都需要销毁旧的WebView，因为WebView不能复用
        destroyEbookWebView();

        // 创建新的WebView
        final Activity activity = host.getActivity();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null, cannot display book content");
            return;
        }
        ebookWebView = new android.webkit.WebView(activity);
        android.widget.FrameLayout.LayoutParams params = new android.widget.FrameLayout.LayoutParams(
            android.widget.FrameLayout.LayoutParams.MATCH_PARENT,
            android.widget.FrameLayout.LayoutParams.MATCH_PARENT
        );
        ebookWebView.setLayoutParams(params);

        // 配置WebView
        android.webkit.WebSettings settings = ebookWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        // 关键修复：禁用缩放控制条显示，否则鼠标滚轮滚动时右下角出现放大缩小按钮，
        // 且按钮出现后 WebView 进入缩放控制状态，导致阅读页面不再响应鼠标左键点击
        settings.setDisplayZoomControls(false);
        settings.setTextSize(android.webkit.WebSettings.TextSize.NORMAL);

        // 关键修复：设置为不可聚焦，避免Android焦点系统拦截方向键
        ebookWebView.setFocusable(false);
        ebookWebView.setFocusableInTouchMode(false);

        // 使用OnTouchListener处理触摸和鼠标点击事件
        // 直接监听ACTION_DOWN事件，不做事件源区分
        ebookWebView.setOnTouchListener(new android.view.View.OnTouchListener() {
            private long lastClickTime = 0;

            @Override
            public boolean onTouch(View v, android.view.MotionEvent event) {
                // 鼠标滚轮滚动：调度保存阅读进度（防抖300ms）
                // ACTION_SCROLL是鼠标滚轮产生的事件（API 12+），不拦截，让WebView正常滚动
                if (event.getAction() == android.view.MotionEvent.ACTION_SCROLL) {
                    scheduleSaveReadingProgress();
                    return false;
                }

                // 只处理按下事件
                if (event.getAction() == android.view.MotionEvent.ACTION_DOWN) {
                    // 防抖：避免短时间内重复触发
                    long currentTime = System.currentTimeMillis();
                    if (currentTime - lastClickTime < 300) {
                        return false;
                    }
                    lastClickTime = currentTime;

                    // 获取WebView的宽度
                    int webViewWidth = v.getWidth();
                    // 获取触摸点的X坐标
                    float x = event.getX();

                    Log.i(TAG_EBOOK, "触摸事件: x=" + x + ", webViewWidth=" + webViewWidth);

                    // 判断触摸位置是在左半边还是右半边
                    if (x < webViewWidth / 2) {
                        // 左半边：向前翻页（左键逻辑）
                        Log.i(TAG_EBOOK, "触摸左半边，向前翻页");
                        handlePageTurn(true); // true = 向前翻页
                        return true;
                    } else {
                        // 右半边：向后翻页（右键逻辑）
                        Log.i(TAG_EBOOK, "触摸右半边，向后翻页");
                        handlePageTurn(false); // false = 向后翻页
                        return true;
                    }
                }

                // 对于其他事件（包括滚轮事件），返回false让WebView正常处理
                return false;
            }
        });

        // 添加到面板
        if (ebookPanel != null) {
            ebookPanel.addView(ebookWebView);
        }

        // 获取章节内容
        Chapter chapter = book.getChapters().get(chapterIndex);
        String htmlContent = chapter.getHtmlContent();

        // 性能优化：延迟加载章节内容
        // 如果章节内容为空，从HTML文件加载
        if (htmlContent == null || htmlContent.isEmpty()) {
            Log.i(TAG_EBOOK, "章节内容为空，从HTML文件延迟加载: " + chapter.getTitle());
            htmlContent = loadChapterContentFromFile(chapter, book.getExtractionPath());
        }

        if (htmlContent == null || htmlContent.isEmpty()) {
            htmlContent = "<html><body><h1>" + chapter.getTitle() + "</h1><p>章节内容为空</p></body></html>";
        }

        // 读取保存的字体大小（如果没有保存则使用默认值28）
        float savedFontSize = EbookFileStore.getInstance(host.getContext()).getFontSize();
        Log.i(TAG_EBOOK, "读取保存的字体大小: " + savedFontSize);

        // 构建完整HTML（添加样式）
        String styledHtml = "<html><head>" +
            "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" +
            "<style>body { font-size: " + (int)savedFontSize + "px; line-height: 1.6; padding: 20px; }</style>" +
            "</head><body>" + htmlContent + "</body></html>";

        // 设置WebViewClient，用于监听页面加载完成（应用字体大小、滚动到底部或恢复页码）
        final boolean finalScrollToBottom = scrollToBottom;
        final int finalRestorePage = restorePage;
        ebookWebView.setWebViewClient(new android.webkit.WebViewClient() {
            @Override
            public void onPageFinished(android.webkit.WebView view, String url) {
                super.onPageFinished(view, url);

                view.post(new Runnable() {
                    @Override
                    public void run() {
                        // 应用保存的字体大小和配色方案
                        EbookFileStore fileStore = EbookFileStore.getInstance(host.getContext());
                        float savedFontSize = fileStore.getFontSize();
                        Log.i(TAG_EBOOK, "页面加载完成，应用字体大小: " + savedFontSize);
                        applyFontSizeToWebView(savedFontSize);

                        int savedThemeIndex = fileStore.getColorThemeIndex();
                        Log.i(TAG_EBOOK, "页面加载完成，应用配色方案: " + savedThemeIndex);
                        applyColorThemeToWebView(savedThemeIndex);

                        // 滚动逻辑
                        if (finalScrollToBottom) {
                            // 滚动到章节底部
                            Log.i(TAG_EBOOK, "页面加载完成，滚动到章节底部");
                            int contentHeight = view.getContentHeight();
                            float density = host.getActivity().getResources().getDisplayMetrics().density;
                            int contentHeightPx = (int) (contentHeight * density);
                            int viewHeight = view.getHeight();
                            int scrollY = contentHeightPx - viewHeight;
                            if (scrollY > 0) {
                                view.scrollTo(0, scrollY);
                                Log.i(TAG_EBOOK, "已滚动到章节底部: scrollY=" + scrollY);
                            }
                        } else if (finalRestorePage >= 0) {
                            // 恢复到指定页码
                            Log.i(TAG_EBOOK, "页面加载完成，恢复到页码: " + finalRestorePage);
                            int viewHeight = view.getHeight();
                            int scrollY = finalRestorePage * viewHeight;
                            if (scrollY > 0) {
                                view.scrollTo(0, scrollY);
                                Log.i(TAG_EBOOK, "已滚动到页码 " + finalRestorePage + ": scrollY=" + scrollY);
                            }
                        }

                        // 章节跳转后，防抖保存阅读进度
                        scheduleSaveReadingProgress();
                    }
                });
            }
        });

        // 加载内容到WebView
        // 关键修复：使用章节的baseUrl加载HTML内容
        // baseUrl用于WebView正确解析HTML中的相对路径（图片、CSS等资源）
        String baseUrl = chapter.getBaseUrl();
        if (baseUrl == null || baseUrl.isEmpty()) {
            // 兼容处理：如果章节没有baseUrl，使用null（保持原有行为）
            baseUrl = null;
            Log.w(TAG_EBOOK, "章节没有baseUrl，使用null作为baseUrl");
        } else {
            Log.i(TAG_EBOOK, "使用baseUrl: " + baseUrl);
        }

        ebookWebView.loadDataWithBaseURL(baseUrl, styledHtml, "text/html", "UTF-8", null);

        // 关键修复：设置WebView为不可聚焦，避免Android焦点系统拦截方向键
        // scrollBy()是编程式滚动，不依赖焦点，所以WebView不需要焦点
        ebookWebView.setFocusable(false);
        ebookWebView.setFocusableInTouchMode(false);

        Log.i(TAG_EBOOK, "WebView已显示章节: " + chapter.getTitle() + ", 设置为不可聚焦避免拦截方向键");
    }

    /**
     * 应用字体大小到WebView
     */
    private void applyFontSizeToWebView(float fontSize) {
        if (ebookWebView == null) {
            return;
        }

        Log.i(TAG_EBOOK, "应用字体大小到WebView: " + fontSize);

        // 使用JavaScript修改字体大小
        String js = String.format("document.body.style.fontSize='%dpx';", (int)fontSize);
        ebookWebView.evaluateJavascript(js, null);

        // 同时修改所有段落和div的字体大小
        String jsAll = String.format(
            "var elements = document.querySelectorAll('p, div, span');" +
            "for (var i = 0; i < elements.length; i++) {" +
            "  elements[i].style.fontSize = '%dpx';" +
            "}", (int)fontSize
        );
        ebookWebView.evaluateJavascript(jsAll, null);
    }

    /**
     * 应用配色方案到WebView
     */
    private void applyColorThemeToWebView(int themeIndex) {
        if (ebookWebView == null) {
            return;
        }

        // 获取配色方案
        com.bilibili.tv.ebook.model.ReaderTheme theme = com.bilibili.tv.ebook.model.ReaderTheme.getBuiltInThemes()[themeIndex];
        Log.i(TAG_EBOOK, "应用配色方案到WebView: " + theme.getName() +
              ", 背景色: #" + Integer.toHexString(theme.getBackgroundColor()) +
              ", 文字色: #" + Integer.toHexString(theme.getTextColor()));

        // 使用JavaScript修改背景色和文字颜色
        String bgColor = String.format("#%06X", (0xFFFFFF & theme.getBackgroundColor()));
        String textColor = String.format("#%06X", (0xFFFFFF & theme.getTextColor()));

        // 修改body背景色和文字颜色
        String js = String.format(
            "document.body.style.backgroundColor='%s';" +
            "document.body.style.color='%s';",
            bgColor, textColor
        );
        ebookWebView.evaluateJavascript(js, null);

        // 修改所有元素的颜色
        String jsAll = String.format(
            "var elements = document.querySelectorAll('*');" +
            "for (var i = 0; i < elements.length; i++) {" +
            "  elements[i].style.backgroundColor='%s';" +
            "  elements[i].style.color='%s';" +
            "}",
            bgColor, textColor
        );
        ebookWebView.evaluateJavascript(jsAll, null);
    }

    // ==================== 章节列表（多级目录） ====================

    /**
     * 获取一级目录（depth=0的章节）
     */
    private List<Chapter> getRootChapters() {
        List<Chapter> rootChapters = new ArrayList<>();
        List<Chapter> allChapters = currentBook.getChapters();

        for (Chapter chapter : allChapters) {
            if (chapter.getDepth() == 0) {
                rootChapters.add(chapter);
            }
        }

        Log.i(TAG_EBOOK, "一级目录数量: " + rootChapters.size());
        return rootChapters;
    }

    /**
     * 获取指定章节的子章节
     */
    private List<Chapter> getChildChapters(Chapter parentChapter) {
        List<Chapter> childChapters = new ArrayList<>();
        List<Chapter> allChapters = currentBook.getChapters();

        int parentIndex = parentChapter.getChapterIndex();
        int parentDepth = parentChapter.getDepth();

        // 查找紧跟在parent之后且depth大于parent的章节
        for (int i = parentIndex + 1; i < allChapters.size(); i++) {
            Chapter chapter = allChapters.get(i);
            int chapterDepth = chapter.getDepth();

            // 如果depth比parent大1，说明是直接子章节
            if (chapterDepth == parentDepth + 1) {
                childChapters.add(chapter);
            }
            // 如果depth等于parent，说明到达了同级章节，停止
            else if (chapterDepth <= parentDepth) {
                break;
            }
        }

        Log.i(TAG_EBOOK, "章节 " + parentChapter.getTitle() + " 的子章节数量: " + childChapters.size());
        return childChapters;
    }

    /**
     * 创建章节列表视图（支持多级目录）
     */
    private void createChapterListView(final List<Chapter> chapters) {
        // 在主线程创建章节列表
        final Activity activity = host.getActivity();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null, cannot create chapter list");
            return;
        }
        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (ebookPanel == null) {
                    Log.e(TAG_EBOOK, "电子书面板为null，无法显示章节列表");
                    return;
                }

                // 确保电子书面板可见
                if (ebookPanel.getVisibility() != View.VISIBLE) {
                    Log.w(TAG_EBOOK, "电子书面板不可见，设置为VISIBLE");
                    ebookPanel.setVisibility(View.VISIBLE);
                }

                // 隐藏WebView
                if (ebookWebView != null) {
                    ebookWebView.setVisibility(View.GONE);
                    Log.d(TAG_EBOOK, "隐藏WebView");
                }

                // 清空电子书面板
                ebookPanel.removeAllViews();

                // 创建章节列表容器
                android.widget.FrameLayout listContainer = new android.widget.FrameLayout(activity);
                listContainer.setBackgroundColor(Color.parseColor("#2A2A2A"));
                android.widget.FrameLayout.LayoutParams containerParams = new android.widget.FrameLayout.LayoutParams(
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT,
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT
                );
                listContainer.setLayoutParams(containerParams);

                // 创建标题（显示层级信息）
                android.widget.TextView titleView = new android.widget.TextView(activity);
                String titleText = "章节列表";
                if (parentChapterTitle != null && !parentChapterTitle.isEmpty()) {
                    titleText = parentChapterTitle; // 下级目录显示父章节标题
                }
                titleView.setText(titleText);
                titleView.setTextColor(Color.WHITE);
                titleView.setTextSize(20);
                titleView.setGravity(android.view.Gravity.CENTER);
                titleView.setPadding(20, 20, 20, 20);
                titleView.setBackgroundColor(Color.parseColor("#333333"));
                android.widget.FrameLayout.LayoutParams titleParams = new android.widget.FrameLayout.LayoutParams(
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT,
                    android.widget.FrameLayout.LayoutParams.WRAP_CONTENT
                );
                titleView.setLayoutParams(titleParams);
                listContainer.addView(titleView);

                // 准备章节标题列表（使用传入的chapters参数）
                List<String> chapterTitles = new ArrayList<>();
                final List<Chapter> chapterList = chapters;
                for (Chapter chapter : chapterList) {
                    chapterTitles.add(chapter.getTitle());
                }

                // 创建章节列表ListView
                chapterListView = new android.widget.ListView(activity);
                chapterListView.setBackgroundColor(Color.parseColor("#2A2A2A"));
                android.widget.FrameLayout.LayoutParams listParams = new android.widget.FrameLayout.LayoutParams(
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT,
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT
                );
                listParams.setMargins(0, 80, 0, 0); // 标题下方
                chapterListView.setLayoutParams(listParams);

                // 创建Adapter（支持多级目录显示）
                android.widget.ArrayAdapter<String> adapter = new android.widget.ArrayAdapter<String>(
                    activity,
                    android.R.layout.simple_list_item_1,
                    chapterTitles
                ) {
                    @Override
                    public View getView(int position, View convertView, ViewGroup parent) {
                        View view = super.getView(position, convertView, parent);
                        if (view instanceof android.widget.TextView) {
                            android.widget.TextView textView = (android.widget.TextView) view;
                            textView.setTextSize(16);

                            // 根据depth显示缩进
                            Chapter chapter = chapterList.get(position);
                            int depth = chapter.getDepth();
                            int indent = depth * 30; // 每级缩进30像素
                            textView.setPadding(24 + indent, 20, 24, 20);

                            // 检查是否有子章节
                            List<Chapter> children = getChildChapters(chapter);
                            boolean hasChildren = !children.isEmpty();

                            // 检查是否是当前阅读的章节
                            boolean isCurrentChapter = (chapter.getChapterIndex() == currentChapterIndex);

                            // 构建显示文本
                            String displayText = chapter.getTitle();

                            // 如果有子章节，添加小三角箭头标记
                            if (hasChildren) {
                                displayText = "▸ " + displayText;
                            }

                            textView.setText(displayText);

                            // 设置文字颜色（当前阅读章节特殊处理）
                            if (isCurrentChapter && parent instanceof android.widget.ListView) {
                                android.widget.ListView listView = (android.widget.ListView) parent;
                                boolean isSelected = (position == listView.getSelectedItemPosition());

                                if (isSelected) {
                                    // 当前阅读章节获得焦点：白色文字
                                    textView.setTextColor(Color.WHITE);
                                } else {
                                    // 当前阅读章节失去焦点：蓝色文字
                                    textView.setTextColor(Color.parseColor("#1E90FF"));
                                }
                            } else {
                                // 普通章节：白色文字
                                textView.setTextColor(Color.WHITE);
                            }
                        }

                        // 设置选中状态的背景色（蓝色）
                        Chapter chapter = chapterList.get(position);
                        if (parent instanceof android.widget.ListView) {
                            android.widget.ListView listView = (android.widget.ListView) parent;
                            if (position == listView.getSelectedItemPosition()) {
                                view.setBackgroundColor(Color.parseColor("#1E90FF")); // 蓝色背景（选中）
                            } else {
                                view.setBackgroundColor(Color.TRANSPARENT); // 透明背景（未选中）
                            }
                        }

                        return view;
                    }
                };

                // 设置选中项监听器，动态更新背景色
                chapterListView.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener() {
                    @Override
                    public void onItemSelected(android.widget.AdapterView<?> parent, View view, int position, long id) {
                        // 重新绘制列表以更新背景色
                        parent.post(new Runnable() {
                            @Override
                            public void run() {
                                ((android.widget.ListView) parent).invalidateViews();
                            }
                        });
                    }

                    @Override
                    public void onNothingSelected(android.widget.AdapterView<?> parent) {
                    }
                });

                chapterListView.setAdapter(adapter);

                // 自动滚动高亮当前章节
                chapterListView.post(new Runnable() {
                    @Override
                    public void run() {
                        // 查找当前章节在当前列表中的位置
                        int highlightPosition = -1;
                        for (int i = 0; i < chapterList.size(); i++) {
                            Chapter chapter = chapterList.get(i);
                            if (chapter.getChapterIndex() == currentChapterIndex) {
                                highlightPosition = i;
                                break;
                            }
                        }

                        // 滚动到当前章节
                        if (highlightPosition >= 0) {
                            chapterListView.setSelection(highlightPosition);
                            Log.i(TAG_EBOOK, "章节列表已滚动到当前章节位置: " + highlightPosition);
                        }

                        // 请求焦点
                        chapterListView.requestFocus();
                        Log.i(TAG_EBOOK, "章节列表已请求焦点");
                    }
                });

                // 设置点击事件（支持多级目录导航）
                chapterListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                        Chapter clickedChapter = chapterList.get(position);
                        Log.i(TAG_EBOOK, "点击章节: " + clickedChapter.getTitle() + ", depth=" + clickedChapter.getDepth());

                        // 检查是否有子章节
                        List<Chapter> children = getChildChapters(clickedChapter);
                        if (!children.isEmpty()) {
                            // 有子章节：压入导航栈，显示子章节
                            Log.i(TAG_EBOOK, "章节有子章节，显示子章节列表");
                            chapterNavigationStack.push(currentChapterList);
                            currentChapterList = children;
                            parentChapterTitle = clickedChapter.getTitle(); // 设置父章节标题
                            createChapterListView(children);
                        } else {
                            // 没有子章节：跳转到该章节
                            Log.i(TAG_EBOOK, "跳转到章节: " + clickedChapter.getChapterIndex());
                            displayBookContent(currentBook, clickedChapter.getChapterIndex());
                            hideChapterList();
                        }
                    }
                });

                listContainer.addView(chapterListView);

                // 添加到电子书面板
                ebookPanel.addView(listContainer);

                // 添加详细日志
                Log.i(TAG_EBOOK, "章节列表已添加到电子书面板，子视图数: " + ebookPanel.getChildCount());
                Log.i(TAG_EBOOK, "章节列表已显示，当前章节索引: " + currentChapterIndex);
            }
        });
    }

    /**
     * 隐藏章节列表
     */
    private void hideChapterList() {
        Log.i(TAG_EBOOK, "隐藏章节列表");
        isChapterListShown = false;

        final Activity activity = host.getActivity();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null, cannot hide chapter list");
            return;
        }
        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                // 移除章节列表容器（直接清空电子书面板的所有子视图）
                if (ebookPanel != null) {
                    Log.i(TAG_EBOOK, "清空电子书面板，当前子视图数: " + ebookPanel.getChildCount());
                    ebookPanel.removeAllViews();
                    chapterListView = null;
                }

                // 恢复WebView显示
                if (ebookWebView != null) {
                    Log.i(TAG_EBOOK, "恢复WebView显示");
                    ebookPanel.addView(ebookWebView);
                    ebookWebView.setVisibility(View.VISIBLE);
                }

                Log.i(TAG_EBOOK, "章节列表已隐藏，电子书面板子视图数: " +
                      (ebookPanel != null ? ebookPanel.getChildCount() : 0));
            }
        });
    }

    // ==================== 面板显示与视频缩放 ====================

    /**
     * 显示电子书面板(视频缩小到(100%-占比)%,按位置对齐;另一侧显示灰色背景)
     */
    private void showEbookPanel() {
        Activity activity = host.getActivity();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null, cannot show ebook panel");
            return;
        }

        Log.i(TAG_EBOOK, "开始显示电子书面板");

        // 关键修复：每次打开面板强制重新读取 json 文件。
        // 书架/进度文件可被其它应用（如 bilitv）共享写入，单例缓存不会感知外部更新
        EbookFileStore.getInstance(host.getContext()).reloadFromFile();

        // 获取屏幕尺寸
        android.util.DisplayMetrics metrics = new android.util.DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(metrics);
        int screenWidth = metrics.widthPixels;
        int screenHeight = metrics.heightPixels;

        // 读取保存的屏幕占比
        EbookFileStore fileStore = EbookFileStore.getInstance(host.getContext());
        int savedPercentIndex = fileStore.getScreenPercent();
        int[] percentValues = {25, 30, 35, 40, 45, 50};
        if (savedPercentIndex >= 0 && savedPercentIndex < percentValues.length) {
            ebookPanelPercent = percentValues[savedPercentIndex];
        } else {
            ebookPanelPercent = 30; // 默认30%
        }

        Log.i(TAG_EBOOK, "屏幕尺寸: " + screenWidth + "x" + screenHeight + ", 电子书占比: " + ebookPanelPercent + "%");

        // 读取保存的视频位置（如果 videoPositionList 未初始化，则初始化它）
        if (videoPositionList == null) {
            videoPositionList = new ArrayList<>();
            videoPositionList.add("左上");
            videoPositionList.add("左下");
            videoPositionList.add("右上");
            videoPositionList.add("右下");
        }
        int savedPositionIndex = fileStore.getVideoPosition();
        if (savedPositionIndex >= 0 && savedPositionIndex < videoPositionList.size()) {
            videoPosition = savedPositionIndex;
        } else {
            videoPosition = VIDEO_POSITION_TOP_LEFT; // 默认左上
        }
        Log.i(TAG_EBOOK, "读取保存的视频位置: " + videoPositionList.get(videoPosition));

        // 1. 缩小视频画面到(100%-ebookPanelPercent)%,根据视频位置对齐
        shrinkVideoView(activity, screenWidth, screenHeight);

        // 2. 缩小弹幕视图到(100%-ebookPanelPercent)%,与视频同步对齐（直播弹幕在视频内部，经host适配）
        shrinkDanmakuView(activity, screenWidth, screenHeight);

        // 3. 另一侧ebookPanelPercent%显示灰色背景面板
        showGrayBackgroundPanel(activity, screenWidth, screenHeight);

        // 初始化电子书缓存管理器和书架管理器
        if (ebookCacheManager == null) {
            ebookCacheManager = new EbookCacheManager(activity);
        }
        if (bookshelfManager == null) {
            bookshelfManager = new BookshelfManager(activity);
        }

        isEbookPanelShown = true;
        controlTarget = "ebook"; // 打开电子书时，默认控制电子书
        Log.i(TAG_EBOOK, "电子书面板已显示，controlTarget设置为ebook");

        // 智能显示：如果有正在阅读的书籍，直接显示书籍内容；否则显示首页内容
        if (currentBook != null && currentBookFilePath != null) {
            Log.i(TAG_EBOOK, "检测到正在阅读的书籍，恢复阅读进度: " + currentBook.getTitle());
            // 恢复阅读进度（会自动恢复到之前的章节和页码）
            restoreReadingProgress(currentBook);
        } else {
            Log.i(TAG_EBOOK, "没有正在阅读的书籍，显示首页内容");
            // 显示首页内容（书架列表或文件选择器）
            showBookshelfOrFileChooser();
        }
    }

    /**
     * 计算视频视图缩小后的高度
     * 直播：视频视图为 LiveVideoPlayer 整体（高度占满父容器），必须同步缩小高度，
     *       否则 ALIGN_PARENT_TOP/BOTTOM 无效，视频画面永远垂直居中
     * 点播：视频视图高度自适应（16:9），保持 MATCH_PARENT 即可实现四角对齐
     */
    private int getShrinkVideoHeight(int screenHeight) {
        if (host.isLiveMode()) {
            return screenHeight * (100 - ebookPanelPercent) / 100;
        }
        return ViewGroup.LayoutParams.MATCH_PARENT;
    }

    /**
     * 缩小视频视图到(100%-ebookPanelPercent)%宽度,按视频位置对齐
     *
     * 兼容设计：支持视频切换后重新应用缩小布局
     */
    private void shrinkVideoView(Activity activity, int screenWidth, int screenHeight) {
        // 检查是否使用TextureView模式（点播：prefer_videoview==2；直播：内部渲染视图继承TextureView恒为true）
        if (!host.isVideoTextureView()) {
            Log.w(TAG_EBOOK, "当前未使用TextureView模式");
            host.showToast("电子书功能需要TextureView模式\n请先在个性化设置中切换");
            return;
        }

        // 获取视频视图
        View videoView = host.getVideoView();
        if (videoView == null) {
            Log.e(TAG_EBOOK, "视频视图为空");
            return;
        }

        // 点播下视频视图必须是TextureView（直播中videoView为整体容器LiveVideoPlayer，跳过校验）
        if (!host.isLiveMode() && !(videoView instanceof android.view.TextureView)) {
            Log.e(TAG_EBOOK, "视频视图不是TextureView: " + videoView.getClass().getSimpleName());
            host.showToast("当前使用的是" + videoView.getClass().getSimpleName() + "\n请切换到TextureView模式");
            return;
        }

        Log.i(TAG_EBOOK, "找到视频视图: " + videoView.getClass().getSimpleName());

        // 获取父容器
        ViewGroup parent = (ViewGroup) videoView.getParent();
        if (parent == null) {
            Log.e(TAG_EBOOK, "视频视图的父容器为空");
            return;
        }
        Log.i(TAG_EBOOK, "视频视图父容器: " + parent.getClass().getSimpleName());

        // 关键修复：只在第一次保存原始布局参数
        // 如果originalVideoParams为null，说明是第一次缩小，需要保存原始参数
        // 如果originalVideoParams不为null，说明已经缩小过，不需要再次保存
        if (originalVideoParams == null) {
            ViewGroup.LayoutParams currentParams = videoView.getLayoutParams();
            originalVideoParams = new ViewGroup.LayoutParams(currentParams.width, currentParams.height);
            Log.i(TAG_EBOOK, "原始视频布局参数已保存: width=" + originalVideoParams.width + ", height=" + originalVideoParams.height);
        } else {
            Log.i(TAG_EBOOK, "视频已经缩小过，跳过保存原始参数");
        }

        // 缩小视频到(100%-ebookPanelPercent)%宽度，根据视频位置调整对齐方式
        int videoWidth = screenWidth * (100 - ebookPanelPercent) / 100;
        ViewGroup.LayoutParams params;

        // 根据视频位置设置 gravity
        int gravity;
        boolean isVideoOnLeft = (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_BOTTOM_LEFT);
        int shrinkHeight = getShrinkVideoHeight(screenHeight);

        if (parent instanceof FrameLayout) {
            FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(
                videoWidth,
                shrinkHeight
            );

            // 设置水平和垂直对齐方式
            if (isVideoOnLeft) {
                // 视频在左侧：左上或左下
                gravity = android.view.Gravity.LEFT;
                if (videoPosition == VIDEO_POSITION_TOP_LEFT) {
                    gravity |= android.view.Gravity.TOP;
                } else {
                    gravity |= android.view.Gravity.BOTTOM;
                }
            } else {
                // 视频在右侧：右上或右下
                gravity = android.view.Gravity.RIGHT;
                if (videoPosition == VIDEO_POSITION_TOP_RIGHT) {
                    gravity |= android.view.Gravity.TOP;
                } else {
                    gravity |= android.view.Gravity.BOTTOM;
                }
            }
            flParams.gravity = gravity;
            params = flParams;
        } else if (parent instanceof RelativeLayout) {
            RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(
                videoWidth,
                shrinkHeight
            );

            // RelativeLayout需要使用addRule设置对齐
            if (isVideoOnLeft) {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
            } else {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
            }

            if (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_TOP_RIGHT) {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_TOP);
            } else {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
            }
            params = rlParams;
        } else {
            // 其他容器类型,使用通用LayoutParams
            params = new ViewGroup.LayoutParams(
                videoWidth,
                shrinkHeight
            );
        }

        videoView.setLayoutParams(params);

        String positionName = (videoPositionList != null && videoPosition >= 0 && videoPosition < videoPositionList.size())
                             ? videoPositionList.get(videoPosition) : "左上";
        Log.i(TAG_EBOOK, "视频已缩小: " + videoWidth + "x" + screenHeight +
              ", 位置: " + positionName +
              ", 电子书占比: " + ebookPanelPercent + "%");
    }

    /**
     * 显示灰色背景面板
     * 关键修复：将电子书面板添加到正确的位置，确保不覆盖overlay UI
     */
    private void showGrayBackgroundPanel(Activity activity, int screenWidth, int screenHeight) {
        // 打印View层级结构（调试用）
        dumpViewHierarchy(activity);

        // 获取视频视图的父容器（电子书面板添加位置）
        ViewGroup parent = host.getVideoContainer();
        if (parent == null) {
            Log.e(TAG_EBOOK, "视频容器为空，无法创建电子书面板");
            return;
        }

        Log.i(TAG_EBOOK, "电子书面板将添加到父容器: " + parent.getClass().getSimpleName() + ", 子View数: " + parent.getChildCount());

        // 创建灰色背景面板
        if (ebookPanel == null) {
            ebookPanel = new FrameLayout(activity);
            ebookPanel.setBackgroundColor(Color.parseColor("#333333")); // 灰色背景

            // 设置布局参数（根据视频位置决定电子书面板位置）
            // 使用与父容器匹配的LayoutParams
            int ebookWidth = screenWidth * ebookPanelPercent / 100;

            // 根据视频位置决定电子书面板位置
            // 视频在左侧 → 电子书在右侧
            // 视频在右侧 → 电子书在左侧
            boolean isVideoOnLeft = (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_BOTTOM_LEFT);

            ViewGroup.LayoutParams params;
            if (parent instanceof FrameLayout) {
                FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(
                    ebookWidth,
                    FrameLayout.LayoutParams.MATCH_PARENT
                );
                // 电子书面板位置与视频相反
                flParams.gravity = isVideoOnLeft ? android.view.Gravity.RIGHT : android.view.Gravity.LEFT;
                params = flParams;
            } else if (parent instanceof RelativeLayout) {
                RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(
                    ebookWidth,
                    RelativeLayout.LayoutParams.MATCH_PARENT
                );
                // 电子书面板位置与视频相反
                if (isVideoOnLeft) {
                    rlParams.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
                } else {
                    rlParams.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
                }
                params = rlParams;
            } else {
                // 其他容器类型，使用通用LayoutParams
                params = new ViewGroup.LayoutParams(
                    ebookWidth,
                    ViewGroup.LayoutParams.MATCH_PARENT
                );
            }

            // 关键修复：添加到视频视图的父容器（RelativeLayout）的索引1
            // 索引0是视频视图，索引1开始是overlay UI（弹幕、底部控制栏、进度条、右侧菜单等）
            // 将电子书面板插入到索引1，确保：
            // - 在视频之上（索引0）
            // - 在overlay UI之下（索引2及以后：弹幕、菜单、进度条等）
            int insertIndex = 1;
            parent.addView(ebookPanel, insertIndex, params);

            Log.i(TAG_EBOOK, "电子书面板已添加到父容器索引: " + insertIndex + ", 总子View数: " + parent.getChildCount());
            Log.i(TAG_EBOOK, "View层级: [0]视频 -> [1]电子书面板 -> [2+]overlay UI");
        } else {
            ebookPanel.setVisibility(View.VISIBLE);
            Log.i(TAG_EBOOK, "灰色背景面板已显示");
        }
    }

    /**
     * 打印View层级结构（调试用）
     */
    private void dumpViewHierarchy(Activity activity) {
        ViewGroup rootView = (ViewGroup) activity.findViewById(android.R.id.content);
        if (rootView == null) {
            rootView = (ViewGroup) activity.getWindow().getDecorView();
        }
        Log.i(TAG_EBOOK, "===== View层级结构 =====");
        dumpViewHierarchyRecursive(rootView, 0);
        Log.i(TAG_EBOOK, "===== View层级结构结束 =====");
    }

    /**
     * 递归打印View层级
     */
    private void dumpViewHierarchyRecursive(ViewGroup parent, int level) {
        String indent = "";
        for (int i = 0; i < level; i++) {
            indent += "  ";
        }
        for (int i = 0; i < parent.getChildCount(); i++) {
            View child = parent.getChildAt(i);
            String className = child.getClass().getSimpleName();
            String idStr = child.getId() > 0 ? " id=" + child.getId() : "";
            Log.i(TAG_EBOOK, indent + "[" + i + "] " + className + idStr + (child instanceof ViewGroup ? " (childCount=" + ((ViewGroup)child).getChildCount() + ")" : ""));

            if (child instanceof ViewGroup) {
                dumpViewHierarchyRecursive((ViewGroup) child, level + 1);
            }
        }
    }

    /**
     * 隐藏电子书区域（不清空书籍数据）
     * 用于连击三次确定键临时隐藏电子书区域，再次打开时直接显示正在阅读的书籍
     */
    private void hideEbookPanel() {
        Activity activity = host.getActivity();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null, cannot hide ebook panel");
            return;
        }

        Log.i(TAG_EBOOK, "开始隐藏电子书面板（不清空书籍数据）");

        // 立即保存当前阅读进度（取消防抖等待）
        saveReadingProgressImmediately();

        // 1. 隐藏灰色背景面板
        if (ebookPanel != null) {
            ebookPanel.setVisibility(View.GONE);
            Log.i(TAG_EBOOK, "灰色背景面板已隐藏");
        }

        // 2. 恢复视频全屏
        restoreVideoView(activity);

        // 关键：只更新状态，不清空书籍数据
        isEbookPanelShown = false;
        controlTarget = "video"; // 隐藏电子书时，重置为控制视频

        // 不清空书籍数据：currentBook、currentChapterIndex、currentBookFilePath等保持不变
        // 这样再次打开时可以直接显示正在阅读的书籍

        Log.i(TAG_EBOOK, "电子书面板已隐藏，书籍数据保留，controlTarget重置为video");
    }

    /**
     * 关闭电子书面板（完整清理）
     */
    private void closeEbookPanel() {
        Activity activity = host.getActivity();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null, cannot close ebook panel");
            return;
        }

        Log.i(TAG_EBOOK, "开始关闭电子书面板");

        // 关键优化：取消解析任务，避免后台线程持有Activity引用
        cancelParsingTask();

        // 立即保存当前阅读进度（取消防抖等待）
        saveReadingProgressImmediately();

        // 1. 隐藏灰色背景面板
        if (ebookPanel != null) {
            ebookPanel.setVisibility(View.GONE);
            Log.i(TAG_EBOOK, "灰色背景面板已隐藏");
        }

        // 2. 恢复视频全屏
        restoreVideoView(activity);

        // 关键修复：销毁WebView，避免内存泄漏
        destroyEbookWebView();

        // 关键修复：从父容器中移除电子书面板，彻底释放面板占用的View内存
        // 之前只setVisibility(GONE)，面板及子View一直常驻视图层级
        if (ebookPanel != null) {
            ViewGroup panelParent = (ViewGroup) ebookPanel.getParent();
            if (panelParent != null) {
                panelParent.removeView(ebookPanel);
                Log.i(TAG_EBOOK, "电子书面板已从父容器移除");
            }
            ebookPanel = null;
        }

        // 关键优化：清空章节缓存，释放内存
        clearChapterCache();

        // 关键修复：移除所有Handler回调，避免内存泄漏
        if (saveProgressHandler != null) {
            saveProgressHandler.removeCallbacksAndMessages(null);
            saveProgressHandler = null;
        }
        if (saveProgressRunnable != null) {
            saveProgressRunnable = null;
        }

        // 关键修复：清除所有电子书状态，避免影响后续视频播放
        isEbookPanelShown = false;
        isChapterListShown = false;
        isFileChooserShown = false;
        isLoadingEbook = false;
        isReadingBook = false; // 清除阅读状态
        currentBook = null;
        currentChapterIndex = 0;
        ebookWebView = null;

        // 关键优化：显式移除监听器，避免内存泄漏
        if (chapterListView != null) {
            chapterListView.setOnItemSelectedListener(null);
            chapterListView.setOnItemClickListener(null);
            chapterListView = null;
        }
        if (bookshelfListView != null) {
            bookshelfListView.setOnItemSelectedListener(null);
            bookshelfListView.setOnItemClickListener(null);
            bookshelfListView = null;
        }

        loadingProgressBar = null;
        loadingTextView = null;
        lastBackPressTime = 0;
        currentBookFilePath = null; // 清除文件路径
        controlTarget = "video"; // 退出电子书时，重置为控制视频

        // 关键修复：释放管理器持有的Activity强引用，避免Activity无法回收
        // BookshelfManager内部持有Context强引用（构造时传入的Activity）
        bookshelfManager = null;
        ebookCacheManager = null;
        bookshelfItems = null;

        Log.i(TAG_EBOOK, "电子书面板已关闭，所有状态已清除，controlTarget重置为video");
    }

    /**
     * 销毁WebView，释放内存
     * WebView是Android中著名的内存泄漏源，必须显式销毁
     */
    private void destroyEbookWebView() {
        if (ebookWebView != null) {
            Log.i(TAG_EBOOK, "开始销毁WebView，释放内存");

            // 1. 从父容器中移除WebView（必须在destroy之前）
            if (ebookPanel != null) {
                ebookPanel.removeView(ebookWebView);
                Log.i(TAG_EBOOK, "WebView已从父容器移除");
            }

            // 2. 清理WebView状态
            try {
                ebookWebView.stopLoading();
                ebookWebView.loadUrl("about:blank");
                ebookWebView.clearCache(true);
                ebookWebView.clearHistory();
                ebookWebView.removeAllViews();
                Log.i(TAG_EBOOK, "WebView缓存和历史已清除");
            } catch (Exception e) {
                Log.e(TAG_EBOOK, "清理WebView时发生异常: " + e.getMessage());
            }

            // 3. 销毁WebView
            try {
                ebookWebView.destroy();
                Log.i(TAG_EBOOK, "WebView已销毁");
            } catch (Exception e) {
                Log.e(TAG_EBOOK, "销毁WebView时发生异常: " + e.getMessage());
            }

            ebookWebView = null;
            Log.i(TAG_EBOOK, "WebView引用已清除");
        }
    }

    /**
     * 缩小弹幕视图到(100%-ebookPanelPercent)%宽度,与视频同步对齐
     * 直播：弹幕在LiveVideoPlayer内部随整体缩放，host.getDanmakuView()返回null时跳过
     */
    private void shrinkDanmakuView(Activity activity, int screenWidth, int screenHeight) {
        // 查找弹幕视图（直播返回null，直接跳过）
        View danmakuView = host.getDanmakuView();
        if (danmakuView == null) {
            Log.i(TAG_EBOOK, "无独立弹幕视图（直播弹幕随视频整体缩放），跳过弹幕缩放");
            return;
        }

        Log.i(TAG_EBOOK, "开始缩小弹幕视图");

        // 保存原始布局参数
        ViewGroup.MarginLayoutParams currentParams = (ViewGroup.MarginLayoutParams) danmakuView.getLayoutParams();
        originalDanmakuParams = new ViewGroup.LayoutParams(currentParams.width, currentParams.height);
        Log.i(TAG_EBOOK, "原始弹幕布局参数已保存: width=" + currentParams.width + ", height=" + currentParams.height);

        // 获取父容器
        ViewGroup parent = (ViewGroup) danmakuView.getParent();
        if (parent == null) {
            Log.e(TAG_EBOOK, "Danmaku view parent is null");
            return;
        }

        Log.i(TAG_EBOOK, "弹幕视图父容器: " + parent.getClass().getSimpleName());

        // 计算缩小后的宽度(100%-ebookPanelPercent)%)
        int danmakuWidth = screenWidth * (100 - ebookPanelPercent) / 100;

        // 根据视频位置设置对齐方式（弹幕与视频位置一致）
        boolean isVideoOnLeft = (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_BOTTOM_LEFT);

        // 根据父容器类型使用对应的LayoutParams
        ViewGroup.LayoutParams params;
        if (parent instanceof FrameLayout) {
            FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(danmakuWidth, ViewGroup.LayoutParams.MATCH_PARENT);

            // 设置对齐方式
            int gravity;
            if (isVideoOnLeft) {
                gravity = android.view.Gravity.LEFT;
                if (videoPosition == VIDEO_POSITION_TOP_LEFT) {
                    gravity |= android.view.Gravity.TOP;
                } else {
                    gravity |= android.view.Gravity.BOTTOM;
                }
            } else {
                gravity = android.view.Gravity.RIGHT;
                if (videoPosition == VIDEO_POSITION_TOP_RIGHT) {
                    gravity |= android.view.Gravity.TOP;
                } else {
                    gravity |= android.view.Gravity.BOTTOM;
                }
            }
            flParams.gravity = gravity;
            params = flParams;
        } else if (parent instanceof RelativeLayout) {
            RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(danmakuWidth, ViewGroup.LayoutParams.MATCH_PARENT);

            // 设置对齐规则
            if (isVideoOnLeft) {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
            } else {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
            }

            if (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_TOP_RIGHT) {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_TOP);
            } else {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
            }
            params = rlParams;
        } else {
            params = new ViewGroup.LayoutParams(danmakuWidth, ViewGroup.LayoutParams.MATCH_PARENT);
        }

        danmakuView.setLayoutParams(params);
        String positionName = (videoPositionList != null && videoPosition >= 0 && videoPosition < videoPositionList.size())
                             ? videoPositionList.get(videoPosition) : "左上";
        Log.i(TAG_EBOOK, "弹幕已缩小: " + danmakuWidth + "x" + screenHeight +
              ", 位置: " + positionName);
    }

    /**
     * 恢复视频全屏显示
     */
    private void restoreVideoView(Activity activity) {
        // 检查是否使用TextureView模式
        if (!host.isVideoTextureView()) {
            Log.w(TAG_EBOOK, "当前未使用TextureView模式,无需恢复");
            return;
        }

        // 获取视频视图
        View videoView = host.getVideoView();
        if (videoView == null) {
            Log.e(TAG_EBOOK, "视频视图为空");
            return;
        }

        // 获取父容器
        ViewGroup parent = (ViewGroup) videoView.getParent();
        if (parent == null) {
            Log.e(TAG_EBOOK, "Video view parent is null");
            return;
        }

        Log.i(TAG_EBOOK, "视频视图父容器: " + parent.getClass().getSimpleName());

        // 关键修复: 根据父容器类型使用匹配的LayoutParams恢复全屏
        ViewGroup.LayoutParams params;

        if (originalVideoParams != null) {
            // 有保存的原始参数,根据父容器类型重新创建
            if (parent instanceof FrameLayout) {
                FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(
                    originalVideoParams.width,
                    originalVideoParams.height
                );
                flParams.gravity = android.view.Gravity.CENTER;
                params = flParams;
                Log.i(TAG_EBOOK, "使用FrameLayout.LayoutParams恢复全屏");
            } else if (parent instanceof RelativeLayout) {
                RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(
                    originalVideoParams.width,
                    originalVideoParams.height
                );
                rlParams.addRule(RelativeLayout.CENTER_IN_PARENT);
                params = rlParams;
                Log.i(TAG_EBOOK, "使用RelativeLayout.LayoutParams恢复全屏");
            } else {
                params = new ViewGroup.LayoutParams(
                    originalVideoParams.width,
                    originalVideoParams.height
                );
                Log.i(TAG_EBOOK, "使用ViewGroup.LayoutParams恢复全屏");
            }

            videoView.setLayoutParams(params);
            Log.i(TAG_EBOOK, "视频已恢复原始布局");
        } else {
            // 没有保存原始参数,使用全屏布局
            if (parent instanceof FrameLayout) {
                FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(
                    FrameLayout.LayoutParams.MATCH_PARENT,
                    FrameLayout.LayoutParams.MATCH_PARENT
                );
                flParams.gravity = android.view.Gravity.CENTER;
                params = flParams;
                Log.i(TAG_EBOOK, "使用FrameLayout.LayoutParams恢复全屏(默认)");
            } else if (parent instanceof RelativeLayout) {
                RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(
                    RelativeLayout.LayoutParams.MATCH_PARENT,
                    RelativeLayout.LayoutParams.MATCH_PARENT
                );
                rlParams.addRule(RelativeLayout.CENTER_IN_PARENT);
                params = rlParams;
                Log.i(TAG_EBOOK, "使用RelativeLayout.LayoutParams恢复全屏(默认)");
            } else {
                params = new ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT
                );
                Log.i(TAG_EBOOK, "使用ViewGroup.LayoutParams恢复全屏(默认)");
            }

            videoView.setLayoutParams(params);
            Log.i(TAG_EBOOK, "视频已恢复全屏显示");
        }

        // 清空保存的原始参数
        originalVideoParams = null;

        // 同时恢复弹幕视图
        restoreDanmakuView(activity);
    }

    /**
     * 恢复弹幕视图到原始布局(全屏)
     */
    private void restoreDanmakuView(Activity activity) {
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null");
            return;
        }

        // 查找弹幕视图（直播返回null，直接跳过）
        View danmakuView = host.getDanmakuView();
        if (danmakuView == null) {
            Log.i(TAG_EBOOK, "无独立弹幕视图（直播弹幕随视频整体缩放），跳过弹幕恢复");
            return;
        }

        Log.i(TAG_EBOOK, "开始恢复弹幕视图布局");

        // 获取父容器
        ViewGroup parent = (ViewGroup) danmakuView.getParent();
        if (parent == null) {
            Log.e(TAG_EBOOK, "Danmaku view parent is null");
            return;
        }

        Log.i(TAG_EBOOK, "弹幕视图父容器: " + parent.getClass().getSimpleName());

        // 根据父容器类型使用匹配的LayoutParams恢复全屏
        ViewGroup.LayoutParams params;

        if (originalDanmakuParams != null) {
            // 有保存的原始参数,根据父容器类型重新创建
            if (parent instanceof FrameLayout) {
                FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(
                    originalDanmakuParams.width,
                    originalDanmakuParams.height
                );
                flParams.gravity = android.view.Gravity.CENTER;
                params = flParams;
                Log.i(TAG_EBOOK, "使用FrameLayout.LayoutParams恢复弹幕全屏");
            } else if (parent instanceof RelativeLayout) {
                RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(
                    originalDanmakuParams.width,
                    originalDanmakuParams.height
                );
                rlParams.addRule(RelativeLayout.CENTER_IN_PARENT);
                params = rlParams;
                Log.i(TAG_EBOOK, "使用RelativeLayout.LayoutParams恢复弹幕全屏");
            } else {
                params = new ViewGroup.LayoutParams(
                    originalDanmakuParams.width,
                    originalDanmakuParams.height
                );
                Log.i(TAG_EBOOK, "使用ViewGroup.LayoutParams恢复弹幕全屏");
            }

            danmakuView.setLayoutParams(params);
            Log.i(TAG_EBOOK, "弹幕已恢复原始布局");
        } else {
            // 没有保存原始参数,使用全屏布局
            if (parent instanceof FrameLayout) {
                FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(
                    FrameLayout.LayoutParams.MATCH_PARENT,
                    FrameLayout.LayoutParams.MATCH_PARENT
                );
                flParams.gravity = android.view.Gravity.CENTER;
                params = flParams;
                Log.i(TAG_EBOOK, "使用FrameLayout.LayoutParams恢复弹幕全屏(默认)");
            } else if (parent instanceof RelativeLayout) {
                RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(
                    RelativeLayout.LayoutParams.MATCH_PARENT,
                    RelativeLayout.LayoutParams.MATCH_PARENT
                );
                rlParams.addRule(RelativeLayout.CENTER_IN_PARENT);
                params = rlParams;
                Log.i(TAG_EBOOK, "使用RelativeLayout.LayoutParams恢复弹幕全屏(默认)");
            } else {
                params = new ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT
                );
                Log.i(TAG_EBOOK, "使用ViewGroup.LayoutParams恢复弹幕全屏(默认)");
            }

            danmakuView.setLayoutParams(params);
            Log.i(TAG_EBOOK, "弹幕已恢复全屏显示");
        }

        // 清空保存的原始参数
        originalDanmakuParams = null;
    }

    // ==================== 视频位置/屏幕占比应用 ====================

    /**
     * 应用视频位置
     */
    private void applyVideoPosition() {
        Activity activity = host.getActivity();
        if (activity == null || !isEbookPanelShown) {
            return;
        }

        android.util.DisplayMetrics metrics = new android.util.DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(metrics);
        int screenWidth = metrics.widthPixels;
        int screenHeight = metrics.heightPixels;

        int ebookWidth = screenWidth * ebookPanelPercent / 100;
        int videoWidth = screenWidth - ebookWidth;

        String positionName = (videoPositionList != null && videoPosition >= 0 && videoPosition < videoPositionList.size())
                             ? videoPositionList.get(videoPosition) : "左上";
        Log.i(TAG_EBOOK, "applyVideoPosition: 位置=" + positionName +
              ", ebookWidth=" + ebookWidth + ", videoWidth=" + videoWidth);

        // 更新视频视图位置
        updateVideoViewWidth(videoWidth);

        // 更新弹幕视图位置
        updateDanmakuViewWidth(videoWidth);

        // 更新CC字幕视图位置
        updateSubtitleViewWidth(videoWidth);

        // 更新电子书面板位置
        updateEbookPanelWidth(ebookWidth);
    }

    /**
     * 应用电子书屏幕占比
     */
    private void applyEbookPanelPercent() {
        Activity activity = host.getActivity();
        if (activity == null || !isEbookPanelShown) {
            return;
        }

        android.util.DisplayMetrics metrics = new android.util.DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(metrics);
        int screenWidth = metrics.widthPixels;
        int screenHeight = metrics.heightPixels;

        // 计算电子书区域宽度
        int ebookWidth = screenWidth * ebookPanelPercent / 100;
        int videoWidth = screenWidth - ebookWidth;

        Log.i(TAG_EBOOK, "applyEbookPanelPercent: percent=" + ebookPanelPercent +
              "%, ebookWidth=" + ebookWidth + ", videoWidth=" + videoWidth);

        // 更新视频视图布局
        updateVideoViewWidth(videoWidth);

        // 更新弹幕视图布局
        updateDanmakuViewWidth(videoWidth);

        // 更新CC字幕视图布局
        updateSubtitleViewWidth(videoWidth);

        // 更新电子书面板布局
        updateEbookPanelWidth(ebookWidth);
    }

    /**
     * 更新视频视图宽度
     */
    private void updateVideoViewWidth(int videoWidth) {
        View videoView = host.getVideoView();
        if (videoView == null) return;

        ViewGroup parent = (ViewGroup) videoView.getParent();
        if (parent == null) return;

        // 获取屏幕高度（直播模式缩小视频时需同步缩小高度，实现上下对齐）
        int screenHeight = 0;
        Activity activity = host.getActivity();
        if (activity != null) {
            android.util.DisplayMetrics metrics = new android.util.DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getMetrics(metrics);
            screenHeight = metrics.heightPixels;
        }
        int shrinkHeight = getShrinkVideoHeight(screenHeight);

        // 根据视频位置设置对齐方式
        boolean isVideoOnLeft = (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_BOTTOM_LEFT);

        ViewGroup.LayoutParams params;
        if (parent instanceof FrameLayout) {
            FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(
                videoWidth, shrinkHeight);

            int gravity;
            if (isVideoOnLeft) {
                gravity = android.view.Gravity.LEFT;
                if (videoPosition == VIDEO_POSITION_TOP_LEFT) {
                    gravity |= android.view.Gravity.TOP;
                } else {
                    gravity |= android.view.Gravity.BOTTOM;
                }
            } else {
                gravity = android.view.Gravity.RIGHT;
                if (videoPosition == VIDEO_POSITION_TOP_RIGHT) {
                    gravity |= android.view.Gravity.TOP;
                } else {
                    gravity |= android.view.Gravity.BOTTOM;
                }
            }
            flParams.gravity = gravity;
            params = flParams;
        } else if (parent instanceof RelativeLayout) {
            RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(
                videoWidth, shrinkHeight);

            if (isVideoOnLeft) {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
            } else {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
            }

            if (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_TOP_RIGHT) {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_TOP);
            } else {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
            }
            params = rlParams;
        } else {
            params = new ViewGroup.LayoutParams(videoWidth, shrinkHeight);
        }
        videoView.setLayoutParams(params);
        String positionName = (videoPositionList != null && videoPosition >= 0 && videoPosition < videoPositionList.size())
                             ? videoPositionList.get(videoPosition) : "左上";
        Log.i(TAG_EBOOK, "视频视图宽度已更新: " + videoWidth + ", 位置: " + positionName);
    }

    /**
     * 更新弹幕视图宽度
     */
    private void updateDanmakuViewWidth(int videoWidth) {
        // 查找弹幕视图并更新宽度
        Activity activity = host.getActivity();
        if (activity == null) return;

        ViewGroup rootView = (ViewGroup) activity.findViewById(android.R.id.content);
        if (rootView == null) return;

        // 查找弹幕容器（通常在播放器容器内）
        findAndUpdateDanmakuView(rootView, videoWidth);
    }

    /**
     * 查找并更新弹幕视图宽度
     */
    private void findAndUpdateDanmakuView(ViewGroup parent, int videoWidth) {
        for (int i = 0; i < parent.getChildCount(); i++) {
            View child = parent.getChildAt(i);

            // 检查是否是弹幕相关的容器（通过ID或类名）
            String className = child.getClass().getSimpleName();
            int childId = child.getId();
            // 注意：childId 可能是非资源 ID（如 View.generateViewId() 生成，弹幕容器查找时），查询资源名必须 try-catch
            String resourceName = "";
            if (childId > 0) {
                try {
                    resourceName = child.getResources().getResourceEntryName(childId);
                } catch (android.content.res.Resources.NotFoundException e) {
                    // 非资源 ID，忽略
                }
            }

            if (className.contains("Danmaku") || className.contains("弹幕") ||
                resourceName.contains("danmaku") || resourceName.contains("弹幕")) {

                ViewGroup.LayoutParams params = child.getLayoutParams();
                if (params != null) {
                    // 根据视频位置设置弹幕位置
                    boolean isVideoOnLeft = (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_BOTTOM_LEFT);

                    if (parent instanceof FrameLayout) {
                        FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(
                            videoWidth, FrameLayout.LayoutParams.MATCH_PARENT);

                        int gravity;
                        if (isVideoOnLeft) {
                            gravity = android.view.Gravity.LEFT;
                            if (videoPosition == VIDEO_POSITION_TOP_LEFT) {
                                gravity |= android.view.Gravity.TOP;
                            } else {
                                gravity |= android.view.Gravity.BOTTOM;
                            }
                        } else {
                            gravity = android.view.Gravity.RIGHT;
                            if (videoPosition == VIDEO_POSITION_TOP_RIGHT) {
                                gravity |= android.view.Gravity.TOP;
                            } else {
                                gravity |= android.view.Gravity.BOTTOM;
                            }
                        }
                        flParams.gravity = gravity;
                        child.setLayoutParams(flParams);
                    } else if (parent instanceof RelativeLayout) {
                        RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(
                            videoWidth, RelativeLayout.LayoutParams.MATCH_PARENT);

                        if (isVideoOnLeft) {
                            rlParams.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
                        } else {
                            rlParams.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
                        }

                        if (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_TOP_RIGHT) {
                            rlParams.addRule(RelativeLayout.ALIGN_PARENT_TOP);
                        } else {
                            rlParams.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
                        }
                        child.setLayoutParams(rlParams);
                    }
                }
            }

            // 递归查找
            if (child instanceof ViewGroup) {
                findAndUpdateDanmakuView((ViewGroup) child, videoWidth);
            }
        }
    }

    /**
     * 更新CC字幕视图宽度
     */
    private void updateSubtitleViewWidth(int videoWidth) {
        // 查找CC字幕视图并更新宽度
        Activity activity = host.getActivity();
        if (activity == null) return;

        ViewGroup rootView = (ViewGroup) activity.findViewById(android.R.id.content);
        if (rootView == null) return;

        // 查找字幕容器
        findAndUpdateSubtitleView(rootView, videoWidth);
    }

    /**
     * 查找并更新CC字幕视图宽度
     */
    private void findAndUpdateSubtitleView(ViewGroup parent, int videoWidth) {
        for (int i = 0; i < parent.getChildCount(); i++) {
            View child = parent.getChildAt(i);

            // 检查是否是字幕相关的容器（通过类名、完整类名或ID）
            String className = child.getClass().getSimpleName();
            String fullClassName = child.getClass().getName();
            int childId = child.getId();
            // 注意：childId 可能是非资源 ID（如 View.generateViewId() 生成，字幕容器查找时），查询资源名必须 try-catch
            String resourceName = "";
            if (childId > 0) {
                try {
                    resourceName = child.getResources().getResourceEntryName(childId);
                } catch (android.content.res.Resources.NotFoundException e) {
                    // 非资源 ID，忽略
                }
            }

            if (className.contains("Subtitle") || className.contains("字幕") ||
                fullClassName.contains("Subtitle") || fullClassName.contains("subtitle") ||
                resourceName.contains("subtitle") || resourceName.contains("字幕") ||
                resourceName.contains("exo_subtitles")) {

                ViewGroup.LayoutParams params = child.getLayoutParams();
                if (params != null) {
                    // 根据视频位置设置字幕位置
                    boolean isVideoOnLeft = (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_BOTTOM_LEFT);

                    if (parent instanceof FrameLayout) {
                        FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(
                            videoWidth, FrameLayout.LayoutParams.MATCH_PARENT);

                        int gravity;
                        if (isVideoOnLeft) {
                            gravity = android.view.Gravity.LEFT;
                            if (videoPosition == VIDEO_POSITION_TOP_LEFT) {
                                gravity |= android.view.Gravity.TOP;
                            } else {
                                gravity |= android.view.Gravity.BOTTOM;
                            }
                        } else {
                            gravity = android.view.Gravity.RIGHT;
                            if (videoPosition == VIDEO_POSITION_TOP_RIGHT) {
                                gravity |= android.view.Gravity.TOP;
                            } else {
                                gravity |= android.view.Gravity.BOTTOM;
                            }
                        }
                        flParams.gravity = gravity;
                        child.setLayoutParams(flParams);
                    } else if (parent instanceof RelativeLayout) {
                        RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(
                            videoWidth, RelativeLayout.LayoutParams.MATCH_PARENT);

                        if (isVideoOnLeft) {
                            rlParams.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
                        } else {
                            rlParams.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
                        }

                        if (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_TOP_RIGHT) {
                            rlParams.addRule(RelativeLayout.ALIGN_PARENT_TOP);
                        } else {
                            rlParams.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
                        }
                        child.setLayoutParams(rlParams);
                    }
                }
            }

            // 递归查找
            if (child instanceof ViewGroup) {
                findAndUpdateSubtitleView((ViewGroup) child, videoWidth);
            }
        }
    }

    /**
     * 更新电子书面板宽度
     */
    private void updateEbookPanelWidth(int ebookWidth) {
        if (ebookPanel == null) return;

        ViewGroup parent = (ViewGroup) ebookPanel.getParent();
        if (parent == null) return;

        // 根据视频位置决定电子书面板位置（与视频相反）
        boolean isVideoOnLeft = (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_BOTTOM_LEFT);

        ViewGroup.LayoutParams params;
        if (parent instanceof FrameLayout) {
            FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(
                ebookWidth, FrameLayout.LayoutParams.MATCH_PARENT);
            flParams.gravity = isVideoOnLeft ? android.view.Gravity.RIGHT : android.view.Gravity.LEFT;
            params = flParams;
        } else if (parent instanceof RelativeLayout) {
            RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(
                ebookWidth, RelativeLayout.LayoutParams.MATCH_PARENT);
            if (isVideoOnLeft) {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
            } else {
                rlParams.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
            }
            params = rlParams;
        } else {
            params = new ViewGroup.LayoutParams(ebookWidth, ViewGroup.LayoutParams.MATCH_PARENT);
        }
        ebookPanel.setLayoutParams(params);
        Log.i(TAG_EBOOK, "电子书面板宽度已更新: " + ebookWidth +
              ", 位置: " + (isVideoOnLeft ? "右侧" : "左侧"));
    }

    // ==================== 翻页与进度保存 ====================

    /**
     * 处理翻页操作（用于触摸事件和按键事件）
     * @param turnForward true = 向前翻页（左键逻辑），false = 向后翻页（右键逻辑）
     */
    private void handlePageTurn(boolean turnForward) {
        if (ebookWebView == null) {
            Log.e(TAG_EBOOK, "handlePageTurn: WebView为空");
            return;
        }

        int height = ebookWebView.getHeight();
        int scrollY = ebookWebView.getScrollY();
        int contentHeight = ebookWebView.getContentHeight();

        if (turnForward) {
            // 向前翻页（左键逻辑）
            Log.i(TAG_EBOOK, "handlePageTurn: 向前翻页, height=" + height + ", scrollY=" + scrollY);

            // 检查是否在章节顶部
            if (scrollY == 0) {
                // 已经在章节顶部，检查是否有上一章节
                if (currentBook != null && currentChapterIndex > 0) {
                    Log.i(TAG_EBOOK, "handlePageTurn: 到达章节顶部，跳转到上一章节的底部");
                    displayBookContent(currentBook, currentChapterIndex - 1, true);
                    return;
                } else {
                    Log.i(TAG_EBOOK, "handlePageTurn: 已经在第一章，无法向前翻页");
                    return;
                }
            }

            // 正常翻页：计算重叠高度（保留12.5%的内容，约2-3行）
            if (height > 0) {
                int overlapHeight = (int)(height * 0.125);
                int pageHeight = height - overlapHeight;
                Log.i(TAG_EBOOK, "handlePageTurn: 向前翻页: height=" + height + ", overlapHeight=" + overlapHeight + ", pageHeight=" + pageHeight);
                ebookWebView.scrollBy(0, -pageHeight);
            } else {
                // 如果height为0，使用默认值800
                Log.w(TAG_EBOOK, "handlePageTurn: WebView height为0，使用默认值800");
                ebookWebView.scrollBy(0, -800);
            }
            scheduleSaveReadingProgress(); // 防抖保存进度
        } else {
            // 向后翻页（右键逻辑）
            Log.i(TAG_EBOOK, "handlePageTurn: 向后翻页, height=" + height + ", scrollY=" + scrollY + ", contentHeight=" + contentHeight);

            // 检查是否在章节底部（考虑WebView的缩放）
            // contentHeight是HTML内容高度，需要乘以密度才能和scrollY比较
            Activity activity = host.getActivity();
            float density = (activity != null)
                ? activity.getResources().getDisplayMetrics().density
                : 1.0f;
            int contentHeightPx = (int) (contentHeight * density);

            // 修改：计算重叠高度后，章节底部的判断也要相应调整
            int overlapHeight = (int)(height * 0.125);
            int pageHeight = height - overlapHeight;
            boolean isAtBottom = (scrollY + height >= contentHeightPx - 10); // -10像素容差

            if (isAtBottom) {
                // 已经在章节底部，检查是否有下一章节
                if (currentBook != null && currentChapterIndex < currentBook.getChapters().size() - 1) {
                    Log.i(TAG_EBOOK, "handlePageTurn: 到达章节底部，跳转到下一章节的顶部");
                    displayBookContent(currentBook, currentChapterIndex + 1, false);
                    return;
                } else {
                    Log.i(TAG_EBOOK, "handlePageTurn: 已经在最后一章，无法向后翻页");
                    return;
                }
            }

            // 正常翻页：计算重叠高度（保留12.5%的内容，约2-3行）
            if (height > 0) {
                Log.i(TAG_EBOOK, "handlePageTurn: 向后翻页: height=" + height + ", overlapHeight=" + overlapHeight + ", pageHeight=" + pageHeight);
                ebookWebView.scrollBy(0, pageHeight);
            } else {
                // 如果height为0，使用默认值800
                Log.w(TAG_EBOOK, "handlePageTurn: WebView height为0，使用默认值800");
                ebookWebView.scrollBy(0, 800);
            }
            scheduleSaveReadingProgress(); // 防抖保存进度
        }
    }

    /**
     * 管理章节缓存，释放早期章节内容
     * 性能优化：限制缓存的章节数量，避免内存占用随阅读进度增长
     */
    private void manageChapterCache(Chapter newChapter) {
        // 如果章节已在缓存中，移动到最前面（LRU策略）
        if (cachedChapters.contains(newChapter)) {
            cachedChapters.remove(newChapter);
            cachedChapters.addFirst(newChapter);
            return;
        }

        // 添加新章节到缓存列表
        cachedChapters.addFirst(newChapter);
        Log.i(TAG_EBOOK, "章节加入缓存: " + newChapter.getTitle() +
              ", 当前缓存数: " + cachedChapters.size());

        // 超出限制时释放最早章节
        if (cachedChapters.size() > MAX_CACHED_CHAPTERS) {
            Chapter oldest = cachedChapters.removeLast();
            oldest.setHtmlContent(null); // 释放HTML内容
            oldest.setPlainTextContent(null); // 释放纯文本内容
            Log.i(TAG_EBOOK, "释放早期章节内容: " + oldest.getTitle());
        }
    }

    /**
     * 清空所有章节缓存
     */
    private void clearChapterCache() {
        for (Chapter chapter : cachedChapters) {
            chapter.setHtmlContent(null);
            chapter.setPlainTextContent(null);
        }
        cachedChapters.clear();
        Log.i(TAG_EBOOK, "所有章节缓存已清空");
    }

    /**
     * 从HTML文件加载章节内容（延迟加载）
     * 性能优化：只在需要时才加载章节内容，避免一次性加载所有章节
     */
    private String loadChapterContentFromFile(Chapter chapter, String extractionPath) {
        try {
            String htmlFilePath = chapter.getHtmlFilePath();
            String baseUrl = chapter.getBaseUrl();

            if (htmlFilePath == null || htmlFilePath.isEmpty()) {
                Log.w(TAG_EBOOK, "章节HTML文件路径为空: " + chapter.getTitle());
                return null;
            }

            // 从extractionPath和htmlFilePath构建文件路径
            java.io.File extractionDir = new java.io.File(extractionPath);

            // 尝试三种方式查找文件
            java.io.File chapterFile = null;

            // 方式1：从baseUrl提取目录路径
            if (baseUrl != null && !baseUrl.isEmpty()) {
                String dirPath = baseUrl.replace("file://", "").replaceAll("/$", "");
                chapterFile = new java.io.File(dirPath, new java.io.File(htmlFilePath).getName());
            }

            // 方式2：在extractionDir下查找
            if (chapterFile == null || !chapterFile.exists()) {
                chapterFile = new java.io.File(extractionDir, htmlFilePath);
            }

            // 方式3：递归搜索（最慢，但最可靠）
            if (!chapterFile.exists()) {
                chapterFile = findFileRecursively(extractionDir, new java.io.File(htmlFilePath).getName());
            }

            if (chapterFile != null && chapterFile.exists()) {
                // 使用Jsoup解析HTML文件
                org.jsoup.nodes.Document doc = org.jsoup.Jsoup.parse(chapterFile, "UTF-8");
                String htmlContent = doc.outerHtml();

                // 缓存到章节对象中，避免下次重新加载
                chapter.setHtmlContent(htmlContent);
                chapter.setPlainTextContent(doc.text());

                // 关键优化：管理章节缓存，释放早期章节内容
                manageChapterCache(chapter);

                Log.i(TAG_EBOOK, "延迟加载章节内容成功: " + chapter.getTitle() +
                      ", html长度: " + htmlContent.length());
                return htmlContent;
            } else {
                Log.w(TAG_EBOOK, "章节文件不存在: " + htmlFilePath +
                      ", extractionPath: " + extractionPath);
                return null;
            }

        } catch (Exception e) {
            Log.e(TAG_EBOOK, "延迟加载章节内容失败: " + chapter.getTitle(), e);
            return null;
        }
    }

    /**
     * 递归查找文件（用于处理章节文件在不同子目录中的情况）
     */
    private java.io.File findFileRecursively(java.io.File dir, String fileName) {
        if (!dir.isDirectory()) {
            return null;
        }

        // 先检查当前目录
        java.io.File file = new java.io.File(dir, fileName);
        if (file.exists()) {
            return file;
        }

        // 递归搜索子目录
        java.io.File[] children = dir.listFiles();
        if (children != null) {
            for (java.io.File child : children) {
                if (child.isDirectory()) {
                    java.io.File found = findFileRecursively(child, fileName);
                    if (found != null) {
                        return found;
                    }
                }
            }
        }

        return null;
    }

    /**
     * 保存当前阅读进度
     */
    private void saveReadingProgress() {
        if (currentBook == null || ebookCacheManager == null || ebookWebView == null) {
            return;
        }

        try {
            // 创建ReadingProgress对象
            ReadingProgress progress = new ReadingProgress(currentBook.getBookId());

            progress.setCurrentChapterIndex(currentChapterIndex);
            progress.setLastReadTimestamp(System.currentTimeMillis());

            // 计算阅读进度百分比
            if (currentBook.getChapters() != null && !currentBook.getChapters().isEmpty()) {
                float percentage = (currentChapterIndex * 100.0f) / currentBook.getChapters().size();
                progress.setProgressPercentage(percentage);
            }

            // 计算当前页码（基于滚动位置）
            int scrollY = ebookWebView.getScrollY();
            int height = ebookWebView.getHeight();
            int page = scrollY / Math.max(height, 1);
            progress.setCurrentPage(page);

            // 保存字体大小（暂时使用默认值）
            progress.setFontSize(16);

            // 保存到缓存
            ebookCacheManager.saveReadingProgress(progress);

            // 同步更新书架项（chapterIndex/chapterTitle/progressPercentage/lastReadTime），
            // 保证书架列表显示的进度与阅读进度一致
            try {
                if (currentBookFilePath != null) {
                    if (bookshelfManager == null) {
                        bookshelfManager = new BookshelfManager(host.getActivity());
                    }
                    bookshelfManager.addToBookshelf(currentBook, progress, currentBookFilePath);
                }
            } catch (Throwable th) {
                Log.e(TAG_EBOOK, "同步更新书架失败: " + th.getMessage());
            }

            Log.i(TAG_EBOOK, "阅读进度已保存: 章节=" + currentChapterIndex +
                  ", 页码=" + page + ", 进度=" + progress.getProgressPercentage() + "%");
        } catch (Exception e) {
            Log.e(TAG_EBOOK, "保存阅读进度失败: " + e.getMessage());
        }
    }

    /**
     * 防抖保存阅读进度（用于翻页和章节跳转后自动保存）
     * 使用防抖机制，300ms内无新操作才真正保存，避免频繁写入
     */
    private void scheduleSaveReadingProgress() {
        // 初始化Handler（懒加载）
        if (saveProgressHandler == null) {
            saveProgressHandler = new SaveProgressHandler(this);
        }

        // 取消之前的待保存任务（防抖）
        if (saveProgressRunnable != null) {
            saveProgressHandler.removeCallbacks(saveProgressRunnable);
        }

        // 创建新的保存任务
        saveProgressRunnable = new Runnable() {
            @Override
            public void run() {
                saveReadingProgress();
                saveProgressRunnable = null; // 清除引用
            }
        };

        // 延迟300ms后执行
        saveProgressHandler.postDelayed(saveProgressRunnable, SAVE_PROGRESS_DELAY_MS);
        Log.d(TAG_EBOOK, "已调度防抖保存阅读进度，延迟 " + SAVE_PROGRESS_DELAY_MS + "ms");
    }

    /**
     * 立即保存阅读进度（取消防抖等待，直接保存）
     */
    private void saveReadingProgressImmediately() {
        // 取消所有待保存任务
        if (saveProgressHandler != null && saveProgressRunnable != null) {
            saveProgressHandler.removeCallbacks(saveProgressRunnable);
            saveProgressRunnable = null;
        }

        // 立即保存
        saveReadingProgress();
    }

    /**
     * 恢复上次阅读进度
     */
    private void restoreReadingProgress(Book book) {
        if (book == null || ebookCacheManager == null) {
            return;
        }

        try {
            ReadingProgress progress = ebookCacheManager.getReadingProgress(book.getBookId());

            if (progress != null) {
                int savedChapterIndex = progress.getCurrentChapterIndex();
                int savedPage = progress.getCurrentPage();

                // 验证章节索引是否有效
                if (savedChapterIndex >= 0 && book.getChapters() != null &&
                    savedChapterIndex < book.getChapters().size()) {
                    Log.i(TAG_EBOOK, "恢复阅读进度: 章节=" + savedChapterIndex + ", 页码=" + savedPage);
                    // 传递页码参数，恢复到具体位置
                    displayBookContent(book, savedChapterIndex, false, savedPage);
                } else {
                    Log.w(TAG_EBOOK, "保存的章节索引无效: " + savedChapterIndex);
                    displayBookContent(book, 0);
                }

                // 添加到书架（更新进度）
                addToBookshelf(book, progress);
            } else {
                Log.i(TAG_EBOOK, "无保存的阅读进度，从第一章开始");
                displayBookContent(book, 0);

                // 添加到书架（新书籍）
                addToBookshelf(book, null);
            }
        } catch (Exception e) {
            Log.e(TAG_EBOOK, "恢复阅读进度失败: " + e.getMessage());
            displayBookContent(book, 0);
        }
    }

    /**
     * 添加书籍到书架
     */
    private void addToBookshelf(Book book, ReadingProgress progress) {
        if (book == null || bookshelfManager == null) {
            return;
        }

        // 添加到书架（使用当前文件路径）
        bookshelfManager.addToBookshelf(book, progress, currentBookFilePath);
    }

    // ==================== 书籍删除辅助 ====================

    /**
     * 删除书籍的本地缓存文件
     * 包括EPUB/MOBI解压目录和元数据缓存文件
     */
    private void deleteBookCacheFiles(String bookId) {
        Context context = host.getContext();
        if (bookId == null || context == null) {
            Log.w(TAG_EBOOK, "bookId或Context为空，无法删除缓存");
            return;
        }

        try {
            java.io.File cacheDir = context.getCacheDir();
            int deletedFiles = 0;
            long deletedSize = 0;

            // 1. 删除EPUB缓存目录
            java.io.File epubCacheDir = new java.io.File(cacheDir, "epub_cache/" + bookId);
            if (epubCacheDir.exists()) {
                long size = getDirectorySize(epubCacheDir);
                if (deleteDirectory(epubCacheDir)) {
                    deletedFiles++;
                    deletedSize += size;
                    Log.i(TAG_EBOOK, "已删除EPUB缓存目录: " + epubCacheDir.getAbsolutePath() +
                          ", 大小: " + formatFileSize(size));
                }
            }

            // 2. 删除MOBI缓存目录
            java.io.File mobiCacheDir = new java.io.File(cacheDir, "mobi_resources/" + bookId);
            if (mobiCacheDir.exists()) {
                long size = getDirectorySize(mobiCacheDir);
                if (deleteDirectory(mobiCacheDir)) {
                    deletedFiles++;
                    deletedSize += size;
                    Log.i(TAG_EBOOK, "已删除MOBI缓存目录: " + mobiCacheDir.getAbsolutePath() +
                          ", 大小: " + formatFileSize(size));
                }
            }

            // 3. 删除EPUB元数据缓存文件
            java.io.File epubMetadataFile = new java.io.File(cacheDir, "epub_cache/" + bookId + "/metadata.json");
            if (epubMetadataFile.exists()) {
                long size = epubMetadataFile.length();
                if (epubMetadataFile.delete()) {
                    deletedFiles++;
                    deletedSize += size;
                    Log.i(TAG_EBOOK, "已删除EPUB元数据缓存: " + epubMetadataFile.getAbsolutePath());
                }
            }

            // 4. 删除MOBI元数据缓存文件
            java.io.File mobiMetadataFile = new java.io.File(cacheDir, "mobi_resources/" + bookId + "/metadata.json");
            if (mobiMetadataFile.exists()) {
                long size = mobiMetadataFile.length();
                if (mobiMetadataFile.delete()) {
                    deletedFiles++;
                    deletedSize += size;
                    Log.i(TAG_EBOOK, "已删除MOBI元数据缓存: " + mobiMetadataFile.getAbsolutePath());
                }
            }

            Log.i(TAG_EBOOK, "缓存文件删除完成: " + deletedFiles + " 个目录/文件, 共 " + formatFileSize(deletedSize));

        } catch (Exception e) {
            Log.e(TAG_EBOOK, "删除缓存文件失败: " + bookId, e);
        }
    }

    /**
     * 递归删除目录及其内容
     */
    private boolean deleteDirectory(java.io.File directory) {
        if (directory == null || !directory.exists()) {
            return false;
        }

        if (directory.isDirectory()) {
            java.io.File[] files = directory.listFiles();
            if (files != null) {
                for (java.io.File file : files) {
                    deleteDirectory(file);
                }
            }
        }

        return directory.delete();
    }

    /**
     * 计算目录大小
     */
    private long getDirectorySize(java.io.File directory) {
        if (directory == null || !directory.exists()) {
            return 0;
        }

        long size = 0;
        if (directory.isDirectory()) {
            java.io.File[] files = directory.listFiles();
            if (files != null) {
                for (java.io.File file : files) {
                    size += getDirectorySize(file);
                }
            }
        } else {
            size = directory.length();
        }

        return size;
    }

    /**
     * 格式化文件大小
     */
    private String formatFileSize(long size) {
        if (size < 1024) {
            return size + " B";
        } else if (size < 1024 * 1024) {
            return String.format("%.2f KB", size / 1024.0);
        } else if (size < 1024 * 1024 * 1024) {
            return String.format("%.2f MB", size / (1024.0 * 1024));
        } else {
            return String.format("%.2f GB", size / (1024.0 * 1024 * 1024));
        }
    }

    /**
     * 显示删除单本书籍的确认对话框
     */
    private void showRemoveBookDialog(final BookshelfItem item, final int position) {
        Activity activity = host.getActivity();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null");
            return;
        }

        // 显示确认对话框（样式与清空书架一致）
        agb.a dialogBuilder = new agb.a(activity);
        dialogBuilder.a(1).a("确认删除此书？")
            .a(activity.getString(R.string.confirm), new agb.b() {
                @Override
                public void a(agb dialog, View view) {
                    // 清除该书籍的阅读进度
                    if (ebookCacheManager != null && item.getBookId() != null) {
                        ebookCacheManager.clearReadingProgress(item.getBookId());
                        Log.i(TAG_EBOOK, "已清除阅读进度: " + item.getBookId());
                    }

                    // 删除本地缓存文件
                    deleteBookCacheFiles(item.getBookId());

                    // 从书架中移除
                    if (bookshelfManager != null) {
                        bookshelfManager.removeFromBookshelf(item.getBookId());
                        Log.i(TAG_EBOOK, "已从书架移除: " + item.getTitle());
                    }

                    // 从列表中移除
                    if (bookshelfItems != null && position >= 0 && position < bookshelfItems.size()) {
                        bookshelfItems.remove(position);
                    }

                    // 刷新书架显示
                    showBookshelfOrFileChooser();

                    // 显示提示
                    host.showToast("已删除: " + item.getTitle());

                    dialog.dismiss();
                }
            })
            .b(activity.getString(R.string.cancel), new agb.b() {
                @Override
                public void a(agb dialog, View view) {
                    dialog.dismiss();
                }
            });
        dialogBuilder.a().show();
    }
}
