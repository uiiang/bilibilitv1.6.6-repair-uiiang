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
    private ViewGroup.LayoutParams originalVideoParams = null; // 保存原始视频布局参数(使用ViewGroup.LayoutParams以兼容不同容器)
    private ViewGroup.LayoutParams originalDanmakuParams = null; // 保存原始弹幕视图布局参数
    private boolean isFileChooserShown = false; // 文件选择器是否显示
    private long lastBackPressTime = 0; // 记录上次按返回键的时间
    private static final long DOUBLE_PRESS_INTERVAL = 2000; // 双击时间间隔（2秒）
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
        if ((keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER || keyCode == KeyEvent.KEYCODE_NUMPAD_ENTER) && !this.f) {
            this.f = true;
            a(this.g);
            a(this.g, ViewConfiguration.getLongPressTimeout());
        }
        return R();
    }

    @Override // bl.xh
    public boolean g(int keyCode, KeyEvent event) {
        // 电子书模式：拦截所有按键（除了菜单键和返回键）
        if (isEbookPanelShown && !R()) {
            Log.d(TAG_EBOOK, "电子书模式拦截按键: " + keyCode);

            // 菜单键：打开右侧菜单
            if (keyCode == KeyEvent.KEYCODE_MENU) {
                Log.i(TAG_EBOOK, "电子书模式下打开右侧菜单");
                d(true);
                return true;
            }

            // 返回键：优先关闭文件选择器
            if (keyCode == KeyEvent.KEYCODE_BACK) {
                if (isFileChooserShown) {
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

        // TODO: 这里应该打开电子书阅读器并加载文件
        // 目前只是显示Toast提示
        android.widget.Toast.makeText(o(), "已选择文件: " + filePath, android.widget.Toast.LENGTH_SHORT).show();
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

        isEbookPanelShown = false;
        Log.i(TAG_EBOOK, "电子书面板已关闭");
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