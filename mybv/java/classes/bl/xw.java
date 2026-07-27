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

    // 电子书章节导航相关
    private com.bilibili.tv.ebook.model.Book currentBook = null; // 当前书籍
    private int currentChapterIndex = 0; // 当前章节索引
    private android.webkit.WebView ebookWebView = null; // 电子书WebView
    private android.widget.ListView chapterListView = null; // 章节列表View（使用ListView替代RecyclerView）
    private boolean isChapterListShown = false; // 章节列表是否显示
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
        Log.i(TAG_EBOOK, "xw.f: 收到按键 " + keyCode + ", isEbookPanelShown=" + isEbookPanelShown + ", R()=" + R());

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
                return true;
            }

            if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                Log.i(TAG_EBOOK, "xw.f: 电子书阅读页面：向下滚动");
                ebookWebView.scrollBy(0, 200);
                return true;
            }

            // 左右键：整页翻页（使用scrollBy代替pageUp/pageDown）
            if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT) {
                int height = ebookWebView.getHeight();
                int scrollY = ebookWebView.getScrollY();
                Log.i(TAG_EBOOK, "xw.f: 电子书阅读页面：向上翻页, height=" + height + ", scrollY=" + scrollY);

                // 检查是否在章节顶部
                if (scrollY == 0) {
                    // 已经在章节顶部，检查是否有上一章节
                    if (currentBook != null && currentChapterIndex > 0) {
                        Log.i(TAG_EBOOK, "xw.f: 到达章节顶部，跳转到上一章节的底部");
                        // 跳转到上一章节，并标记为显示底部
                        displayBookContent(currentBook, currentChapterIndex - 1, true);
                        return true;
                    } else {
                        Log.i(TAG_EBOOK, "xw.f: 已经在第一章，无法向前翻页");
                        return true;
                    }
                }

                // 正常翻页
                if (height > 0) {
                    ebookWebView.scrollBy(0, -height);
                } else {
                    // 如果height为0，使用默认值800
                    Log.w(TAG_EBOOK, "xw.f: WebView height为0，使用默认值800");
                    ebookWebView.scrollBy(0, -800);
                }
                return true;
            }

            if (keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                int height = ebookWebView.getHeight();
                int scrollY = ebookWebView.getScrollY();
                int contentHeight = ebookWebView.getContentHeight();
                Log.i(TAG_EBOOK, "xw.f: 电子书阅读页面：向下翻页, height=" + height + ", scrollY=" + scrollY + ", contentHeight=" + contentHeight);

                // 检查是否在章节底部（考虑WebView的缩放）
                // contentHeight是HTML内容高度，需要乘以密度才能和scrollY比较
                float density = o().getResources().getDisplayMetrics().density;
                int contentHeightPx = (int) (contentHeight * density);
                boolean isAtBottom = (scrollY + height >= contentHeightPx - 10); // -10像素容差

                if (isAtBottom) {
                    // 已经在章节底部，检查是否有下一章节
                    if (currentBook != null && currentChapterIndex < currentBook.getChapters().size() - 1) {
                        Log.i(TAG_EBOOK, "xw.f: 到达章节底部，跳转到下一章节的顶部");
                        // 跳转到下一章节，默认显示顶部
                        displayBookContent(currentBook, currentChapterIndex + 1, false);
                        return true;
                    } else {
                        Log.i(TAG_EBOOK, "xw.f: 已经在最后一章，无法向后翻页");
                        return true;
                    }
                }

                // 正常翻页
                if (height > 0) {
                    ebookWebView.scrollBy(0, height);
                } else {
                    // 如果height为0，使用默认值800
                    Log.w(TAG_EBOOK, "xw.f: WebView height为0，使用默认值800");
                    ebookWebView.scrollBy(0, 800);
                }
                return true;
            }
        }

        if ((keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER || keyCode == KeyEvent.KEYCODE_NUMPAD_ENTER) && !this.f) {
            this.f = true;
            a(this.g);
            a(this.g, ViewConfiguration.getLongPressTimeout());
        }
        return R();
    }

    @Override // bl.xh
    public boolean g(int keyCode, KeyEvent event) {
        Log.i(TAG_EBOOK, "xw.g: 收到按键 " + keyCode + ", isEbookPanelShown=" + isEbookPanelShown + ", R()=" + R());

        // 电子书模式：拦截所有按键（除了菜单键、返回键、确认键）
        if (isEbookPanelShown && !R()) {
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
                Log.i(TAG_EBOOK, "电子书模式下打开右侧菜单");
                d(true);
                return true;
            }

            // 返回键：优先关闭章节列表，再关闭文件选择器
            if (keyCode == KeyEvent.KEYCODE_BACK) {
                if (isChapterListShown) {
                    // 优先关闭章节列表
                    Log.i(TAG_EBOOK, "关闭章节列表");
                    hideChapterList();
                    return true;
                } else if (isFileChooserShown) {
                    // 关闭文件选择器
                    Log.i(TAG_EBOOK, "关闭文件选择器，回到电子书默认界面");
                    hideFileChooser();
                    return true;
                } else {
                    // 双击退出逻辑
                    long currentTime = System.currentTimeMillis();
                    if (currentTime - lastBackPressTime < DOUBLE_PRESS_INTERVAL) {
                        // 第二次按返回键（在时间间隔内），退出电子书模式
                        Log.i(TAG_EBOOK, "电子书模式下关闭电子书");
                        lastBackPressTime = 0; // 重置时间戳
                        openEbookReader(); // 切换电子书模式（关闭）
                        return true;
                    } else {
                        // 第一次按返回键，或超过时间间隔，显示提示
                        lastBackPressTime = currentTime;
                        Log.i(TAG_EBOOK, "第一次按返回键，显示提示");
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

        // 菜单打开时,临时隐藏电子书面板(避免被覆盖)
        if (z && isEbookPanelShown && ebookPanel != null) {
            Log.i(TAG_EBOOK, "菜单打开,临时隐藏电子书面板");
            ebookPanel.setVisibility(View.INVISIBLE); // 使用INVISIBLE而不是GONE,保持布局位置
        }

        if (this.c.isShown() != z) {
            this.c.a(z);
        }

        // 菜单关闭时,恢复显示电子书面板
        if (!z && isEbookPanelShown && ebookPanel != null) {
            Log.i(TAG_EBOOK, "菜单关闭,恢复显示电子书面板");
            ebookPanel.setVisibility(View.VISIBLE);
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

        // 检查是否在电子书模式
        if (isEbookPanelShown && com.bilibili.tv.FeatureConfig.isEbookReaderEnabled()) {
            // 电子书模式:显示专用菜单
            Log.i(TAG_EBOOK, "电子书模式:设置专用菜单");

            List<String> ebookMenus = new ArrayList<>();
            ebookMenus.add("章节列表");
            ebookMenus.add("字体大小");
            ebookMenus.add("选择文件");
            ebookMenus.add("关闭电子书");

            this.c.b(ebookMenus, 0);
            this.c.setMenuIndexMap(new ArrayList<>()); // 清空索引映射

            // 不需要初始化其他菜单项(清晰度、弹幕等)
            return;
        }

        // 正常模式:显示原有菜单
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
            // 音频平衡菜单仅在ExoPlayer模式下显示
            if (menuFlags[i] == abd.MENU_AUDIO_BALANCE && !isExoPlayer) {
                continue;
            }
            if ((menuConfig & menuFlags[i]) != 0) {
                filteredMenus.add(allMenus[i]);
                menuIndexMap.add(i);
            }
        }

        // 新增：在菜单列表最下方添加"电子书"选项(仅当功能启用时)
        if (com.bilibili.tv.FeatureConfig.isEbookReaderEnabled()) {
            filteredMenus.add("电子书");
            menuIndexMap.add(allMenus.length); // 使用一个不存在的索引,避免冲突
            Log.i("EbookReader", "电子书菜单项已添加");
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
    public void openEbookReader() {
        Log.i(TAG_EBOOK, "openEbookReader() called, isEbookPanelShown=" + isEbookPanelShown);

        if (isEbookPanelShown) {
            // 如果已显示,则关闭
            closeEbookPanel();
        } else {
            // 否则打开
            showEbookPanel();
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

        // 在电子书面板中显示文件选择器(不使用独立Activity)
        showFileChooserInPanel();
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

        Log.i(TAG_EBOOK, "文件选择器已隐藏，回到电子书默认界面");

        // TODO: 显示电子书默认界面（比如欢迎文本或书架）
        // 目前暂时显示空白灰色背景
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

        // 在后台线程解析电子书
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    // 创建解析器工厂
                    com.bilibili.tv.ebook.parser.EbookParserFactory factory =
                        new com.bilibili.tv.ebook.parser.EbookParserFactory(o());

                    // 生成书籍ID
                    String bookId = com.bilibili.tv.ebook.parser.EbookParserFactory.generateBookId(filePath);

                    // 解析电子书文件
                    com.bilibili.tv.ebook.model.Book book = factory.parse(filePath, bookId);

                    if (book == null) {
                        Log.e(TAG_EBOOK, "电子书解析失败");
                        hideLoadingIndicator();

                        // 在主线程显示错误提示
                        o().runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                android.widget.Toast.makeText(o(),
                                    "电子书解析失败，请检查文件格式",
                                    android.widget.Toast.LENGTH_SHORT).show();
                            }
                        });
                        return;
                    }

                    Log.i(TAG_EBOOK, "电子书解析成功: " + book.getTitle() +
                          ", 章节数: " + book.getChapters().size());

                    // 隐藏加载提示
                    hideLoadingIndicator();

                    // 在主线程显示书籍内容
                    o().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            displayBookContent(book);
                        }
                    });

                } catch (Exception e) {
                    Log.e(TAG_EBOOK, "解析电子书异常", e);
                    hideLoadingIndicator();

                    // 在主线程显示错误提示
                    o().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            android.widget.Toast.makeText(o(),
                                "解析异常: " + e.getMessage(),
                                android.widget.Toast.LENGTH_SHORT).show();
                        }
                    });
                }
            }
        }).start();
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
        displayBookContent(book, chapterIndex, false); // 默认显示顶部
    }

    /**
     * 显示书籍内容（在WebView中显示指定章节）
     * @param book 书籍对象
     * @param chapterIndex 章节索引
     * @param scrollToBottom 是否滚动到章节底部（用于从上一章节跳转时）
     */
    private void displayBookContent(com.bilibili.tv.ebook.model.Book book, int chapterIndex, boolean scrollToBottom) {
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

        Log.i(TAG_EBOOK, "开始显示书籍内容: " + book.getTitle() +
              ", 章节: " + (chapterIndex + 1) + "/" + book.getChapters().size() +
              ", scrollToBottom=" + scrollToBottom);

        // 清空电子书面板（确保移除所有视图，包括文件选择器和章节列表）
        if (ebookPanel != null) {
            ebookPanel.removeAllViews();
            Log.i(TAG_EBOOK, "已清空电子书面板");
        }

        // 清空WebView引用（需要重新创建）
        ebookWebView = null;

        // 创建或复用WebView
        if (ebookWebView == null) {
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
            settings.setTextSize(android.webkit.WebSettings.TextSize.NORMAL);

            // 关键修复：设置为不可聚焦，避免Android焦点系统拦截方向键
            ebookWebView.setFocusable(false);
            ebookWebView.setFocusableInTouchMode(false);

            // 添加到面板
            if (ebookPanel != null) {
                ebookPanel.addView(ebookWebView);
            }
        }

        // 获取章节内容
        com.bilibili.tv.ebook.model.Chapter chapter = book.getChapters().get(chapterIndex);
        String htmlContent = chapter.getHtmlContent();

        if (htmlContent == null || htmlContent.isEmpty()) {
            htmlContent = "<html><body><h1>" + chapter.getTitle() + "</h1><p>章节内容为空</p></body></html>";
        }

        // 构建完整HTML（添加样式）
        String styledHtml = "<html><head>" +
            "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" +
            "<style>body { font-size: 18px; line-height: 1.6; padding: 20px; }</style>" +
            "</head><body>" + htmlContent + "</body></html>";

        // 设置WebViewClient，用于监听页面加载完成（如果需要滚动到底部）
        if (scrollToBottom) {
            ebookWebView.setWebViewClient(new android.webkit.WebViewClient() {
                @Override
                public void onPageFinished(android.webkit.WebView view, String url) {
                    super.onPageFinished(view, url);
                    // 页面加载完成后，滚动到底部
                    Log.i(TAG_EBOOK, "页面加载完成，滚动到章节底部");
                    view.post(new Runnable() {
                        @Override
                        public void run() {
                            int contentHeight = view.getContentHeight();
                            float density = o().getResources().getDisplayMetrics().density;
                            int contentHeightPx = (int) (contentHeight * density);
                            int viewHeight = view.getHeight();
                            int scrollY = contentHeightPx - viewHeight;
                            if (scrollY > 0) {
                                view.scrollTo(0, scrollY);
                                Log.i(TAG_EBOOK, "已滚动到章节底部: scrollY=" + scrollY);
                            }
                        }
                    });
                }
            });
        }

        // 加载内容到WebView
        ebookWebView.loadDataWithBaseURL(null, styledHtml, "text/html", "UTF-8", null);

        // 关键修复：设置WebView为不可聚焦，避免Android焦点系统拦截方向键
        // scrollBy()是编程式滚动，不依赖焦点，所以WebView不需要焦点
        ebookWebView.setFocusable(false);
        ebookWebView.setFocusableInTouchMode(false);

        Log.i(TAG_EBOOK, "WebView已显示章节: " + chapter.getTitle() + ", 设置为不可聚焦避免拦截方向键");
    }

    /**
     * 显示章节列表
     */
    @Override
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

        // 添加延时，确保右侧菜单完全关闭后再显示章节列表
        new android.os.Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                createChapterListView();
            }
        }, 200); // 延迟200毫秒
    }

    /**
     * 创建章节列表视图（内部方法）
     * 完全复制文件选择列表的实现方式
     */
    private void createChapterListView() {
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

                // 创建章节列表容器
                android.widget.FrameLayout listContainer = new android.widget.FrameLayout(o());
                listContainer.setBackgroundColor(Color.parseColor("#2A2A2A"));
                android.widget.FrameLayout.LayoutParams containerParams = new android.widget.FrameLayout.LayoutParams(
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT,
                    android.widget.FrameLayout.LayoutParams.MATCH_PARENT
                );
                listContainer.setLayoutParams(containerParams);

                // 创建标题
                android.widget.TextView titleView = new android.widget.TextView(o());
                titleView.setText("章节列表 (" + currentBook.getChapters().size() + "章)");
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

                // 准备章节标题列表
                List<String> chapterTitles = new ArrayList<>();
                for (com.bilibili.tv.ebook.model.Chapter chapter : currentBook.getChapters()) {
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

                // 创建Adapter（完全复制文件选择列表的实现）
                android.widget.ArrayAdapter<String> adapter = new android.widget.ArrayAdapter<String>(o(),
                    android.R.layout.simple_list_item_1,
                    chapterTitles
                ) {
                    @Override
                    public View getView(int position, View convertView, ViewGroup parent) {
                        View view = super.getView(position, convertView, parent);
                        if (view instanceof android.widget.TextView) {
                            android.widget.TextView textView = (android.widget.TextView) view;
                            textView.setTextColor(Color.WHITE);
                            textView.setTextSize(16);
                            textView.setPadding(24, 20, 24, 20);
                        }

                        // 设置选中状态的背景色（完全复制文件选择列表）
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

                // 设置选中项监听器，动态更新背景色（完全复制文件选择列表）
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

                // 自动请求焦点，确保遥控器可以直接操作（完全复制文件选择列表）
                chapterListView.post(new Runnable() {
                    @Override
                    public void run() {
                        chapterListView.requestFocus();
                        Log.i(TAG_EBOOK, "章节列表已请求焦点");
                    }
                });

                // 设置点击事件
                chapterListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                        Log.i(TAG_EBOOK, "点击章节: " + position);
                        
                        // 跳转到指定章节
                        if (currentBook != null) {
                            displayBookContent(currentBook, position);
                        }
                        
                        // 隐藏章节列表
                        hideChapterList();
                    }
                });

                listContainer.addView(chapterListView);

                // 添加到电子书面板
                ebookPanel.addView(listContainer);

                // 添加详细日志
                Log.i(TAG_EBOOK, "章节列表已添加到电子书面板，子视图数: " + ebookPanel.getChildCount());
                Log.i(TAG_EBOOK, "章节列表已显示，当前章节: " + currentChapterIndex);
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
                // 移除章节列表容器（包含标题和ListView）
                if (ebookPanel != null) {
                    // 查找并移除章节列表容器
                    for (int i = ebookPanel.getChildCount() - 1; i >= 0; i--) {
                        android.view.View child = ebookPanel.getChildAt(i);
                        if (child instanceof android.widget.FrameLayout) {
                            // 检查是否是章节列表容器（包含标题）
                            android.widget.FrameLayout container = (android.widget.FrameLayout) child;
                            if (container.getChildCount() > 0 && container.getChildAt(0) instanceof android.widget.TextView) {
                                android.widget.TextView firstChild = (android.widget.TextView) container.getChildAt(0);
                                if (firstChild.getText() != null && firstChild.getText().toString().contains("章节列表")) {
                                    Log.i(TAG_EBOOK, "找到章节列表容器，移除");
                                    ebookPanel.removeViewAt(i);
                                    break;
                                }
                            }
                        }
                    }
                    chapterListView = null;
                }

                // 恢复WebView显示
                if (ebookWebView != null) {
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

        Log.i(TAG_EBOOK, "屏幕尺寸: " + screenWidth + "x" + screenHeight);

        // 1. 缩小视频画面到屏幕2/3,左对齐
        shrinkVideoView(activity, screenWidth, screenHeight);

        // 2. 缩小弹幕视图到屏幕2/3,左对齐(与视频同步)
        shrinkDanmakuView(activity, screenWidth, screenHeight);

        // 3. 右侧1/3显示灰色背景面板
        showGrayBackgroundPanel(activity, screenWidth, screenHeight);

        isEbookPanelShown = true;
        Log.i(TAG_EBOOK, "电子书面板已显示");
    }

    /**
     * 缩小视频视图到屏幕2/3,左对齐
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

        // 保存原始布局参数
        ViewGroup.LayoutParams currentParams = videoView.getLayoutParams();
        originalVideoParams = new ViewGroup.LayoutParams(currentParams.width, currentParams.height);
        Log.i(TAG_EBOOK, "原始视频布局参数已保存: width=" + originalVideoParams.width + ", height=" + originalVideoParams.height);

        // 缩小视频到2/3宽度,左对齐(使用与父容器匹配的LayoutParams)
        int videoWidth = screenWidth * 2 / 3;
        ViewGroup.LayoutParams params;

        if (parent instanceof FrameLayout) {
            FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(
                videoWidth,
                FrameLayout.LayoutParams.MATCH_PARENT
            );
            flParams.gravity = android.view.Gravity.LEFT;
            params = flParams;
        } else if (parent instanceof RelativeLayout) {
            RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(
                videoWidth,
                RelativeLayout.LayoutParams.MATCH_PARENT
            );
            rlParams.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
            params = rlParams;
        } else {
            // 其他容器类型,使用通用LayoutParams
            params = new ViewGroup.LayoutParams(
                videoWidth,
                ViewGroup.LayoutParams.MATCH_PARENT
            );
        }

        videoView.setLayoutParams(params);

        Log.i(TAG_EBOOK, "视频已缩小: " + videoWidth + "x" + screenHeight + ", 左对齐");
    }

    /**
     * 显示灰色背景面板
     */
    private void showGrayBackgroundPanel(Activity activity, int screenWidth, int screenHeight) {
        // 获取根布局
        ViewGroup rootView = (ViewGroup) activity.findViewById(android.R.id.content);
        if (rootView == null) {
            rootView = (ViewGroup) activity.getWindow().getDecorView();
        }

        // 创建灰色背景面板
        if (ebookPanel == null) {
            ebookPanel = new FrameLayout(activity);
            ebookPanel.setBackgroundColor(Color.parseColor("#333333")); // 灰色背景

            // 设置布局参数(右侧1/3)
            FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(
                screenWidth / 3,
                FrameLayout.LayoutParams.MATCH_PARENT
            );
            params.gravity = Gravity.RIGHT;

            // 添加到根布局
            rootView.addView(ebookPanel, params);

            Log.i(TAG_EBOOK, "灰色背景面板已创建并添加到布局");
        } else {
            ebookPanel.setVisibility(View.VISIBLE);
            Log.i(TAG_EBOOK, "灰色背景面板已显示");
        }
    }

    /**
     * 关闭电子书面板(恢复视频全屏)
     */
    private void closeEbookPanel() {
        Activity activity = o();
        if (activity == null) {
            Log.e(TAG_EBOOK, "Activity is null, cannot close ebook panel");
            return;
        }

        Log.i(TAG_EBOOK, "开始关闭电子书面板");

        // 1. 隐藏灰色背景面板
        if (ebookPanel != null) {
            ebookPanel.setVisibility(View.GONE);
            Log.i(TAG_EBOOK, "灰色背景面板已隐藏");
        }

        // 2. 恢复视频全屏
        restoreVideoView(activity);

        // 关键修复：清除所有电子书状态，避免影响后续视频播放
        isEbookPanelShown = false;
        isChapterListShown = false;
        isFileChooserShown = false;
        isLoadingEbook = false;
        currentBook = null;
        currentChapterIndex = 0;
        ebookWebView = null;
        chapterListView = null;
        loadingProgressBar = null;
        loadingTextView = null;
        lastBackPressTime = 0;

        Log.i(TAG_EBOOK, "电子书面板已关闭，所有状态已清除");
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

        // 计算缩小后的宽度(屏幕2/3)
        int danmakuWidth = screenWidth * 2 / 3;

        // 根据父容器类型使用对应的LayoutParams
        ViewGroup.LayoutParams params;
        if (parent instanceof FrameLayout) {
            FrameLayout.LayoutParams flParams = new FrameLayout.LayoutParams(danmakuWidth, ViewGroup.LayoutParams.MATCH_PARENT);
            flParams.gravity = Gravity.LEFT;
            params = flParams;
        } else if (parent instanceof RelativeLayout) {
            RelativeLayout.LayoutParams rlParams = new RelativeLayout.LayoutParams(danmakuWidth, ViewGroup.LayoutParams.MATCH_PARENT);
            rlParams.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
            params = rlParams;
        } else {
            params = new ViewGroup.LayoutParams(danmakuWidth, ViewGroup.LayoutParams.MATCH_PARENT);
        }

        danmakuView.setLayoutParams(params);
        Log.i(TAG_EBOOK, "弹幕已缩小: " + danmakuWidth + "x" + screenHeight + ", 左对齐");
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
}