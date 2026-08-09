package bl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Message;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.bilibili.lib.media.resource.MediaResource;
import com.bilibili.lib.media.resource.PlayIndex;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.player.interfaces.IEventCenter;
import com.bilibili.tv.player.widget.PlayerMenuRight;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.videoplayer.core.videoview.AspectRatio;
import tv.danmaku.videoplayer.core.media.exo.AudioBalanceLevel;
import tv.danmaku.videoplayer.core.context.IPlayerContext;
import tv.danmaku.videoplayer.core.videoview.IVideoView;

/* compiled from: BL */
/* loaded from: classes.dex */
public class xw extends xh implements bbb<Message, Boolean>, PlayerMenuRight.a {
    private PlayerMenuRight c;
    private List<String> d;
    private int e;
    private boolean f;

    // 电子书阅读器相关
    private static final String TAG_EBOOK = "EbookReader";
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
    private com.bilibili.tv.ebook.model.Book currentBook = null; // 当前书籍
    private int currentChapterIndex = 0; // 当前章节索引
    private android.webkit.WebView ebookWebView = null; // 电子书WebView
    private android.widget.ListView chapterListView = null; // 章节列表View（使用ListView替代RecyclerView）
    private boolean isChapterListShown = false; // 章节列表是否显示
    private com.bilibili.tv.ebook.util.EbookCacheManager ebookCacheManager = null; // 电子书缓存管理器
    private com.bilibili.tv.ebook.util.BookshelfManager bookshelfManager = null; // 书架管理器
    private android.widget.ListView bookshelfListView = null; // 书架列表View
    private List<com.bilibili.tv.ebook.model.BookshelfItem> bookshelfItems = null; // 书架数据
    private String currentBookFilePath = null; // 当前书籍文件路径

    // 章节内容LRU缓存管理（避免内存占用随阅读进度增长）
    private static final int MAX_CACHED_CHAPTERS = 5; // 最多缓存5个章节
    private java.util.LinkedList<com.bilibili.tv.ebook.model.Chapter> cachedChapters = new java.util.LinkedList<>();

    // 静态Handler内部类，避免内存泄漏
    private static class SaveProgressHandler extends android.os.Handler {
        private java.lang.ref.WeakReference<xw> fragmentRef;

        SaveProgressHandler(xw fragment) {
            fragmentRef = new java.lang.ref.WeakReference<>(fragment);
        }

        @Override
        public void handleMessage(android.os.Message msg) {
            xw fragment = fragmentRef.get();
            if (fragment != null && fragment.o() != null) {
                fragment.saveReadingProgress();
            }
        }
    }

    // 多级章节导航栈（方案1：电子书区域ListView显示）
    private java.util.Stack<List<com.bilibili.tv.ebook.model.Chapter>> chapterNavigationStack = null; // 章节导航栈
    private List<com.bilibili.tv.ebook.model.Chapter> currentChapterList = null; // 当前显示的章节列表
    private String parentChapterTitle = null; // 父章节标题（用于显示在章节列表标题中）

    // 遥控器控制目标（ebook 或 video）
    private String controlTarget = "video"; // 默认控制视频（因为未打开电子书时视频全屏播放）
    private int ebookPanelPercent = 30; // 电子书屏幕占比，默认30%
    
    // 视频位置（左上、左下、右上、右下）
    private static final int VIDEO_POSITION_TOP_LEFT = 0;     // 左上：视频左上角对齐，电子书在右侧
    private static final int VIDEO_POSITION_BOTTOM_LEFT = 1;  // 左下：视频左下角对齐，电子书在右侧
    private static final int VIDEO_POSITION_TOP_RIGHT = 2;    // 右上：视频右上角对齐，电子书在左侧
    private static final int VIDEO_POSITION_BOTTOM_RIGHT = 3; // 右下：视频右下角对齐，电子书在左侧
    private int videoPosition = VIDEO_POSITION_TOP_LEFT; // 默认左上
    private List<String> videoPositionList = null; // 视频位置选项列表
    
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

