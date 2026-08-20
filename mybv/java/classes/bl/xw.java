package bl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
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
public class xw extends xh implements bbb<Message, Boolean>, PlayerMenuRight.a, com.bilibili.tv.ebook.ui.EbookHost {
    private PlayerMenuRight c;
    private List<String> d;
    private int e;
    private boolean f;

    // 电子书阅读器（点播/直播共用封装类，电子书逻辑全部委托 EbookReaderPanel 处理）
    private static final String TAG_EBOOK = "EbookReader";
    private com.bilibili.tv.ebook.ui.EbookReaderPanel ebookReaderPanel = null;

    /**
     * 懒加载获取电子书阅读面板
     * 直播 LivePlayerActivity 在创建时即初始化；点播此处按需创建（首次打开电子书时）
     */
    private com.bilibili.tv.ebook.ui.EbookReaderPanel getEbookReaderPanel() {
        if (ebookReaderPanel == null) {
            ebookReaderPanel = new com.bilibili.tv.ebook.ui.EbookReaderPanel(this);
            Log.i(TAG_EBOOK, "xw: 懒加载创建 EbookReaderPanel");
        }
        return ebookReaderPanel;
    }

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

        // 关键修复：监听视频切换事件，保持视频缩小状态（委托电子书面板处理）
        if (eventType == IEventCenter.EventType.QUALITY_SWITCH_SUCCESS ||
            eventType == IEventCenter.EventType.EPISODE_SWITCH_SUCCESS ||
            eventType == IEventCenter.EventType.SWITCH_EPISODE) {
            if (ebookReaderPanel != null && ebookReaderPanel.isEbookModeActive()) {
                Log.i(TAG_EBOOK, "视频切换事件: " + eventType + ", 电子书区域已打开，重新应用视频缩小");
                ebookReaderPanel.onVideoSwitch();
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
    public boolean f(int keyCode, KeyEvent event) {
        // 电子书模式按键路由：委托 EbookReaderPanel 统一处理
        // （三连击确定键隐藏面板/方向键滚动翻页/长按确认键打开菜单等）
        if (ebookReaderPanel != null && ebookReaderPanel.isEbookModeActive()) {
            if (ebookReaderPanel.onKeyUp(keyCode, event)) {
                return true;
            }
        }
        return R();
    }

    @Override // bl.xh
    public boolean g(int keyCode, KeyEvent event) {
        // 电子书模式按键路由：委托 EbookReaderPanel 统一处理
        // （章节列表/文件选择器/阅读页/首页的返回键逻辑、菜单键、按键拦截）
        if (ebookReaderPanel != null && ebookReaderPanel.isEbookModeActive()
                && "ebook".equals(ebookReaderPanel.getControlTarget()) && !R()) {
            if (ebookReaderPanel.onKeyDown(keyCode, event)) {
                return true;
            }
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
     * 检查是否处于电子书模式（公共方法，桥接到 EbookReaderPanel）
     */
    public boolean isEbookMode() {
        return ebookReaderPanel != null && ebookReaderPanel.isEbookModeActive();
    }

    /**
     * 检查右侧菜单是否显示（公共方法）
     */
    public boolean isMenuShown() {
        return R();
    }

    /**
     * 检查是否在电子书阅读内容页面（桥接到 EbookReaderPanel）
     */
    public boolean isEbookReadingContent() {
        return ebookReaderPanel != null && ebookReaderPanel.isEbookReadingContent();
    }

    /**
     * 检查是否控制电子书（桥接到 EbookReaderPanel）
     */
    public boolean isControlEbook() {
        return ebookReaderPanel != null && ebookReaderPanel.isControlEbook();
    }

    /**
     * 检查是否正在整理书架页面（桥接到 EbookReaderPanel）
     */
    public boolean isOrganizingShelf() {
        return ebookReaderPanel != null && ebookReaderPanel.isOrganizingShelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z) {
        v();

        // 关键修改: 先初始化菜单(根据isEbookMode状态),再处理隐藏逻辑
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

        // 关键修复：根据电子书面板状态判断打开哪个菜单（状态查询统一委托 EbookReaderPanel）
        if (ebookReaderPanel != null && ebookReaderPanel.isControlEbook()) {
            // 问题1修复：在文件列表页和章节列表页，不显示右侧菜单
            if (ebookReaderPanel.isFileChooserShown()) {
                Log.i(TAG_EBOOK, "文件列表页，不显示右侧菜单");
                return;
            }

            if (ebookReaderPanel.isChapterListShown()) {
                Log.i(TAG_EBOOK, "章节列表页，不显示右侧菜单");
                return;
            }

            // 电子书模式:显示专用菜单（菜单构建统一由 PlayerMenuRight.setEbookMode 完成）
            Log.i(TAG_EBOOK, "电子书模式:设置专用菜单");
            this.c.setEbookMode(true, ebookReaderPanel.isReadingBook(), getEbookMenuActions());
            return;
        }

        // 正常模式:显示原有菜单（setEbookMode(false) 负责清空电子书菜单状态）
        this.c.setEbookMode(false, false, getEbookMenuActions());

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
            boolean ebookModeActive = ebookReaderPanel != null && ebookReaderPanel.isEbookModeActive();
            if (ebookModeActive) {
                // 已打开电子书模式：显示"控制电子书"
                filteredMenus.add("控制电子书");
            } else {
                // 未打开电子书模式：显示"电子书"
                filteredMenus.add("电子书");
            }
            menuIndexMap.add(allMenus.length); // 使用一个不存在的索引,避免冲突
            Log.i(TAG_EBOOK, "视频右侧菜单项已添加: " + (ebookModeActive ? "控制电子书" : "电子书"));
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
        // 播放速度/播放模式采用"会话内保持"策略：
        // 静态字段有效（>=0）时优先使用静态值，保证本次播放内重开菜单圆点保持上次选择；
        // 静态字段失效（新视频构造PlayerMenuRight或离开播放页xl.i()重置）时回退缓存默认值
        int speedId = PlayerMenuRight.speed_id >= 0 ? PlayerMenuRight.speed_id : abd.get_speed_id(p());
        this.c.init_speed(arrayList3, speedId);
        int modeId = PlayerMenuRight.mode_id >= 0 ? PlayerMenuRight.mode_id : abd.get_mode_id(p());
        this.c.init_mode(Arrays.asList(resources.getStringArray(R.array.player_mode)), modeId);

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

    // ==================== 电子书委托方法（全部转发 EbookReaderPanel） ====================

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void onMenuClosed() {
        getEbookReaderPanel().onMenuClosed();
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void set_ebook_font_size(float fontSize) {
        getEbookReaderPanel().setEbookFontSize(fontSize);
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void set_ebook_color_theme(int themeIndex) {
        getEbookReaderPanel().setEbookColorTheme(themeIndex);
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void set_ebook_percent(int percentIndex) {
        getEbookReaderPanel().setEbookPercent(percentIndex);
    }

    @Override // com.bilibili.tv.player.widget.PlayerMenuRight.a
    public void set_video_position(int positionIndex) {
        getEbookReaderPanel().setVideoPosition(positionIndex);
    }

    /**
     * 处理文件选择结果（桥接到 EbookReaderPanel）
     */
    public void onEbookFileSelected(String filePath) {
        getEbookReaderPanel().onEbookFileSelected(filePath);
    }

    @Override // bl.xh
    public void h() {
        Log.i(TAG_EBOOK, "xw.h: 链销毁回调（Activity停止/退出），回收电子书资源");

        // 委托 EbookReaderPanel 统一回收电子书资源
        if (ebookReaderPanel != null) {
            ebookReaderPanel.onDestroy();
            ebookReaderPanel = null;
        }

        super.h(); // 传播到链下游
    }

    /**
     * 覆写播放器销毁生命周期回调（Activity销毁时触发），兜底清理电子书资源
     * 防止用户直接退出播放页时（未先关闭电子书）WebView和面板残留
     */
    @Override // bl.xh
    public void d() {
        super.d();

        // 兜底清理：委托 EbookReaderPanel 统一回收电子书资源
        if (ebookReaderPanel != null) {
            Log.i(TAG_EBOOK, "Activity销毁，兜底清理电子书资源");
            ebookReaderPanel.onDestroy();
            ebookReaderPanel = null;
        }
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
     * 电子书菜单动作回调（桥接到 EbookReaderPanel）
     */
    private com.bilibili.tv.ebook.ui.EbookMenuHelper.EbookActions getEbookMenuActions() {
        return new com.bilibili.tv.ebook.ui.EbookMenuHelper.EbookActions() {
            @Override
            public void openEbookReader() {
                getEbookReaderPanel().openEbookReader();
            }

            @Override
            public void openEbookFileChooser() {
                getEbookReaderPanel().openEbookFileChooser();
            }

            @Override
            public void showChapterList() {
                getEbookReaderPanel().showChapterList();
            }

            @Override
            public void organizeBookshelf() {
                getEbookReaderPanel().organizeBookshelf();
            }

            @Override
            public void closeCurrentBook() {
                getEbookReaderPanel().closeCurrentBook();
            }

            @Override
            public void switchControlTarget(String target) {
                getEbookReaderPanel().switchControlTarget(target);
            }

            @Override
            public void setEbookFontSize(float fontSize) {
                getEbookReaderPanel().setEbookFontSize(fontSize);
            }

            @Override
            public void setEbookColorTheme(int themeIndex) {
                getEbookReaderPanel().setEbookColorTheme(themeIndex);
            }

            @Override
            public void setEbookPercent(int percentIndex) {
                getEbookReaderPanel().setEbookPercent(percentIndex);
            }

            @Override
            public void setVideoPosition(int positionIndex) {
                getEbookReaderPanel().setVideoPosition(positionIndex);
            }
        };
    }

    // ==================== EbookHost 适配接口 ====================

    @Override
    public Activity getActivity() {
        return o();
    }

    @Override
    public Context getContext() {
        return p();
    }

    @Override
    public View getVideoView() {
        IPlayerContext playerContext = n();
        if (playerContext == null) {
            return null;
        }
        IVideoView videoViewInterface = playerContext.getIVideoView();
        if (videoViewInterface == null) {
            return null;
        }
        return videoViewInterface.getView();
    }

    @Override
    public ViewGroup getVideoContainer() {
        View videoView = getVideoView();
        if (videoView == null) {
            return null;
        }
        return (ViewGroup) videoView.getParent();
    }

    @Override
    public View getDanmakuView() {
        Activity activity = o();
        if (activity == null) {
            return null;
        }
        return activity.findViewById(R.id.danmaku_view);
    }

    @Override
    public boolean isVideoTextureView() {
        return mybl.BiliFilter.prefer_videoview == 2;
    }

    @Override
    public boolean isLiveMode() {
        // 点播：视频视图高度自适应，仅缩小宽度即可实现四角对齐
        return false;
    }

    @Override
    public void showMenu(boolean show) {
        d(show);
    }

    @Override
    public void onEbookDestroy() {
        // 电子书资源已由 h()/d() 委托 EbookReaderPanel.onDestroy 清理
    }

    @Override
    public void showToast(String message) {
        Activity activity = o();
        if (activity != null) {
            android.widget.Toast.makeText(activity, message, android.widget.Toast.LENGTH_SHORT).show();
        }
    }

    @Override
    public void requestVideoFocus() {
        IPlayerContext playerContext = n();
        if (playerContext != null) {
            IVideoView videoViewInterface = playerContext.getIVideoView();
            if (videoViewInterface != null && videoViewInterface.getView() != null) {
                videoViewInterface.getView().requestFocus();
            }
        }
    }
}