    private Runnable g = new Runnable() { // from class: bl.xw.1
        @Override // java.lang.Runnable
        public void run() {
            xw.this.a(IEventCenter.EventType.MENU_QUICK_SHOW, new Object[0]);
            xw.this.d(true);
        }
    };

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    public boolean onInfo2(IMediaPlayer iMediaPlayer, int i, int i2, long j) {
        return false;
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void adjust_screen(int type) {
        a(IEventCenter.EventType.SCREEN_ADJUST, Integer.valueOf(type));
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void switch_speed(float f) {
        a(IEventCenter.EventType.SWITCH_SPEED, Float.valueOf(f));
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void refresh_subtitle() {
        a(IEventCenter.EventType.SWITCH_EPISODE, new Object[0]);
    }

    @Override // bl.xh
    protected boolean e(int i, KeyEvent keyEvent) {
        return R();
    }

    @Override // bl.xh
    public void a(Activity activity, xf xfVar) {
        super.a(activity, xfVar);
        xfVar.a(3, (bbb<? super Message, Boolean>) this);
    }

    @Override // bl.bbb
    public Boolean a(Message message) {
        if (message.what == 3) {
            int i = ((Boolean) message.obj).booleanValue()?0:1;
            if (this.c != null) {
                this.c.a(3, i, 300L);
                if (R()) {
                    d(false);
                }
            }
        }
        return Boolean.FALSE;
    }

    @Override // bl.xh
    public void b(IEventCenter.EventType eventType, Object... objArr) {
        int T;

        // 关键修复：监听视频切换事件，保持视频缩小状态
        // 当电子书区域打开时，视频切换后需要重新应用缩小布局
        if (eventType == IEventCenter.EventType.QUALITY_SWITCH_SUCCESS ||
            eventType == IEventCenter.EventType.EPISODE_SWITCH_SUCCESS ||
            eventType == IEventCenter.EventType.SWITCH_EPISODE) {

            // 检查电子书区域是否打开
            if (isEbookPanelShown) {
                Log.i(TAG_EBOOK, "视频切换事件: " + eventType + ", 电子书区域已打开，重新应用视频缩小");
                Activity activity = o();
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

        if (eventType == IEventCenter.EventType.QUALITY_SWITCH_SUCCESS && (T = T()) > 0 && this.c != null) {
            this.c.a(2, T, 0L);
            if (R()) {
                d(false);
            }
        }
        super.b(eventType, objArr);
    }

    @Override // bl.xh
    public void a(int requestCode, int resultCode, Intent data) {
        super.a(requestCode, resultCode, data);
    }

    @Override // bl.xh
    public boolean f(int keyCode, KeyEvent event) {
        Log.i(TAG_EBOOK, "xw.f: 收到按键 " + keyCode + ", isEbookPanelShown=" + isEbookPanelShown + ", controlTarget=" + controlTarget + ", R()=" + R());

        // 连击三次确定键关闭电子书区域（不论焦点在视频还是电子书区域）
        // 必须在检查controlTarget之前处理，确保在任何页面都能响应
        if (isEbookPanelShown && (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER || keyCode == KeyEvent.KEYCODE_NUMPAD_ENTER)) {
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
            // 不立即处理，等待可能的三连击
            return R();
        }

        // 关键修复：只在控制电子书时才处理按键
        if (!controlTarget.equals("ebook")) {
            Log.i(TAG_EBOOK, "xw.f: 控制目标不是电子书，不处理按键");
            return R(); // 如果菜单显示，返回true；否则返回false
        }

        // 电子书阅读内容页面：处理方向键
        if (isEbookReadingContent()) {
            Log.i(TAG_EBOOK, "xw.f: 在电子书阅读内容页面");

            // 关键调试：输出WebView状态
            if (ebookWebView != null) {
                Log.i(TAG_EBOOK, "xw.f: WebView height=" + ebookWebView.getHeight() + 
                      ", scrollY=" + ebookWebView.getScrollY() + 
                      ", contentHeight=" + ebookWebView.getContentHeight());
            }

            // 上下键：按距离滚动
            if (keyCode == KeyEvent.KEYCODE_DPAD_UP) {
                Log.i(TAG_EBOOK, "xw.f: 电子书阅读页面：向上滚动");
                ebookWebView.scrollBy(0, -200);
                scheduleSaveReadingProgress(); // 防抖保存进度
                return true;
            }

            if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                Log.i(TAG_EBOOK, "xw.f: 电子书阅读页面：向下滚动");
                ebookWebView.scrollBy(0, 200);
                scheduleSaveReadingProgress(); // 防抖保存进度
                return true;
            }

            // 左右键：整页翻页（使用scrollBy代替pageUp/pageDown）
            // 修改：实现重叠式翻页，保留一部分内容避免错过上下文
            if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT) {
                Log.i(TAG_EBOOK, "xw.f: 电子书阅读页面：向上翻页（左键）");
                handlePageTurn(true); // true = 向前翻页
                return true;
            }

            if (keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                Log.i(TAG_EBOOK, "xw.f: 电子书阅读页面：向下翻页（右键）");
                handlePageTurn(false); // false = 向后翻页
                return true;
            }
        }

        // 长按确认键处理：只在电子书书架页面响应（用于删除书籍）
        // 其他页面（视频播放、电子书阅读）不响应长按确认键
        boolean isBookshelfPage = isEbookPanelShown && controlTarget.equals("ebook") &&
                                   (ebookWebView == null || !ebookWebView.isShown()) &&
                                   bookshelfListView != null && bookshelfListView.isShown();

        if ((keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER || keyCode == KeyEvent.KEYCODE_NUMPAD_ENTER) && !this.f) {
            // 只有在书架页面才响应长按确认键
            if (isBookshelfPage) {
                this.f = true;
                a(this.g);
                a(this.g, ViewConfiguration.getLongPressTimeout());
            }
            // 其他页面不响应长按确认键，直接返回
        }
        return R();
    }

    @Override // bl.xh
    public boolean g(int keyCode, KeyEvent event) {
        Log.i(TAG_EBOOK, "xw.g: 收到按键 " + keyCode + ", isEbookPanelShown=" + isEbookPanelShown + ", controlTarget=" + controlTarget + ", R()=" + R());

        // 电子书模式：只在控制电子书时拦截按键（除了菜单键、返回键、确认键）
        if (isEbookPanelShown && controlTarget.equals("ebook") && !R()) {
            Log.i(TAG_EBOOK, "xw.g: 电子书模式拦截按键: " + keyCode);

            // 关键修复：章节列表显示时，确认键不拦截（让ListView处理点击）
            if (chapterListView != null && chapterListView.isShown()) {
                Log.i(TAG_EBOOK, "xw.g: 章节列表显示中");
                if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER ||
                    keyCode == KeyEvent.KEYCODE_ENTER ||
                    keyCode == KeyEvent.KEYCODE_NUMPAD_ENTER ||
                    keyCode == KeyEvent.KEYCODE_DPAD_UP ||
                    keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                    Log.i(TAG_EBOOK, "xw.g: 章节列表显示，不拦截方向键和确认键");
                    return false; // 不拦截，让ListView处理
                }
            }

            // 关键功能：电子书阅读内容页面的翻页功能
            // 只在阅读内容页面生效（不在章节列表、文件选择器）
            boolean isReadingContent = (chapterListView == null || !chapterListView.isShown()) &&
                                       !isFileChooserShown &&
                                       ebookWebView != null;

            Log.i(TAG_EBOOK, "xw.g: isReadingContent=" + isReadingContent +
                  ", chapterListView=" + (chapterListView != null ? "not null, shown=" + chapterListView.isShown() : "null") +
                  ", isFileChooserShown=" + isFileChooserShown +
                  ", ebookWebView=" + (ebookWebView != null ? "not null" : "null"));

            if (isReadingContent) {
                Log.i(TAG_EBOOK, "xw.g: 在阅读内容页面");

                // 关键修复：方向键的导航逻辑已经在xw.f()中处理
                // 在xw.g()中对方向键直接返回true，避免重复处理
                if (keyCode == KeyEvent.KEYCODE_DPAD_UP ||
                    keyCode == KeyEvent.KEYCODE_DPAD_DOWN ||
                    keyCode == KeyEvent.KEYCODE_DPAD_LEFT ||
                    keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                    Log.i(TAG_EBOOK, "xw.g: 方向键已由xw.f()处理，直接返回true");
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
                d(true);
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
                            // 查找当前章节列表的父章节
                            List<com.bilibili.tv.ebook.model.Chapter> parentChapterList = chapterNavigationStack.peek();
                            if (parentChapterList != null && currentChapterList.size() > 0) {
                                // 找到包含当前章节列表的父章节
                                int firstChapterIndex = currentChapterList.get(0).getChapterIndex();
                                for (com.bilibili.tv.ebook.model.Chapter parent : parentChapterList) {
                                    if (parent.getChapterIndex() < firstChapterIndex) {
                                        // 检查parent是否包含当前章节
                                        List<com.bilibili.tv.ebook.model.Chapter> children = getChildChapters(parent);
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
                        android.widget.Toast.makeText(
                            o(),
                            "再按一次关闭当前书籍",
                            android.widget.Toast.LENGTH_SHORT
                        ).show();
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
                        android.widget.Toast.makeText(
                            o(),
                            "再按一次退出电子书模式",
                            android.widget.Toast.LENGTH_SHORT
                        ).show();
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
                if (R()) {
                    d(false);
                    return true;
                }
                return false;
            case KeyEvent.KEYCODE_MENU:
                d(!R());
                return true;
            case KeyEvent.KEYCODE_DPAD_UP:
            case KeyEvent.KEYCODE_DPAD_DOWN:
                return R();
            default:
                if (this.f) {
                    a(this.g);
                }
                this.f = false;
                return R();
        }
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void P() {
        g(23);
        g(23);
    }

    private void g(int i) {
        k().a(i, new KeyEvent(0, i));
        k().b(i, new KeyEvent(1, i));
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void c(boolean z) {
        this.a.a(5, Boolean.valueOf(z));
        abd.c(MainApplication.a().getApplicationContext(), z);
    }

    @Override
    public void set_danmaku_type(int i) {
        this.a.a(5, i>0);
        abd.set_danmaku_type(MainApplication.a().getApplicationContext(), i);
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void e(int i) {
        a(IEventCenter.EventType.SWITCH_QUALITY, Integer.valueOf(i));
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void f(int i) {
        AspectRatio aspectRatio;
        switch (i) {
            case 0:
                aspectRatio = AspectRatio.RATIO_16_9_INSIDE;
                break;
            case 1:
                aspectRatio = AspectRatio.RATIO_4_3_INSIDE;
                break;
            case 2:
                aspectRatio = AspectRatio.RATIO_ADJUST_SCREEN;
                break;
            default:
                aspectRatio = AspectRatio.RATIO_ADJUST_CONTENT;
                break;
        }
        this.a.a(4, aspectRatio);
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void a(float f) {
        a(IEventCenter.EventType.DANMAKU_SIZE, Float.valueOf(f));
        abd.a(MainApplication.a().getApplicationContext(), f);
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void b(float f) {
        a(IEventCenter.EventType.DANMAKU_ALPHA, Float.valueOf(f));
        abd.b(MainApplication.a().getApplicationContext(), f);
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void set_subtitle_size(float f) {
        abd.set_subtitle_size(MainApplication.a().getApplicationContext(), f);
        if (n() != null) {
            n().refreshSubtitle();
        }
    }

    private boolean R() {
        return this.c != null && this.c.isShown();
    }

    /**
     * 检查是否处于电子书模式（公共方法）
     */
    public boolean isEbookMode() {
        return isEbookPanelShown;
    }

    /**
     * 检查右侧菜单是否显示（公共方法）
     */
    public boolean isMenuShown() {
        return R();
    }

    /**
     * 检查是否在电子书阅读内容页面（不在章节列表或文件选择器）
     */
    public boolean isEbookReadingContent() {
        return (chapterListView == null || !chapterListView.isShown()) &&
               !isFileChooserShown &&
               ebookWebView != null;
    }

    /**
     * 检查是否控制电子书（电子书面板显示且控制目标为电子书）
     */
    public boolean isControlEbook() {
        return isEbookPanelShown && controlTarget.equals("ebook");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z) {
        v();

        // 关键修改: 先初始化菜单(根据isEbookPanelShown状态),再处理隐藏逻辑
        if (this.c == null) {
            this.c = (PlayerMenuRight) ((ViewStub) a(R.id.right_menu)).inflate();
            this.c.setListener(this);
            S();
            this.c.a(false);
        } else {
            // 菜单已创建,重新初始化菜单项(根据当前状态)
            S();

            if (z && c() != null) {
                JSONArray view_points = c().a.mVideoParams.obtainResolveParams().view_points;
                this.c.init_chapter(view_points);
                JSONObject subtitle_info = c().a.mVideoParams.obtainResolveParams().subtitle_info;
                ResolveResourceParams resolveParams = c().a.mVideoParams.obtainResolveParams();
                this.c.setResolveParams(resolveParams);
                this.c.init_subtitle(subtitle_info);
            }
        }

        // 关键修复：由于电子书面板现在添加到视频父容器，与视频视图处于同一层级
        // overlay UI（右侧菜单、底部菜单、进度条）在更上层，不再需要隐藏电子书面板
        // 右侧菜单会自动显示在电子书面板之上

        if (this.c.isShown() != z) {
            this.c.a(z);
        }
    }

    public void Q() {
        MediaResource mediaResource;
        yh c = c();
        if (c == null || (mediaResource = c.a.mVideoParams.mMediaResource) == null || mediaResource.a == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList<PlayIndex> arrayList2 = mediaResource.a.a;
        PlayIndex d = mediaResource.d();
        if (arrayList2 == null || arrayList2.size() == 0 || d == null) {
            return;
        }
        int i = 0;
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            if (d.c.equals(arrayList2.get(i2).c)) {
                i = i2;
            }
            arrayList.add(arrayList2.get(i2).c);
        }
        this.d = arrayList;
        this.e = i;
    }

    private void S() {
        float[] fArr;
        Q();
        Resources resources = o().getResources();

        // 关键修复：根据controlTarget判断打开哪个菜单（而不仅仅是isEbookPanelShown）
        if (isEbookPanelShown && controlTarget.equals("ebook")) {
            // 问题1修复：在文件列表页和章节列表页，不显示右侧菜单
            if (isFileChooserShown) {
                Log.i(TAG_EBOOK, "文件列表页，不显示右侧菜单");
                return;
            }

            if (isChapterListShown) {
                Log.i(TAG_EBOOK, "章节列表页，不显示右侧菜单");
                return;
            }

            // 电子书模式:显示专用菜单
            Log.i(TAG_EBOOK, "电子书模式:设置专用菜单");

            List<String> ebookMenus = new ArrayList<>();

            // 区分书架页面（首页）和阅读页面的菜单
            if (!isReadingBook) {
                // 书架页面（首页）菜单
                ebookMenus.add("控制视频"); // 最上方
                ebookMenus.add("选择文件");
                ebookMenus.add("清空书架");
                ebookMenus.add("屏幕占比");
                ebookMenus.add("视频位置"); // 新增：视频位置
                ebookMenus.add("退出阅读");
            } else {
                // 阅读页面菜单
                ebookMenus.add("控制视频"); // 最上方
                ebookMenus.add("章节列表");
                ebookMenus.add("字体大小"); // 新增：字体大小
                ebookMenus.add("配色方案"); // 新增：配色方案
                ebookMenus.add("屏幕占比");
                ebookMenus.add("关闭书籍");
            }

            this.c.b(ebookMenus, 0);
            this.c.setMenuIndexMap(new ArrayList<>()); // 清空索引映射

            // 初始化SharedPreferences读取保存的设置
            android.content.SharedPreferences prefs = o().getSharedPreferences("ebook_settings", android.content.Context.MODE_PRIVATE);

            // 初始化屏幕占比列表（书架页面和阅读页面都需要）
            List<String> percentList = new ArrayList<>();
            percentList.add("25%");
            percentList.add("30%");
            percentList.add("35%");
            percentList.add("40%");
            percentList.add("45%");
            percentList.add("50%");

            // 读取保存的屏幕占比索引（默认为1，即30%）
            int savedPercentIndex = prefs.getInt("screen_percent", 1);
            if (savedPercentIndex < 0 || savedPercentIndex >= percentList.size()) {
                savedPercentIndex = 1; // 确保索引有效
            }

            // 同步PlayerMenuRight的静态字段
            com.bilibili.tv.player.widget.PlayerMenuRight.ebook_percent_id = savedPercentIndex;
            ebookPanelPercent = 25 + savedPercentIndex * 5; // 0=25%, 1=30%, ...

            Log.i(TAG_EBOOK, "初始化屏幕占比列表，当前索引: " + savedPercentIndex + ", 占比: " + (25 + savedPercentIndex * 5) + "%");
            this.c.init_percent(percentList, savedPercentIndex);

            // 初始化视频位置列表（书架页面才需要）
            if (!isReadingBook) {
                videoPositionList = new ArrayList<>();
                videoPositionList.add("左上");
                videoPositionList.add("左下");
                videoPositionList.add("右上");
                videoPositionList.add("右下");

                // 读取保存的视频位置索引（默认为0，即左上）
                int savedPositionIndex = prefs.getInt("video_position", VIDEO_POSITION_TOP_LEFT);
                if (savedPositionIndex < 0 || savedPositionIndex >= videoPositionList.size()) {
                    savedPositionIndex = VIDEO_POSITION_TOP_LEFT; // 确保索引有效
                }
                videoPosition = savedPositionIndex;

                Log.i(TAG_EBOOK, "初始化视频位置列表，当前索引: " + savedPositionIndex + ", 位置: " + videoPositionList.get(savedPositionIndex));
                this.c.init_video_position(videoPositionList, savedPositionIndex);
            }

            // 书架页面：清空不需要的列表，避免状态残留
            if (!isReadingBook) {
                this.c.clearEbookReadingPageLists();
            }

            // 初始化字体大小列表（阅读页面才需要）
            if (isReadingBook) {
                List<String> fontSizeList = new ArrayList<>();
                fontSizeList.add("20");
                fontSizeList.add("22");
                fontSizeList.add("24");
                fontSizeList.add("26");
                fontSizeList.add("28");
                fontSizeList.add("30");
                fontSizeList.add("32");
                fontSizeList.add("34");
                fontSizeList.add("36");
                fontSizeList.add("38");

                // 读取保存的字体大小索引（默认为4，即28px）
                float savedFontSize = prefs.getFloat("font_size", 28f);
                int savedIndex = 4; // 默认索引
                for (int i = 0; i < fontSizeList.size(); i++) {
                    if (Float.valueOf(fontSizeList.get(i)).floatValue() == savedFontSize) {
                        savedIndex = i;
                        break;
                    }
                }

                // 同步PlayerMenuRight的静态字段
                com.bilibili.tv.player.widget.PlayerMenuRight.ebook_font_size_id = savedIndex;

                Log.i(TAG_EBOOK, "初始化字体大小列表，当前索引: " + savedIndex + ", 字体大小: " + savedFontSize);
                // 关键修复：直接设置电子书专属的字体大小列表，而不是复用init_size方法
                this.c.ebook_font_size_list = fontSizeList;

                // 初始化配色方案列表
                List<String> colorThemeList = new ArrayList<>();
                colorThemeList.add("System");
                colorThemeList.add("Light");
                colorThemeList.add("Dark");
                colorThemeList.add("Sepia");
                colorThemeList.add("Slate");
                colorThemeList.add("OLED");

                // 读取保存的配色方案索引（默认为0，即System）
                int savedThemeIndex = prefs.getInt("color_theme_index", 0);
                // 同步PlayerMenuRight的静态字段
                com.bilibili.tv.player.widget.PlayerMenuRight.ebook_color_theme_id = savedThemeIndex;

                Log.i(TAG_EBOOK, "初始化配色方案列表，当前索引: " + savedThemeIndex);
                // 关键修复：直接设置电子书专属的配色方案列表，而不是复用init_alpha方法
                this.c.ebook_color_theme_list = colorThemeList;
            }

            // 不需要初始化其他菜单项(清晰度、弹幕等)
            return;
        }

        // 正常模式:显示原有菜单
        // 关键修复：清空电子书相关的列表，避免状态残留
        if (this.c != null) {
            this.c.clearEbookReadingPageLists();
            // 同时清空电子书专属的列表
            this.c.ebook_percent_list = null;
            this.c.video_position_list = null;
        }
        
        int menuConfig = abd.get_player_menu_config(p());
        String[] allMenus = resources.getStringArray(R.array.player_right_menu_level_1);
        List<String> filteredMenus = new ArrayList<>();
        List<Integer> menuIndexMap = new ArrayList<>();

        int[] menuFlags = {
            abd.MENU_QUALITY, abd.MENU_DANMAKU, abd.MENU_RATIO, abd.MENU_ADJUST,
            abd.MENU_SIZE, abd.MENU_ALPHA, abd.MENU_SPEED, abd.MENU_MODE,
            abd.MENU_SUBTITLE, abd.MENU_CHAPTER, abd.MENU_SKIP, abd.MENU_AUDIO_BALANCE,
            abd.MENU_SUBTITLE_SIZE
        };

        boolean isExoPlayer = abd.is_exo_player_selected(p());

        for (int i = 0; i < allMenus.length && i < menuFlags.length; i++) {
            // 音频平衡菜单：同时判断播放器内核和个性化设置
            if (menuFlags[i] == abd.MENU_AUDIO_BALANCE) {
                if (!isExoPlayer || (menuConfig & abd.MENU_AUDIO_BALANCE) == 0) {
                    continue;
                }
            }
            if ((menuConfig & menuFlags[i]) != 0) {
                filteredMenus.add(allMenus[i]);
                menuIndexMap.add(i);
            }
        }

        // 新增：在菜单列表最下方添加"电子书"或"控制电子书"选项
        // 只根据个性化设置中的选择判断
        if ((menuConfig & abd.MENU_EBOOK) != 0) {
            if (isEbookPanelShown) {
                // 已打开电子书模式：显示"控制电子书"
                filteredMenus.add("控制电子书");
            } else {
                // 未打开电子书模式：显示"电子书"
                filteredMenus.add("电子书");
            }
            menuIndexMap.add(allMenus.length); // 使用一个不存在的索引,避免冲突
            Log.i("EbookReader", "视频右侧菜单项已添加: " + (isEbookPanelShown ? "控制电子书" : "电子书"));
        }

        this.c.b(filteredMenus, 0);
        this.c.setMenuIndexMap(menuIndexMap);

        if (this.d == null) {
            this.d = new ArrayList();
            this.d.add(resources.getString(R.string.quality_sd));
            this.e = 0;
        }
        this.c.init_quality(this.d, this.e);
        this.c.init_danmaku(Arrays.asList(resources.getStringArray(R.array.player_danmaku_toggle)), abd.get_danmaku_type(MainApplication.a().getApplicationContext()));
        ArrayList arrayList = new ArrayList(abd.a.length);
        for (float f : abd.a) {
            arrayList.add(String.valueOf(f));
        }
        this.c.init_size(arrayList, arrayList.indexOf(String.valueOf(abd.f(p()))));
        ArrayList arrayList2 = new ArrayList(abd.b.length);
        for (float f2 : abd.b) {
            arrayList2.add(String.valueOf(f2) + "f");
        }
        float g = abd.g(p());
        this.c.init_alpha(arrayList2, arrayList2.indexOf(String.valueOf(g) + "f"));
        this.c.init_ratio(Arrays.asList(resources.getStringArray(R.array.player_screen_ratio)), 3);
        ArrayList arrayList3 = new ArrayList(abd.speeds.length);
        for (float f3 : abd.speeds) {
            arrayList3.add(String.valueOf(f3) + "x");
        }
        this.c.init_speed(arrayList3, abd.get_speed_id(p()));
        this.c.init_mode(Arrays.asList(resources.getStringArray(R.array.player_mode)), abd.get_mode_id(p()));

        ResolveResourceParams resolveParams = c().a.mVideoParams.obtainResolveParams();
        this.c.setResolveParams(resolveParams);
        this.c.init_subtitle(resolveParams.subtitle_info);

        ArrayList arrayList4 = new ArrayList(abd.a.length);
        for (float f4 : abd.a) {
            arrayList4.add(String.valueOf(f4));
        }
        this.c.init_subtitle_size(arrayList4, arrayList4.indexOf(String.valueOf(abd.get_subtitle_size(p()))));

        // 初始化章节列表
        JSONArray view_points = c().a.mVideoParams.obtainResolveParams().view_points;
        this.c.init_chapter(view_points);

        // 初始化音频平衡菜单（仅在ExoPlayer模式下显示）
        if (abd.is_exo_player_selected(p())) {
            String[] audioBalanceOptions = resources.getStringArray(R.array.audio_balance_options);
            String currentLevel = abd.get_audio_balance_level(p());
            int currentIndex = 0;
            if ("standard".equals(currentLevel)) {
                currentIndex = 1;
            } else if ("high_dynamic".equals(currentLevel)) {
                currentIndex = 2;
            }
            this.c.init_audio_balance(Arrays.asList(audioBalanceOptions), currentIndex);
        }
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void jumpToChapter(int chapterIndex) {
        // 实现章节跳转功能
        if (c() == null || c().a.mVideoParams.obtainResolveParams().view_points == null) {
            return;
        }
        
        JSONArray view_points = c().a.mVideoParams.obtainResolveParams().view_points;
        
        // 检查章节索引有效性，使用view_points的长度而不是chapter_list的长度
        if (chapterIndex < 0 || chapterIndex >= view_points.length()) {
            return;
        }
        
        JSONObject chapter = view_points.optJSONObject(chapterIndex);
        if (chapter != null) {
            int from = chapter.optInt("from", 0); // from字段单位为秒
            int targetPosition = from * 1000; // 转换为毫秒
            int currentPosition = x(); // 获取当前播放位置
            
            // 调用播放器跳转到指定时间
            // SEEK事件需要4个参数：事件类型、方向、原始位置、目标位置
            boolean direction = targetPosition > currentPosition; // true表示向前跳转
            a(IEventCenter.EventType.SEEK, direction, Long.valueOf(currentPosition), Long.valueOf(targetPosition));
        }
    }

    private int T() {
        MediaResource mediaResource = b().mVideoParams.mMediaResource;
        if (mediaResource == null || mediaResource.a == null) {
            return -1;
        }
        ArrayList<PlayIndex> arrayList = mediaResource.a.a;
        PlayIndex d = mediaResource.d();
        if (arrayList == null || arrayList.size() == 0 || d == null) {
            return -1;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (adl.a.a(d.b) == adl.a.a(arrayList.get(i).b)) {
                return i;
            }
        }
        return -1;
    }

    @Override
    public void showSkipSettingDialog() {
        if (c() == null || c().a.mVideoParams == null) {
            return;
        }
        ResolveResourceParams params = c().a.mVideoParams.obtainResolveParams();
        Log.i("SkipSetting", "showSkipSettingDialog: mAuthor=" + params.mAuthor + ", mMid=" + params.mMid);
        com.bilibili.tv.player.widget.SkipSettingDialog dialog = new com.bilibili.tv.player.widget.SkipSettingDialog(o(), params, x());

        dialog.setOnPositionProvider(new com.bilibili.tv.player.widget.SkipSettingDialog.OnPositionProvider() {
            @Override
            public long getCurrentPosition() {
                return x();
            }
        });

        dialog.setOnSaveListener(new com.bilibili.tv.player.widget.SkipSettingDialog.OnSaveListener() {
            @Override
            public void onSave(long intro, long outro) {
                Log.i("SkipSetting", "onSave: intro=" + intro + ", outro=" + outro);

                JSONArray newSkips = getEffectiveSkips(params);
                xj skipHelper = getSkipHelper();
                if (skipHelper != null) {
                    skipHelper.updateSkips(newSkips);
                    skipHelper.checkSkip(x());
                }
            }
        });
        dialog.show();
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void onMenuClosed() {
        // 关键修复：菜单关闭后恢复焦点到电子书区域
        if (isEbookPanelShown && ebookPanel != null && controlTarget.equals("ebook")) {
            Log.i(TAG_EBOOK, "onMenuClosed: 恢复焦点到电子书区域");

            // 根据当前显示的内容恢复焦点
            if (isReadingBook && ebookWebView != null) {
                // 关键修复：阅读页面不恢复焦点到WebView
                // WebView保持不可聚焦，避免Android焦点系统拦截方向键
                // 方向键由xw.f()统一处理（上下滚动、左右翻页）
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

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void set_ebook_font_size(float fontSize) {
        Log.i(TAG_EBOOK, "set_ebook_font_size: fontSize=" + fontSize);

        // 保存字体大小到SharedPreferences
        android.content.SharedPreferences prefs = o().getSharedPreferences("ebook_settings", android.content.Context.MODE_PRIVATE);
        prefs.edit().putFloat("font_size", fontSize).apply();
        Log.i(TAG_EBOOK, "字体大小已保存: " + fontSize);

        // 应用字体大小到WebView（如果正在阅读）
        if (ebookWebView != null && isReadingBook) {
            applyFontSizeToWebView(fontSize);
        }
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

        @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
        public void set_ebook_color_theme(int themeIndex) {
            Log.i(TAG_EBOOK, "set_ebook_color_theme: themeIndex=" + themeIndex);

            // 保存配色方案到SharedPreferences
            android.content.SharedPreferences prefs = o().getSharedPreferences("ebook_settings", android.content.Context.MODE_PRIVATE);
            prefs.edit().putInt("color_theme_index", themeIndex).apply();
            Log.i(TAG_EBOOK, "配色方案已保存: " + themeIndex);

            // 应用配色方案到WebView（如果正在阅读）
            if (ebookWebView != null && isReadingBook) {
                applyColorThemeToWebView(themeIndex);
            }
        }

        @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
        public void set_ebook_percent(int percentIndex) {
            Log.i(TAG_EBOOK, "set_ebook_percent: percentIndex=" + percentIndex);

            // 屏幕占比选项映射：0=25%, 1=30%, 2=35%, 3=40%, 4=45%, 5=50%
            int[] percentValues = {25, 30, 35, 40, 45, 50};
            if (percentIndex < 0 || percentIndex >= percentValues.length) {
                return;
            }

            int percent = percentValues[percentIndex];
            ebookPanelPercent = percent;

            // 保存屏幕占比到SharedPreferences
            android.content.SharedPreferences prefs = o().getSharedPreferences("ebook_settings", android.content.Context.MODE_PRIVATE);
            prefs.edit().putInt("screen_percent", percentIndex).apply();
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
            Activity activity = o();
            if (activity != null) {
                android.widget.Toast.makeText(activity, "电子书占比已调整为 " + percent + "%", android.widget.Toast.LENGTH_SHORT).show();
            }
        }

        /**
         * 设置视频位置
         */
        public void set_video_position(int positionIndex) {
            Log.i(TAG_EBOOK, "set_video_position: positionIndex=" + positionIndex);

            if (positionIndex < 0 || positionIndex > 3) {
                return;
            }

            videoPosition = positionIndex;

            // 保存视频位置到SharedPreferences
            android.content.SharedPreferences prefs = o().getSharedPreferences("ebook_settings", android.content.Context.MODE_PRIVATE);
            prefs.edit().putInt("video_position", positionIndex).apply();
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
            Activity activity = o();
            if (activity != null) {
                String toastPositionName = (videoPositionList != null && positionIndex >= 0 && positionIndex < videoPositionList.size())
                                     ? videoPositionList.get(positionIndex) : "左上";
                android.widget.Toast.makeText(activity, 
                    "视频位置已调整为 " + toastPositionName, 
                    android.widget.Toast.LENGTH_SHORT).show();
            }
        }

        /**
         * 应用视频位置
         */
        private void applyVideoPosition() {
            Activity activity = o();
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
            Activity activity = o();
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
            IPlayerContext playerContext = n();
            if (playerContext == null) return;

            IVideoView videoViewInterface = playerContext.getIVideoView();
            if (videoViewInterface == null) return;

            View videoView = videoViewInterface.getView();
            if (videoView == null) return;

            ViewGroup parent = (ViewGroup) videoView.getParent();
            if (parent == null) return;

            // 根据视频位置设置对齐方式
            boolean isVideoOnLeft = (videoPosition == VIDEO_POSITION_TOP_LEFT || videoPosition == VIDEO_POSITION_BOTTOM_LEFT);
            
            ViewGroup.LayoutParams params;
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
                params = flParams;
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
                params = rlParams;
            } else {
                params = new ViewGroup.LayoutParams(videoWidth, ViewGroup.LayoutParams.MATCH_PARENT);
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
            // 简化处理：通过查找弹幕相关的View并更新布局参数
            Activity activity = o();
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
                String resourceName = childId > 0 ? child.getResources().getResourceEntryName(childId) : "";

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
            Activity activity = o();
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
                String resourceName = childId > 0 ? child.getResources().getResourceEntryName(childId) : "";

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

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void openEbookReader() {
        Log.i(TAG_EBOOK, "openEbookReader() called, isEbookPanelShown=" + isEbookPanelShown);

        if (isEbookPanelShown) {
            // 如果已显示,则关闭
            closeEbookPanel();
        } else {
            // 否则打开
            // 关键修复：先关闭右侧菜单，确保电子书首页能够正确显示
            if (R()) {
                Log.i(TAG_EBOOK, "右侧菜单正在显示，先关闭菜单");
                d(false); // 关闭右侧菜单
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

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void openEbookFileChooser() {
        Log.i(TAG_EBOOK, "openEbookFileChooser() called");

        Activity activity = o();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null, cannot open file chooser");
            return;
        }

        // 关键修复：用户点击"选择文件"菜单项的意图是直接打开文件选择器
        // 先关闭右侧菜单，确保文件选择器能够正确显示
        if (R()) {
            Log.i(TAG_EBOOK, "右侧菜单正在显示，先关闭菜单");
            d(false); // 关闭右侧菜单
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

    /**
     * 显示书架列表，如果书架为空则显示文件选择器
     */
    private void showBookshelfOrFileChooser() {
        if (bookshelfManager == null) {
            bookshelfManager = new com.bilibili.tv.ebook.util.BookshelfManager(o());
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
        Activity activity = o();
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
        titleView.setTextColor(android.graphics.Color.WHITE);
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
        android.widget.ArrayAdapter<com.bilibili.tv.ebook.model.BookshelfItem> adapter =
            new android.widget.ArrayAdapter<com.bilibili.tv.ebook.model.BookshelfItem>(
                activity,
                android.R.layout.simple_list_item_1,
                android.R.id.text1,
                bookshelfItems
            ) {
            @Override
            public View getView(int position, View convertView, ViewGroup parent) {
                // 使用自定义布局（而不是默认的TextView）
                android.widget.LinearLayout itemLayout;
                
                if (convertView == null) {
                    // 创建自定义布局
                    itemLayout = new android.widget.LinearLayout(activity);
                    itemLayout.setOrientation(android.widget.LinearLayout.VERTICAL);
                    itemLayout.setPadding(24, 16, 24, 16);
                    
                    // 第1行：书籍名（左）+ 作者名（右）- 使用LinearLayout避免重叠
                    android.widget.LinearLayout row1 = new android.widget.LinearLayout(activity);
                    row1.setOrientation(android.widget.LinearLayout.HORIZONTAL);
                    row1.setLayoutParams(new android.widget.LinearLayout.LayoutParams(
                        android.widget.LinearLayout.LayoutParams.MATCH_PARENT,
                        android.widget.LinearLayout.LayoutParams.WRAP_CONTENT
                    ));
                    
                    // 书籍名称：使用权重，超长时截取显示省略号
                    android.widget.TextView titleView = new android.widget.TextView(activity);
                    titleView.setTextColor(android.graphics.Color.WHITE);
                    titleView.setTextSize(16);
                    titleView.setMaxLines(1);
                    titleView.setEllipsize(android.text.TextUtils.TruncateAt.END);
                    titleView.setId(android.R.id.text1); // 设置ID以便后续更新
                    
                    // 作者名：固定宽度，超长时截取显示省略号
                    android.widget.TextView authorView = new android.widget.TextView(activity);
                    authorView.setTextColor(android.graphics.Color.WHITE);
                    authorView.setTextSize(16);
                    authorView.setMaxLines(1);
                    authorView.setEllipsize(android.text.TextUtils.TruncateAt.END);
                    authorView.setGravity(android.view.Gravity.RIGHT);
                    authorView.setId(android.R.id.text2); // 设置ID以便后续更新
                    
                    // 书籍名称占大部分宽度（weight=1），作者名固定宽度（100dp）
                    row1.addView(titleView, new android.widget.LinearLayout.LayoutParams(
                        0, // 宽度为0，由weight决定
                        android.widget.LinearLayout.LayoutParams.WRAP_CONTENT,
                        1.0f // weight=1，占剩余空间
                    ));
                    row1.addView(authorView, new android.widget.LinearLayout.LayoutParams(
                        activity.getResources().getDimensionPixelSize(android.R.dimen.app_icon_size) * 3, // 固定宽度约150dp
                        android.widget.LinearLayout.LayoutParams.WRAP_CONTENT
                    ));
                    
                    // 第2行：阅读进度 + 章节名称 - 使用LinearLayout分离显示
                    android.widget.LinearLayout row2 = new android.widget.LinearLayout(activity);
                    row2.setOrientation(android.widget.LinearLayout.HORIZONTAL);
                    android.widget.LinearLayout.LayoutParams row2Params = new android.widget.LinearLayout.LayoutParams(
                        android.widget.LinearLayout.LayoutParams.MATCH_PARENT,
                        android.widget.LinearLayout.LayoutParams.WRAP_CONTENT
                    );
                    row2.setLayoutParams(row2Params);
                    
                    // 进度百分比：固定宽度
                    android.widget.TextView progressView = new android.widget.TextView(activity);
                    progressView.setTextColor(android.graphics.Color.WHITE);
                    progressView.setTextSize(12);
                    progressView.setId(android.R.id.progress); // 进度百分比
                    
                    // 章节名称：使用权重，超长时截取
                    android.widget.TextView chapterView = new android.widget.TextView(activity);
                    chapterView.setTextColor(android.graphics.Color.WHITE);
                    chapterView.setTextSize(12);
                    chapterView.setMaxLines(1);
                    chapterView.setEllipsize(android.text.TextUtils.TruncateAt.END);
                    chapterView.setId(android.R.id.summary); // 章节名称
                    
                    // 进度占固定宽度，章节名占剩余空间
                    row2.addView(progressView, new android.widget.LinearLayout.LayoutParams(
                        android.widget.LinearLayout.LayoutParams.WRAP_CONTENT,
                        android.widget.LinearLayout.LayoutParams.WRAP_CONTENT
                    ));
                    row2.addView(chapterView, new android.widget.LinearLayout.LayoutParams(
                        0, // 宽度为0，由weight决定
                        android.widget.LinearLayout.LayoutParams.WRAP_CONTENT,
                        1.0f // weight=1，占剩余空间
                    ));
                    
                    // 第3行：电子书格式 + 上次阅读时间（右对齐）
                    android.widget.TextView row3 = new android.widget.TextView(activity);
                    row3.setTextColor(android.graphics.Color.WHITE);
                    row3.setTextSize(12);
                    row3.setGravity(android.view.Gravity.RIGHT);
                    row3.setId(android.R.id.hint); // 设置ID以便后续更新
                    row3.setLayoutParams(new android.widget.LinearLayout.LayoutParams(
                        android.widget.LinearLayout.LayoutParams.MATCH_PARENT,
                        android.widget.LinearLayout.LayoutParams.WRAP_CONTENT
                    ));
                    
                    // 添加所有行到item布局
                    itemLayout.addView(row1);
                    itemLayout.addView(row2);
                    itemLayout.addView(row3);
                    
                } else {
                    itemLayout = (android.widget.LinearLayout) convertView;
                }
                
                // 获取各个TextView
                android.widget.TextView titleView = (android.widget.TextView) itemLayout.findViewById(android.R.id.text1);
                android.widget.TextView authorView = (android.widget.TextView) itemLayout.findViewById(android.R.id.text2);
                android.widget.TextView progressView = (android.widget.TextView) itemLayout.findViewById(android.R.id.progress);
                android.widget.TextView chapterView = (android.widget.TextView) itemLayout.findViewById(android.R.id.summary);
                android.widget.TextView row3 = (android.widget.TextView) itemLayout.findViewById(android.R.id.hint);
                
                com.bilibili.tv.ebook.model.BookshelfItem item = bookshelfItems.get(position);
                
                // 主标题：书籍名称（如果为空则显示文件名）
                String displayTitle = item.getTitle();
                if (displayTitle == null || displayTitle.isEmpty() || "Unknown Title".equals(displayTitle)) {
                    // 使用文件名（去掉后缀）
                    String filePath = item.getFilePath();
                    if (filePath != null && !filePath.isEmpty()) {
                        int lastSlash = filePath.lastIndexOf('/');
                        int lastDot = filePath.lastIndexOf('.');
                        if (lastSlash >= 0 && lastDot > lastSlash) {
                            displayTitle = filePath.substring(lastSlash + 1, lastDot);
                        } else if (lastSlash >= 0) {
                            displayTitle = filePath.substring(lastSlash + 1);
                        } else {
                            displayTitle = filePath;
                        }
                    } else {
                        displayTitle = "未知书籍";
                    }
                }
                
                // 作者（如果不为空）
                String author = item.getAuthor();
                if (author != null && !author.isEmpty() && !"未知".equals(author) && !"Unknown".equals(author) && !"Unknown Author".equals(author)) {
                    // 有作者信息，直接显示作者名
                } else {
                    author = null; // 没有作者信息
                }
                
                // 格式化最后阅读时间
                String formattedTime = "";
                if (item.getLastReadTime() > 0) {
                    formattedTime = formatLastReadTime(item.getLastReadTime());
                }
                
                // 第1行：书籍名称 + 作者名字（右对齐）
                titleView.setText(displayTitle);
                if (author != null) {
                    authorView.setText(author);
                    authorView.setVisibility(View.VISIBLE);
                } else {
                    authorView.setVisibility(View.GONE);
                }
                
                // 第2行：进度百分比 + 章节名称（分离显示，避免重叠）
                progressView.setText(String.format("%.1f%%", item.getProgressPercentage()));
                
                if (item.getChapterTitle() != null && !item.getChapterTitle().isEmpty()) {
                    chapterView.setText(" | " + item.getChapterTitle());
                    chapterView.setVisibility(View.VISIBLE);
                } else {
                    chapterView.setVisibility(View.GONE);
                }
                
                // 第3行：电子书格式 + 上次阅读时间（右对齐）
                StringBuilder row3Text = new StringBuilder();
                if (item.getFileExtension() != null && !item.getFileExtension().isEmpty()) {
                    row3Text.append(item.getFileExtension());
                }
                
                if (!formattedTime.isEmpty()) {
                    if (row3Text.length() > 0) {
                        row3Text.append(" | ");
                    }
                    row3Text.append(formattedTime);
                }
                
                row3.setText(row3Text.toString());

                // 设置选中状态的背景色
                if (parent instanceof android.widget.ListView) {
                    android.widget.ListView listView = (android.widget.ListView) parent;
                    if (position == listView.getSelectedItemPosition()) {
                        itemLayout.setBackgroundColor(android.graphics.Color.parseColor("#1E90FF")); // 蓝色背景（选中）
                    } else {
                        itemLayout.setBackgroundColor(android.graphics.Color.TRANSPARENT); // 透明背景（未选中）
                    }
                }

                return itemLayout;
            }
        };

        bookshelfListView.setAdapter(adapter);

        // 关键修复：设置选中项监听器，动态更新背景色
        bookshelfListView.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(android.widget.AdapterView<?> parent, View view, int position, long id) {
                // 重新绘制列表以更新背景色
                parent.post(new Runnable() {
                    @Override
                    public void run() {
                        bookshelfListView.invalidateViews();
                    }
                });
            }

            @Override
            public void onNothingSelected(android.widget.AdapterView<?> parent) {
            }
        });

        // 设置点击事件
        bookshelfListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                com.bilibili.tv.ebook.model.BookshelfItem item = bookshelfItems.get(position);
                Log.i(TAG_EBOOK, "点击书架项: " + item.getTitle() + ", 路径: " + item.getFilePath());

                // 打开书籍文件
                java.io.File file = new java.io.File(item.getFilePath());
                if (file.exists()) {
                    parseAndDisplayEbook(item.getFilePath());
                } else {
                    android.widget.Toast.makeText(activity,
                        "文件不存在：" + item.getFilePath(),
                        android.widget.Toast.LENGTH_SHORT).show();
                }
            }
        });

        // 设置长按事件（删除单本书籍）
        bookshelfListView.setOnItemLongClickListener(new android.widget.AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                final com.bilibili.tv.ebook.model.BookshelfItem item = bookshelfItems.get(position);
                Log.i(TAG_EBOOK, "长按书架项: " + item.getTitle());

                // 显示确认删除对话框
                showRemoveBookDialog(item, position);
                return true; // 消费事件，防止触发点击
            }
        });

        // 添加列表到面板
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT,
            FrameLayout.LayoutParams.MATCH_PARENT
        );
        params.topMargin = 70; // 给标题留出空间
        ebookPanel.addView(bookshelfListView, params);

        // 如果书架为空，添加提示文字
        if (bookshelfItems.isEmpty()) {
            android.widget.TextView emptyHint = new android.widget.TextView(activity);
            emptyHint.setText("书架为空，请选择文件添加书籍");
            emptyHint.setTextColor(android.graphics.Color.GRAY);
            emptyHint.setTextSize(14);
            emptyHint.setPadding(24, 10, 24, 10);
            emptyHint.setGravity(android.view.Gravity.CENTER);
            emptyHint.setId(android.R.id.empty); // 设置ID
            ebookPanel.addView(emptyHint, new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.WRAP_CONTENT,
                android.view.Gravity.CENTER
            ));
        }

        // 问题2修复：延迟检查并确保ebookPanel可见（处理菜单自动关闭的情况）
        ebookPanel.postDelayed(new Runnable() {
            @Override
            public void run() {
                if (isEbookPanelShown && ebookPanel != null && ebookPanel.getVisibility() != View.VISIBLE) {
                    Log.w(TAG_EBOOK, "检测到电子书面板未显示，强制恢复显示");
                    ebookPanel.setVisibility(View.VISIBLE);
                }
            }
        }, 6000); // 6秒后检查（菜单5秒超时，再加1秒）

        // 自动请求焦点
        bookshelfListView.post(new Runnable() {
            @Override
            public void run() {
                bookshelfListView.requestFocus();
                Log.i(TAG_EBOOK, "书架列表已请求焦点");
            }
        });
    }

    /**
     * 格式化最后阅读时间（参考历史记录的时间显示策略）
     */
    private String formatLastReadTime(long timestamp) {
        java.util.Calendar now = java.util.Calendar.getInstance();
        java.util.Calendar date = java.util.Calendar.getInstance();
        date.setTimeInMillis(timestamp);
        
        java.text.SimpleDateFormat formatThisYear = new java.text.SimpleDateFormat("MM-dd HH:mm", java.util.Locale.CHINA);
        java.text.SimpleDateFormat formatFull = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);
        
        if (now.get(java.util.Calendar.YEAR) == date.get(java.util.Calendar.YEAR)) {
            // 今年：显示月-日 时:分
            return formatThisYear.format(new java.util.Date(timestamp));
        } else {
            // 非今年：显示年-月-日
            return formatFull.format(new java.util.Date(timestamp));
        }
    }

    /**
     * 在电子书面板中显示文件选择器
     */
    private void showFileChooserInPanel() {
        Activity activity = o();
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
            if (activity.checkSelfPermission(android.Manifest.permission.READ_EXTERNAL_STORAGE)
                    != android.content.pm.PackageManager.PERMISSION_GRANTED) {
                Log.w(TAG_EBOOK, "没有存储权限，请求权限");
                activity.requestPermissions(
                        new String[]{android.Manifest.permission.READ_EXTERNAL_STORAGE},
                        REQUEST_CODE_STORAGE_PERMISSION
                );
                android.widget.Toast.makeText(activity,
                        "请授予存储权限后再试",
                        android.widget.Toast.LENGTH_SHORT).show();
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
        final android.widget.ListView fileListView = new android.widget.ListView(activity);
        android.widget.LinearLayout.LayoutParams listParams = new android.widget.LinearLayout.LayoutParams(
            android.widget.LinearLayout.LayoutParams.MATCH_PARENT,
            android.widget.LinearLayout.LayoutParams.MATCH_PARENT
        );
        fileListView.setLayoutParams(listParams);
        fileListView.setDivider(new android.graphics.drawable.ColorDrawable(Color.DKGRAY));
        fileListView.setDividerHeight(1);
        fileListView.setFocusable(true); // 确保可以获取焦点
        fileListView.setFocusableInTouchMode(true); // 确保在触摸模式下也可以获取焦点
        fileListView.setDescendantFocusability(android.view.ViewGroup.FOCUS_BEFORE_DESCENDANTS); // 优先获取焦点
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
        Activity activity = o();
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
        Activity activity = o();
        if (activity == null) return;

        Log.i(TAG_EBOOK, "加载目录: " + currentDir.getAbsolutePath());

        // 更新路径显示
        pathView.setText(currentDir.getAbsolutePath());

        // 获取文件列表
        java.io.File[] files = currentDir.listFiles();
        if (files == null) {
            Log.e(TAG_EBOOK, "listFiles()返回null，可能没有权限或目录不存在");
            android.widget.Toast.makeText(activity, "无法访问目录", android.widget.Toast.LENGTH_SHORT).show();
            return;
        }

        Log.i(TAG_EBOOK, "找到 " + files.length + " 个文件/文件夹");

        // 过滤并排序
        java.util.List<java.io.File> fileList = new java.util.ArrayList<>();
        java.util.List<java.io.File> folderList = new java.util.ArrayList<>();

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
        java.util.List<String> items = new java.util.ArrayList<>();
        final java.util.List<java.io.File> allFiles = new java.util.ArrayList<>();

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
            public android.view.View getView(int position, android.view.View convertView, android.view.ViewGroup parent) {
                android.view.View view = super.getView(position, convertView, parent);
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
            public void onItemSelected(android.widget.AdapterView<?> parent, android.view.View view, int position, long id) {
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
            public void onItemClick(android.widget.AdapterView<?> parent, android.view.View view, int position, long id) {
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
            android.widget.Toast.makeText(o(),
                "正在加载，请稍候...",
                android.widget.Toast.LENGTH_SHORT).show();
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
        o().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (ebookPanel == null) return;

                // 清空面板
                ebookPanel.removeAllViews();

                // 创建容器
                android.widget.LinearLayout loadingContainer = new android.widget.LinearLayout(o());
                loadingContainer.setOrientation(android.widget.LinearLayout.VERTICAL);
                loadingContainer.setGravity(android.view.Gravity.CENTER);
                loadingContainer.setBackgroundColor(Color.parseColor("#333333"));

                android.widget.FrameLayout.LayoutParams containerParams = new android.widget.FrameLayout.LayoutParams(
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT,
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT
                );
                loadingContainer.setLayoutParams(containerParams);

                // 创建进度条
                loadingProgressBar = new android.widget.ProgressBar(o());
                loadingProgressBar.setIndeterminate(true);
                loadingProgressBar.setLayoutParams(new android.widget.LinearLayout.LayoutParams(
                    android.widget.LinearLayout.LayoutParams.WRAP_CONTENT,
                    android.widget.LinearLayout.LayoutParams.WRAP_CONTENT
                ));

                // 创建文字提示
                loadingTextView = new android.widget.TextView(o());
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

        o().runOnUiThread(new Runnable() {
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
        final java.lang.ref.WeakReference<xw> fragmentRef = new java.lang.ref.WeakReference<>(xw.this);

        parsingThread = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    // 检查是否已取消
                    if (isParsingCancelled) {
                        Log.i(TAG_EBOOK, "解析任务已取消");
                        return;
                    }

                    // 获取Fragment和Activity引用
                    xw fragment = fragmentRef.get();
                    if (fragment == null || fragment.o() == null) {
                        Log.w(TAG_EBOOK, "Fragment或Activity已销毁，取消解析");
                        return;
                    }

                    // 创建解析器工厂（使用Activity作为Context）
                    com.bilibili.tv.ebook.parser.EbookParserFactory factory =
                        new com.bilibili.tv.ebook.parser.EbookParserFactory(fragment.o());

                    // 生成书籍ID
                    String bookId = com.bilibili.tv.ebook.parser.EbookParserFactory.generateBookId(filePath);

                    // 解析电子书文件
                    com.bilibili.tv.ebook.model.Book book = factory.parse(filePath, bookId);

                    // 再次检查是否已取消
                    if (isParsingCancelled) {
                        Log.i(TAG_EBOOK, "解析任务已取消，不显示内容");
                        return;
                    }

                    if (book == null) {
                        Log.e(TAG_EBOOK, "电子书解析失败");
                        hideLoadingIndicator();

                        // 在主线程显示错误提示
                        fragment = fragmentRef.get();
                        if (fragment != null && fragment.o() != null) {
                            final xw finalFragment = fragment;
                            fragment.o().runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    if (finalFragment.o() != null) {
                                        android.widget.Toast.makeText(finalFragment.o(),
                                            "电子书解析失败，请检查文件格式",
                                            android.widget.Toast.LENGTH_SHORT).show();
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
                    fragment = fragmentRef.get();
                    if (fragment != null && fragment.o() != null) {
                        final com.bilibili.tv.ebook.model.Book finalBook = book;
                        final xw finalFragment = fragment;
                        fragment.o().runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                if (finalFragment.o() != null) {
                                    finalFragment.restoreReadingProgress(finalBook);
                                }
                            }
                        });
                    }

                } catch (Exception e) {
                    Log.e(TAG_EBOOK, "解析电子书异常", e);
                    hideLoadingIndicator();

                    // 在主线程显示错误提示
                    xw fragment = fragmentRef.get();
                    if (fragment != null && fragment.o() != null) {
                        final Exception finalException = e;
                        final xw finalFragment = fragment;
                        fragment.o().runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                if (finalFragment.o() != null) {
                                    android.widget.Toast.makeText(finalFragment.o(),
                                        "解析异常: " + finalException.getMessage(),
                                        android.widget.Toast.LENGTH_SHORT).show();
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

    /**
     * 显示书籍内容（在WebView中显示指定章节）
     */
    private void displayBookContent(com.bilibili.tv.ebook.model.Book book) {
        displayBookContent(book, 0); // 默认显示第一章
    }

    /**
     * 显示书籍内容（在WebView中显示指定章节）
     */
    private void displayBookContent(com.bilibili.tv.ebook.model.Book book, int chapterIndex) {
        displayBookContent(book, chapterIndex, false, -1); // 默认显示顶部，不恢复页码
    }

    /**
     * 显示书籍内容（在WebView中显示指定章节）
     * @param book 书籍对象
     * @param chapterIndex 章节索引
     * @param scrollToBottom 是否滚动到章节底部（用于从上一章节跳转时）
     */
    private void displayBookContent(com.bilibili.tv.ebook.model.Book book, int chapterIndex, boolean scrollToBottom) {
        displayBookContent(book, chapterIndex, scrollToBottom, -1); // 不恢复页码
    }

    /**
     * 显示书籍内容（在WebView中显示指定章节）
     * @param book 书籍对象
     * @param chapterIndex 章节索引
     * @param scrollToBottom 是否滚动到章节底部（用于从上一章节跳转时）
     * @param restorePage 恢复到指定页码（-1表示不恢复）
     */
    private void displayBookContent(com.bilibili.tv.ebook.model.Book book, int chapterIndex, boolean scrollToBottom, int restorePage) {
        if (book == null || book.getChapters() == null || book.getChapters().isEmpty()) {
            Log.e(TAG_EBOOK, "书籍无章节内容");
            android.widget.Toast.makeText(o(),
                "书籍内容为空",
                android.widget.Toast.LENGTH_SHORT).show();
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
        ebookWebView = new android.webkit.WebView(o());
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
        com.bilibili.tv.ebook.model.Chapter chapter = book.getChapters().get(chapterIndex);
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
        android.content.SharedPreferences prefs = o().getSharedPreferences("ebook_settings", android.content.Context.MODE_PRIVATE);
        float savedFontSize = prefs.getFloat("font_size", 28f);
        Log.i(TAG_EBOOK, "读取保存的字体大小: " + savedFontSize);

        // 构建完整HTML（添加样式）
        String styledHtml = "<html><head>" +
            "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" +
            "<style>body { font-size: " + (int)savedFontSize + "px; line-height: 1.6; padding: 20px; }</style>" +
            "</head><body>" + htmlContent + "</body></html>";

        // 设置WebViewClient，用于监听页面加载完成（应用字体大小、滚动到底部或恢复页码）
        ebookWebView.setWebViewClient(new android.webkit.WebViewClient() {
            @Override
            public void onPageFinished(android.webkit.WebView view, String url) {
                super.onPageFinished(view, url);

                view.post(new Runnable() {
                    @Override
                    public void run() {
                        // 应用保存的字体大小和配色方案
                        android.content.SharedPreferences prefs = o().getSharedPreferences("ebook_settings", android.content.Context.MODE_PRIVATE);
                        float savedFontSize = prefs.getFloat("font_size", 28f);
                        Log.i(TAG_EBOOK, "页面加载完成，应用字体大小: " + savedFontSize);
                        applyFontSizeToWebView(savedFontSize);

                        int savedThemeIndex = prefs.getInt("color_theme_index", 0);
                        Log.i(TAG_EBOOK, "页面加载完成，应用配色方案: " + savedThemeIndex);
                        applyColorThemeToWebView(savedThemeIndex);

                        // 滚动逻辑
                        if (scrollToBottom) {
                            // 滚动到章节底部
                            Log.i(TAG_EBOOK, "页面加载完成，滚动到章节底部");
                            int contentHeight = view.getContentHeight();
                            float density = o().getResources().getDisplayMetrics().density;
                            int contentHeightPx = (int) (contentHeight * density);
                            int viewHeight = view.getHeight();
                            int scrollY = contentHeightPx - viewHeight;
                            if (scrollY > 0) {
                                view.scrollTo(0, scrollY);
                                Log.i(TAG_EBOOK, "已滚动到章节底部: scrollY=" + scrollY);
                            }
                        } else if (restorePage >= 0) {
                            // 恢复到指定页码
                            Log.i(TAG_EBOOK, "页面加载完成，恢复到页码: " + restorePage);
                            int viewHeight = view.getHeight();
                            int scrollY = restorePage * viewHeight;
                            if (scrollY > 0) {
                                view.scrollTo(0, scrollY);
                                Log.i(TAG_EBOOK, "已滚动到页码 " + restorePage + ": scrollY=" + scrollY);
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
     * 显示章节列表（支持多级目录）
     */
    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void showChapterList() {
        if (currentBook == null || currentBook.getChapters() == null) {
            Log.w(TAG_EBOOK, "无书籍数据，无法显示章节列表");
            android.widget.Toast.makeText(o(),
                "无章节信息",
                android.widget.Toast.LENGTH_SHORT).show();
            return;
        }

        Log.i(TAG_EBOOK, "显示章节列表，总数: " + currentBook.getChapters().size());
        isChapterListShown = true;

        // 初始化章节导航栈（多级目录支持）
        chapterNavigationStack = new java.util.Stack<>();
        parentChapterTitle = null; // 一级目录，父章节标题为null

        // 显示一级目录（depth=0的章节）
        List<com.bilibili.tv.ebook.model.Chapter> rootChapters = getRootChapters();
        currentChapterList = rootChapters;

        // 添加延时，确保右侧菜单完全关闭后再显示章节列表
        new android.os.Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                createChapterListView(currentChapterList);
            }
        }, 200); // 延迟200毫秒
    }

    /**
     * 获取一级目录（depth=0的章节）
     */
    private List<com.bilibili.tv.ebook.model.Chapter> getRootChapters() {
        List<com.bilibili.tv.ebook.model.Chapter> rootChapters = new ArrayList<>();
        List<com.bilibili.tv.ebook.model.Chapter> allChapters = currentBook.getChapters();

        for (com.bilibili.tv.ebook.model.Chapter chapter : allChapters) {
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
    private List<com.bilibili.tv.ebook.model.Chapter> getChildChapters(com.bilibili.tv.ebook.model.Chapter parentChapter) {
        List<com.bilibili.tv.ebook.model.Chapter> childChapters = new ArrayList<>();
        List<com.bilibili.tv.ebook.model.Chapter> allChapters = currentBook.getChapters();

        int parentIndex = parentChapter.getChapterIndex();
        int parentDepth = parentChapter.getDepth();

        // 查找紧跟在parent之后且depth大于parent的章节
        for (int i = parentIndex + 1; i < allChapters.size(); i++) {
            com.bilibili.tv.ebook.model.Chapter chapter = allChapters.get(i);
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
    private void createChapterListView(final List<com.bilibili.tv.ebook.model.Chapter> chapters) {
        // 在主线程创建章节列表
        o().runOnUiThread(new Runnable() {
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
                android.widget.FrameLayout listContainer = new android.widget.FrameLayout(o());
                listContainer.setBackgroundColor(Color.parseColor("#2A2A2A"));
                android.widget.FrameLayout.LayoutParams containerParams = new android.widget.FrameLayout.LayoutParams(
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT,
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT
                );
                listContainer.setLayoutParams(containerParams);

                // 创建标题（显示层级信息）
                android.widget.TextView titleView = new android.widget.TextView(o());
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
                final List<com.bilibili.tv.ebook.model.Chapter> chapterList = chapters;
                for (com.bilibili.tv.ebook.model.Chapter chapter : chapterList) {
                    chapterTitles.add(chapter.getTitle());
                }

                // 创建章节列表ListView
                chapterListView = new android.widget.ListView(o());
                chapterListView.setBackgroundColor(Color.parseColor("#2A2A2A"));
                android.widget.FrameLayout.LayoutParams listParams = new android.widget.FrameLayout.LayoutParams(
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT,
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT
                );
                listParams.setMargins(0, 80, 0, 0); // 标题下方
                chapterListView.setLayoutParams(listParams);

                // 创建Adapter（支持多级目录显示）
                android.widget.ArrayAdapter<String> adapter = new android.widget.ArrayAdapter<String>(o(),
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
                            com.bilibili.tv.ebook.model.Chapter chapter = chapterList.get(position);
                            int depth = chapter.getDepth();
                            int indent = depth * 30; // 每级缩进30像素
                            textView.setPadding(24 + indent, 20, 24, 20);

                            // 检查是否有子章节
                            List<com.bilibili.tv.ebook.model.Chapter> children = getChildChapters(chapter);
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
                        com.bilibili.tv.ebook.model.Chapter chapter = chapterList.get(position);
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
                            com.bilibili.tv.ebook.model.Chapter chapter = chapterList.get(i);
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
                        com.bilibili.tv.ebook.model.Chapter clickedChapter = chapterList.get(position);
                        Log.i(TAG_EBOOK, "点击章节: " + clickedChapter.getTitle() + ", depth=" + clickedChapter.getDepth());

                        // 检查是否有子章节
                        List<com.bilibili.tv.ebook.model.Chapter> children = getChildChapters(clickedChapter);
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

        o().runOnUiThread(new Runnable() {
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

    // 定义请求码
    private static final int REQUEST_CODE_STORAGE_PERMISSION = 1001;

    /**
     * 显示电子书面板(视频缩小到2/3,左对齐;右侧1/3显示灰色背景)
     */
    private void showEbookPanel() {
        Activity activity = o();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null, cannot show ebook panel");
            return;
        }

        Log.i(TAG_EBOOK, "开始显示电子书面板");

        // 获取屏幕尺寸
        android.util.DisplayMetrics metrics = new android.util.DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(metrics);
        int screenWidth = metrics.widthPixels;
        int screenHeight = metrics.heightPixels;

        // 读取保存的屏幕占比
        android.content.SharedPreferences prefs = activity.getSharedPreferences("ebook_settings", android.content.Context.MODE_PRIVATE);
        int savedPercentIndex = prefs.getInt("screen_percent", 1);
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
        int savedPositionIndex = prefs.getInt("video_position", VIDEO_POSITION_TOP_LEFT);
        if (savedPositionIndex >= 0 && savedPositionIndex < videoPositionList.size()) {
            videoPosition = savedPositionIndex;
        } else {
            videoPosition = VIDEO_POSITION_TOP_LEFT; // 默认左上
        }
        Log.i(TAG_EBOOK, "读取保存的视频位置: " + videoPositionList.get(videoPosition));

        // 1. 缩小视频画面到(100%-ebookPanelPercent)%,根据视频位置对齐
        shrinkVideoView(activity, screenWidth, screenHeight);

        // 2. 缩小弹幕视图到(100%-ebookPanelPercent)%,左对齐(与视频同步)
        shrinkDanmakuView(activity, screenWidth, screenHeight);

        // 3. 右侧ebookPanelPercent%显示灰色背景面板
        showGrayBackgroundPanel(activity, screenWidth, screenHeight);

        // 初始化电子书缓存管理器和书架管理器
        if (ebookCacheManager == null) {
            ebookCacheManager = new com.bilibili.tv.ebook.util.EbookCacheManager(activity);
        }
        if (bookshelfManager == null) {
            bookshelfManager = new com.bilibili.tv.ebook.util.BookshelfManager(activity);
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
     * 缩小视频视图到屏幕2/3,左对齐
     *
     * 兼容设计：支持视频切换后重新应用缩小布局
     */
    private void shrinkVideoView(Activity activity, int screenWidth, int screenHeight) {
        // 检查是否使用TextureView模式
        if (mybl.BiliFilter.prefer_videoview != 2) {
            Log.w(TAG_EBOOK, "当前未使用TextureView模式, prefer_videoview=" + mybl.BiliFilter.prefer_videoview);
            android.widget.Toast.makeText(activity,
                "电子书功能需要TextureView模式\n请先在个性化设置中切换",
                android.widget.Toast.LENGTH_LONG).show();
            return;
        }

        // 获取播放器上下文
        IPlayerContext playerContext = n();
        if (playerContext == null) {
            Log.e(TAG_EBOOK, "播放器上下文为空");
            return;
        }

        // 获取视频视图
        IVideoView videoViewInterface = playerContext.getIVideoView();
        if (videoViewInterface == null) {
            Log.e(TAG_EBOOK, "视频视图接口为空");
            return;
        }

        View videoView = videoViewInterface.getView();
        if (videoView == null) {
            Log.e(TAG_EBOOK, "视频视图为空");
            return;
        }

        // 检查是否是TextureView
        if (!(videoView instanceof android.view.TextureView)) {
            Log.e(TAG_EBOOK, "视频视图不是TextureView: " + videoView.getClass().getSimpleName());
            android.widget.Toast.makeText(activity,
                "当前使用的是" + videoView.getClass().getSimpleName() + "\n请切换到TextureView模式",
                android.widget.Toast.LENGTH_LONG).show();
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
        
        if (parent instanceof FrameLayout) {
            FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(
                videoWidth,
                FrameLayout.LayoutParams.MATCH_PARENT
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
                RelativeLayout.LayoutParams.MATCH_PARENT
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
                ViewGroup.LayoutParams.MATCH_PARENT
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

        // 获取播放器上下文
        IPlayerContext playerContext = n();
        if (playerContext == null) {
            Log.e(TAG_EBOOK, "播放器上下文为空，无法创建电子书面板");
            return;
        }

        // 获取视频视图
        IVideoView videoViewInterface = playerContext.getIVideoView();
        if (videoViewInterface == null) {
            Log.e(TAG_EBOOK, "视频视图接口为空，无法创建电子书面板");
            return;
        }

        View videoView = videoViewInterface.getView();
        if (videoView == null) {
            Log.e(TAG_EBOOK, "视频视图为空，无法创建电子书面板");
            return;
        }

        // 关键修复：获取视频视图的父容器（RelativeLayout容器）
        ViewGroup parent = (ViewGroup) videoView.getParent();
        if (parent == null) {
            Log.e(TAG_EBOOK, "视频视图的父容器为空，无法创建电子书面板");
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
     * 查找视频View在父容器中的索引
     */
    private int findVideoViewIndex(ViewGroup parent) {
        for (int i = 0; i < parent.getChildCount(); i++) {
            View child = parent.getChildAt(i);
            if (child instanceof android.view.TextureView ||
                child instanceof android.view.SurfaceView) {
                Log.i(TAG_EBOOK, "找到视频View在索引: " + i + ", 类型: " + child.getClass().getSimpleName());
                return i;
            }
            // 递归查找子容器中的视频View
            if (child instanceof ViewGroup) {
                int subIndex = findVideoViewIndex((ViewGroup) child);
                if (subIndex >= 0) {
                    Log.i(TAG_EBOOK, "在子容器中找到视频View，父容器索引: " + i);
                    return i; // 返回包含视频View的容器索引
                }
            }
        }
        return -1;
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
     * 关闭电子书面板(恢复视频全屏)
     */
    /**
     * 关闭当前书籍，回到电子书首页
     */
    /**
     * 关闭当前书籍，回到电子书首页
     */
    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void closeCurrentBook() {
        Log.i(TAG_EBOOK, "开始关闭当前书籍，回到电子书首页");

        // 立即保存当前阅读进度（取消防抖等待）
        saveReadingProgressImmediately();

        // 关键修复：销毁WebView，释放native内存（GL纹理/渲染进程），避免内存泄漏
        // 之前只removeAllViews()并把引用置null，WebView.destroy()从未被调用
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

    /**
     * 切换遥控器控制目标
     * @param target 控制目标（"ebook" 或 "video"）
     */
    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void switchControlTarget(String target) {
        Log.i(TAG_EBOOK, "切换控制目标: " + target);

        if (!isEbookPanelShown) {
            Log.w(TAG_EBOOK, "电子书面板未显示，无法切换控制目标");
            return;
        }

        controlTarget = target;

        // 关键修复：切换控制目标时，彻底禁用/启用电子书区域的交互
        if (target.equals("video")) {
            // 切换到控制视频：禁用电子书区域的所有交互
            if (bookshelfListView != null) {
                bookshelfListView.setFocusable(false);
                bookshelfListView.setFocusableInTouchMode(false);
                bookshelfListView.setClickable(false);
                bookshelfListView.setEnabled(false);
                bookshelfListView.clearFocus();
                Log.i(TAG_EBOOK, "禁用书架列表所有交互");
            }
            if (chapterListView != null) {
                chapterListView.setFocusable(false);
                chapterListView.setFocusableInTouchMode(false);
                chapterListView.setClickable(false);
                chapterListView.setEnabled(false);
                chapterListView.clearFocus();
                Log.i(TAG_EBOOK, "禁用章节列表所有交互");
            }
            if (ebookWebView != null) {
                ebookWebView.setFocusable(false);
                ebookWebView.setFocusableInTouchMode(false);
                ebookWebView.setEnabled(false);
                Log.i(TAG_EBOOK, "禁用WebView所有交互");
            }
            if (ebookPanel != null) {
                ebookPanel.setFocusable(false);
                ebookPanel.setFocusableInTouchMode(false);
                ebookPanel.setClickable(false);
                ebookPanel.setEnabled(false);
                Log.i(TAG_EBOOK, "禁用电子书面板所有交互");
            }
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
                // 方向键由xw.f()统一处理（上下滚动、左右翻页）
                ebookWebView.setFocusable(false);
                ebookWebView.setFocusableInTouchMode(false);
                ebookWebView.setEnabled(true);
                Log.i(TAG_EBOOK, "启用WebView所有交互");
            }
        }

        // 显示Toast提示
        Activity activity = o();
        if (activity != null) {
            if (target.equals("video")) {
                android.widget.Toast.makeText(activity, "遥控器操作已切换到视频", android.widget.Toast.LENGTH_SHORT).show();
            } else {
                android.widget.Toast.makeText(activity, "遥控器操作已切换到电子书", android.widget.Toast.LENGTH_SHORT).show();
            }
        }

        Log.i(TAG_EBOOK, "控制目标已切换为: " + target);
    }

    /**
     * 清空书架
     */
    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void clearBookshelf() {
        Log.i(TAG_EBOOK, "清空书架菜单项被点击");

        Activity activity = o();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null");
            return;
        }

        // 显示确认对话框（样式参考历史记录的确认删除对话框）
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
                    android.widget.Toast.makeText(activity, "书架已清空", android.widget.Toast.LENGTH_SHORT).show();

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

    /**
     * 删除书籍的本地缓存文件
     * 包括EPUB/MOBI解压目录和元数据缓存文件
     */
    private void deleteBookCacheFiles(String bookId) {
        if (bookId == null || o() == null) {
            Log.w(TAG_EBOOK, "bookId或Activity为空，无法删除缓存");
            return;
        }

        try {
            java.io.File cacheDir = o().getCacheDir();
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
    private void showRemoveBookDialog(final com.bilibili.tv.ebook.model.BookshelfItem item, final int position) {
        Activity activity = o();
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
                    android.widget.Toast.makeText(activity, "已删除: " + item.getTitle(), android.widget.Toast.LENGTH_SHORT).show();

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

    /**
     * 隐藏电子书区域（不清空书籍数据）
     * 用于连击三次确定键临时隐藏电子书区域，再次打开时直接显示正在阅读的书籍
     */
    private void hideEbookPanel() {
        Activity activity = o();
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

    private void closeEbookPanel() {
        Activity activity = o();
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
     * 覆写播放器销毁生命周期回调（Activity销毁时触发），兜底清理电子书资源
     * 防止用户直接退出播放页时（未先关闭电子书）WebView和面板残留
     */
    @Override // bl.xh
    public void d() {
        super.d();

        // 兜底清理：只要还有电子书资源未释放，就彻底清理
        if (ebookWebView != null || ebookPanel != null || isEbookPanelShown) {
            Log.i(TAG_EBOOK, "Activity销毁，兜底清理电子书资源");

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

            // 关键修复：释放管理器持有的Activity强引用，避免Activity无法回收
            // BookshelfManager内部持有Context强引用（构造时传入的Activity）
            bookshelfManager = null;
            ebookCacheManager = null;
            bookshelfItems = null;

            Log.i(TAG_EBOOK, "Activity销毁，电子书资源已兜底清理完成");
        }
    }

    /**
     * 缩小弹幕视图到屏幕2/3宽度,左对齐
     */
    private void shrinkDanmakuView(Activity activity, int screenWidth, int screenHeight) {
        // 查找弹幕视图
        View danmakuView = activity.findViewById(R.id.danmaku_view);
        if (danmakuView == null) {
            Log.w(TAG_EBOOK, "弹幕视图未找到");
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
        if (mybl.BiliFilter.prefer_videoview != 2) {
            Log.w(TAG_EBOOK, "当前未使用TextureView模式,无需恢复");
            return;
        }

        // 获取播放器上下文
        IPlayerContext playerContext = n();
        if (playerContext == null) {
            Log.e(TAG_EBOOK, "播放器上下文为空");
            return;
        }

        // 获取视频视图
        IVideoView videoViewInterface = playerContext.getIVideoView();
        if (videoViewInterface == null) {
            Log.e(TAG_EBOOK, "视频视图接口为空");
            return;
        }

        View videoView = videoViewInterface.getView();
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

        // 查找弹幕视图
        View danmakuView = activity.findViewById(R.id.danmaku_view);
        if (danmakuView == null) {
            Log.w(TAG_EBOOK, "弹幕视图未找到");
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

    @Override
    public void set_audio_balance_level(int level) {
        String levelStr = "off";
        AudioBalanceLevel audioLevel = AudioBalanceLevel.OFF;
        switch (level) {
            case 0:
                levelStr = "off";
                audioLevel = AudioBalanceLevel.OFF;
                break;
            case 1:
                levelStr = "standard";
                audioLevel = AudioBalanceLevel.STANDARD;
                break;
            case 2:
                levelStr = "high_dynamic";
                audioLevel = AudioBalanceLevel.HIGH_DYNAMIC;
                break;
        }
        abd.set_audio_balance_level(p(), levelStr);
        
        if (n() != null) {
            n().act("SetAudioBalanceLevel", audioLevel);
        }
        
        android.widget.Toast.makeText(o(), "音频平衡: " + o().getResources().getStringArray(R.array.audio_balance_options)[level], android.widget.Toast.LENGTH_SHORT).show();
    }

    private xj getSkipHelper() {
        yh playerContext = c();
        if (playerContext == null) return null;

        xh current = this;
        while (current != null) {
            if (current instanceof xj) {
                return (xj) current;
            }
            current = current.next();
        }
        return null;
    }

    private JSONArray getEffectiveSkips(ResolveResourceParams params) {
        JSONArray result = new JSONArray();
        long[] localSkip = null;

        Log.i("SkipSetting", "getEffectiveSkips: mAvid=" + params.mAvid + ", mListKey=" + params.mListKey);

        if (!android.text.TextUtils.isEmpty(params.mListKey)) {
            localSkip = abd.getSkipTime(p(), "skip_list_" + params.mListKey);
            Log.i("SkipSetting", "list skip: " + (localSkip != null ? localSkip[0] + "," + localSkip[1] : "null"));
        }
        if (localSkip == null || (localSkip[0] == 0 && localSkip[1] == 0)) {
            localSkip = abd.getSkipTime(p(), abd.getVideoSkipKey(params.mAvid));
            Log.i("SkipSetting", "video skip: " + (localSkip != null ? localSkip[0] + "," + localSkip[1] : "null"));
        }

        if (localSkip == null || (localSkip[0] == 0 && localSkip[1] == 0)) {
            return params.skips;
        }

        try {
            if (localSkip[0] > 0) {
                JSONObject intro = new JSONObject();
                intro.put("type", "片头");
                intro.put("start", 0);
                intro.put("end", localSkip[0]);
                result.put(intro);
            }
            if (localSkip[1] > 0 && params.mDuration > 0) {
                JSONObject outro = new JSONObject();
                long duration = params.mDuration * 1000L;
                outro.put("type", "片尾");
                outro.put("start", duration - localSkip[1]);
                outro.put("end", duration);
                result.put(outro);
            }
        } catch (Exception e) {}

        return result;
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
            com.bilibili.tv.ebook.model.ReadingProgress progress =
                new com.bilibili.tv.ebook.model.ReadingProgress(currentBook.getBookId());

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

            Log.i(TAG_EBOOK, "阅读进度已保存: 章节=" + currentChapterIndex +
                  ", 页码=" + page + ", 进度=" + progress.getProgressPercentage() + "%");
        } catch (Exception e) {
            Log.e(TAG_EBOOK, "保存阅读进度失败: " + e.getMessage());
        }
    }

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
            float density = o().getResources().getDisplayMetrics().density;
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
    private void manageChapterCache(com.bilibili.tv.ebook.model.Chapter newChapter) {
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
            com.bilibili.tv.ebook.model.Chapter oldest = cachedChapters.removeLast();
            oldest.setHtmlContent(null); // 释放HTML内容
            oldest.setPlainTextContent(null); // 释放纯文本内容
            Log.i(TAG_EBOOK, "释放早期章节内容: " + oldest.getTitle());
        }
    }

    /**
     * 清空所有章节缓存
     */
    private void clearChapterCache() {
        for (com.bilibili.tv.ebook.model.Chapter chapter : cachedChapters) {
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
    private String loadChapterContentFromFile(com.bilibili.tv.ebook.model.Chapter chapter, String extractionPath) {
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
    private void restoreReadingProgress(com.bilibili.tv.ebook.model.Book book) {
        if (book == null || ebookCacheManager == null) {
            return;
        }

        try {
            com.bilibili.tv.ebook.model.ReadingProgress progress =
                ebookCacheManager.getReadingProgress(book.getBookId());

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
    private void addToBookshelf(com.bilibili.tv.ebook.model.Book book, com.bilibili.tv.ebook.model.ReadingProgress progress) {
        if (book == null || bookshelfManager == null) {
            return;
        }

        // 添加到书架（使用当前文件路径）
        bookshelfManager.addToBookshelf(book, progress, currentBookFilePath);
    }
}