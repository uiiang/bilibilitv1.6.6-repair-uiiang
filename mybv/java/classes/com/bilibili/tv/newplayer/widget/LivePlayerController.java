package com.bilibili.tv.newplayer.widget;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import bl.aap;
import bl.abd;
import bl.ach;
import bl.adl;
import bl.adz;
import bl.cj;
import bl.nv;
import bl.wm;
import bl.wn;
import bl.wr;
import bl.xa;
import bl.xb;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.newplayer.bean.PlayControllerOptionType;
import com.bilibili.tv.newplayer.video.LiveVideoPlayer;
import com.bilibili.tv.ui.auth.AuthSpaceSideActivity;
import com.bilibili.tv.widget.FixLinearLayoutManager;
import com.bilibili.tv.widget.ScalableImageView;

import bl.lr;
import java.util.*;
import mybl.BiliLiveContent;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
import tv.danmaku.videoplayer.core.media.exo.AudioBalanceLevel;

/* compiled from: BL */
/* loaded from: classes.dex */
public class LivePlayerController extends FrameLayout implements View.OnClickListener, LivePlayerMenuRight.a {
    private TextView a;
    private TextView b;
    private RecyclerView c;
    private a d;
    private FrameLayout e;
    private ImageView f;
    private LinearLayout g;
    private Animation h;
    private Animation i;
    private boolean j;
    private LiveVideoPlayer k;
    private wr l;
    private BiliLiveContent m;
    private PlayControllerOptionType[] n;
    private cj<wn> o;
    private cj<wn> p;
    private Runnable q;

    public cj<wn> qualitys;
    public cj<wn> audioBalanceList;

    public LivePlayerController(Context context) {
        this(context, null);
    }

    public LivePlayerController(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LivePlayerController(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ArrayList<PlayControllerOptionType> menuList = new ArrayList<>();
        menuList.add(PlayControllerOptionType.AVATAR);
        menuList.add(PlayControllerOptionType.DANMAKU_DISPLAY);
        menuList.add(PlayControllerOptionType.DANMAKU_SIZE);
        menuList.add(PlayControllerOptionType.DANMAKU_ALPHA);
        menuList.add(PlayControllerOptionType.MIRROR_REVERSAL);
        menuList.add(PlayControllerOptionType.VIDEO_QUALITY);
        // 音频平衡菜单在构造时不添加，播放开始后根据实际播放器类型动态添加
        this.n = menuList.toArray(new PlayControllerOptionType[0]);
        a(context);
    }

    @RequiresApi(api = 21)
    public LivePlayerController(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        ArrayList<PlayControllerOptionType> menuList = new ArrayList<>();
        menuList.add(PlayControllerOptionType.AVATAR);
        menuList.add(PlayControllerOptionType.DANMAKU_DISPLAY);
        menuList.add(PlayControllerOptionType.DANMAKU_SIZE);
        menuList.add(PlayControllerOptionType.DANMAKU_ALPHA);
        menuList.add(PlayControllerOptionType.MIRROR_REVERSAL);
        menuList.add(PlayControllerOptionType.VIDEO_QUALITY);
        // 音频平衡菜单在构造时不添加，播放开始后根据实际播放器类型动态添加
        this.n = menuList.toArray(new PlayControllerOptionType[0]);
        a(context);
    }

    private void a(Context context) {
        View.inflate(context, R.layout.layout_live_player_controller, this);
        this.g = (LinearLayout) findViewById(R.id.content);
        this.a = (TextView) findViewById(R.id.first);
        this.b = (TextView) findViewById(R.id.second);
        this.c = (RecyclerView) findViewById(R.id.recycler_view);
        this.c.setLayoutManager(new FixLinearLayoutManager(context, 0, false) { // from class: com.bilibili.tv.newplayer.widget.LivePlayerController.1
            @Override // android.support.v7.widget.RecyclerView.h
            public View d(View view, int direction) {
                if (LivePlayerController.this.c == null || view == null) {
                    return super.d(view, direction);
                }
                int pos = d((View) view.getParent());
                if (direction != View.FOCUS_LEFT) {
                    if (direction != View.FOCUS_UP) {
                        if (direction != View.FOCUS_RIGHT) {
                            if (direction == View.FOCUS_DOWN) {
                                return view;
                            }
                        } else if (pos >= H() - 1) {
                            return view;
                        }
                    } else if (LivePlayerController.this.e != null) {
                        LivePlayerController.this.e.requestFocus();
                    }
                } else if (pos <= 0) {
                    return view;
                }
                return super.d(view, direction);
            }
        });
        ArrayList arrayList = new ArrayList();
        for (PlayControllerOptionType playControllerOptionType : this.n) {
            arrayList.add(playControllerOptionType);
        }
        this.d = new a(arrayList);
        this.c.setAdapter(this.d);
        this.e = (FrameLayout) findViewById(R.id.play_layout);
        this.f = (ImageView) findViewById(R.id.play);
        this.e.setOnClickListener(this);
        this.o = new cj<>(abd.a.length);
        for (int i = 0; i < abd.a.length; i++) {
            wn wnVar = new wn();
            float f = abd.a[i];
            wnVar.a = String.valueOf(f);
            wnVar.b = Float.valueOf(f);
            this.o.b(i, wnVar);
        }
        this.p = new cj<>(abd.b.length);
        for (int i2 = 0; i2 < abd.b.length; i2++) {
            wn wnVar2 = new wn();
            float f2 = abd.b[i2];
            wnVar2.a = String.valueOf(f2);
            wnVar2.b = Float.valueOf(f2);
            this.p.b(i2, wnVar2);
        }
        
        // 初始化音频平衡菜单数据
        this.audioBalanceList = new cj<>(3);
        String[] audioBalanceLabels = new String[]{"关", "标准", "高动态"};
        String[] audioBalanceValues = new String[]{"off", "standard", "high_dynamic"};
        for (int i3 = 0; i3 < 3; i3++) {
            wn wnVar3 = new wn();
            wnVar3.a = audioBalanceLabels[i3];
            wnVar3.b = audioBalanceValues[i3];
            this.audioBalanceList.b(i3, wnVar3);
        }
    }

    public void setFirstText(String str) {
        this.a.setText(str);
    }

    public void setSecondText(String str) {
        this.b.setText(str);
    }

    public void setUpAvatar(String str) {
        if (this.d != null) {
            this.d.a(str);
        }
    }

    public void setControllerListener(wr wrVar) {
        this.l = wrVar;
    }

    public void setPlayer(LiveVideoPlayer liveVideoPlayer) {
        this.k = liveVideoPlayer;
    }

    public void setBiliLive(BiliLiveContent biliLive) {
        this.m = biliLive;
        this.qualitys = new cj<>(biliLive.mAcceptQuality.length);
        Map<Integer,String> qualityTable = new HashMap<Integer,String>();
        qualityTable.put(10000,"原画");
        qualityTable.put(400,"蓝光");
        qualityTable.put(250,"超清");
        qualityTable.put(150,"高清");
        for (int i=0;i<biliLive.mAcceptQuality.length;i++) {
            wn wnVar2 = new wn();
            wnVar2.a = qualityTable.get(biliLive.mAcceptQuality[i]);
            wnVar2.b = biliLive.mAcceptQuality[i];
            this.qualitys.b(i, wnVar2);
        }
    }

    public void updateAudioBalanceMenu() {
        if (this.d == null || this.d.b == null || this.c == null) {
            return;
        }
        
        tv.danmaku.ijk.media.player.IMediaPlayer player = wm.a().i();
        boolean isExoPlayer = player instanceof tv.danmaku.videoplayer.core.media.exo.ExoPlayerImpl;
        
        boolean hasAudioBalance = false;
        for (PlayControllerOptionType type : this.d.b) {
            if (type == PlayControllerOptionType.AUDIO_BALANCE) {
                hasAudioBalance = true;
                break;
            }
        }
        
        if (isExoPlayer && !hasAudioBalance) {
            this.d.b.add(PlayControllerOptionType.AUDIO_BALANCE);
            ArrayList arrayList = new ArrayList();
            for (PlayControllerOptionType type : this.d.b) {
                arrayList.add(type);
            }
            this.d = new a(arrayList);
            this.c.setAdapter(this.d);
        } else if (!isExoPlayer && hasAudioBalance) {
            this.d.b.remove(PlayControllerOptionType.AUDIO_BALANCE);
            ArrayList arrayList = new ArrayList();
            for (PlayControllerOptionType type : this.d.b) {
                arrayList.add(type);
            }
            this.d = new a(arrayList);
            this.c.setAdapter(this.d);
        }
    }

    /* 右侧菜单数据填充 */
    public void initRightMenu(LivePlayerMenuRight menu) {
        if (menu == null || this.m == null || this.k == null) {
            return;
        }

        // 主菜单（与点播页共用 player_menu_config 个性化设置，按配置过滤显示项）
        // 直播菜单项与点播对应：镜像→画面调节(MENU_ADJUST)、画质→清晰度(MENU_QUALITY)、
        // 弹幕开关→弹幕(MENU_DANMAKU)、弹幕大小→弹幕大小(MENU_SIZE)、弹幕透明→弹幕透明(MENU_ALPHA)、
        // 音频平衡→音频平衡(MENU_AUDIO_BALANCE)、电子书→电子书(MENU_EBOOK)
        int menuConfig = abd.get_player_menu_config(MainApplication.a().getApplicationContext());
        ArrayList<String> mainMenu = new ArrayList<>();
        ArrayList<Integer> menuIndexMap = new ArrayList<>();

        // 弹幕开关 -> 原始下标0 (MENU_DANMAKU)
        if ((menuConfig & abd.MENU_DANMAKU) != 0) {
            mainMenu.add("弹幕开关");
            menuIndexMap.add(0);
        }
        // 弹幕大小 -> 原始下标1 (MENU_SIZE)
        if ((menuConfig & abd.MENU_SIZE) != 0) {
            mainMenu.add("弹幕大小");
            menuIndexMap.add(1);
        }
        // 弹幕透明 -> 原始下标2 (MENU_ALPHA)
        if ((menuConfig & abd.MENU_ALPHA) != 0) {
            mainMenu.add("弹幕透明");
            menuIndexMap.add(2);
        }
        // 镜像 -> 原始下标3 (MENU_ADJUST 画面调节)
        if ((menuConfig & abd.MENU_ADJUST) != 0) {
            mainMenu.add("镜像");
            menuIndexMap.add(3);
        }
        // 画质 -> 原始下标4 (MENU_QUALITY 清晰度)
        if ((menuConfig & abd.MENU_QUALITY) != 0) {
            mainMenu.add("画质");
            menuIndexMap.add(4);
        }
        // 音频平衡项由updateAudioBalanceMenu根据播放器类型+配置动态插入（原始下标5）
        // 电子书入口（与点播页一致，点击后进入电子书模式菜单）-> 原始下标6 (MENU_EBOOK)
        if ((menuConfig & abd.MENU_EBOOK) != 0) {
            mainMenu.add(com.bilibili.tv.ebook.ui.EbookMenuHelper.MENU_OPEN_EBOOK);
            menuIndexMap.add(6);
        }
        menu.init_main(mainMenu);
        menu.setMenuIndexMap(menuIndexMap);

        // 弹幕开关（开/关）
        ArrayList<String> danmakuDisplay = new ArrayList<>();
        danmakuDisplay.add("弹幕开");
        danmakuDisplay.add("弹幕关");
        menu.init_danmaku_display(danmakuDisplay, this.k.G ? 0 : 1);

        // 弹幕大小
        ArrayList<String> sizes = new ArrayList<>();
        for (float f : abd.a) {
            sizes.add(String.valueOf(f));
        }
        menu.init_size(sizes, findFloatIndex(abd.a, abd.f(MainApplication.a().getApplicationContext())));

        // 弹幕透明
        ArrayList<String> alphas = new ArrayList<>();
        for (float f2 : abd.b) {
            alphas.add(String.valueOf(f2));
        }
        menu.init_alpha(alphas, findFloatIndex(abd.b, abd.g(MainApplication.a().getApplicationContext())));

        // 镜像
        ArrayList<String> mirror = new ArrayList<>();
        mirror.add("镜像开");
        mirror.add("镜像关");
        menu.init_mirror(mirror, this.k.p() ? 0 : 1);

        // 画质
        ArrayList<String> qualities = new ArrayList<>();
        for (int q : this.m.mAcceptQuality) {
            qualities.add(qualityName(q));
        }
        menu.init_quality(qualities, findQualityIndex());

        // 音频平衡
        ArrayList<String> audioBalance = new ArrayList<>();
        audioBalance.add("关");
        audioBalance.add("标准");
        audioBalance.add("高动态");
        String currentLevel = abd.get_audio_balance_level(MainApplication.a().getApplicationContext());
        int abIndex = 0;
        if ("standard".equals(currentLevel)) {
            abIndex = 1;
        } else if ("high_dynamic".equals(currentLevel)) {
            abIndex = 2;
        }
        menu.init_audio_balance(audioBalance, abIndex);

        // 根据实际播放器类型决定是否显示音频平衡菜单
        tv.danmaku.ijk.media.player.IMediaPlayer player = wm.a().i();
        boolean isExoPlayer = player instanceof tv.danmaku.videoplayer.core.media.exo.ExoPlayerImpl;
        menu.updateAudioBalanceMenu(isExoPlayer);
    }

    private int findFloatIndex(float[] arr, float value) {
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == value) {
                return i;
            }
        }
        return 0;
    }

    private int findQualityIndex() {
        int position = 0;
        if (this.m != null && this.m.mAcceptQuality != null) {
            for (int i = 0; i < this.m.mAcceptQuality.length; i++) {
                if (this.m.mAcceptQuality[i] == this.m.mCurrentQuality) {
                    position = i;
                }
            }
        }
        return position;
    }

    private String qualityName(int quality) {
        switch (quality) {
            case 10000:
                return "原画";
            case 400:
                return "蓝光";
            case 250:
                return "超清";
            case 150:
                return "高清";
            default:
                return String.valueOf(quality);
        }
    }

    @Override // com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.a
    public void setDanmakuDisplay(boolean z) {
        if (this.k == null) {
            return;
        }
        if (this.k.G != z) {
            this.k.a(z);
        }
    }

    @Override // com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.a
    public void setDanmakuSize(float f) {
        if (this.k != null) {
            this.k.setDanmakuSize(f);
        }
        abd.a(MainApplication.a().getApplicationContext(), f);
    }

    @Override // com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.a
    public void setDanmakuAlpha(float f) {
        if (this.k != null) {
            this.k.setDanmakuAlpha(f);
        }
        abd.b(MainApplication.a().getApplicationContext(), f);
    }

    @Override // com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.a
    public void toggleMirror() {
        if (this.k != null) {
            this.k.o();
        }
    }

    @Override // com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.a
    public void setQuality(int i) {
        if (this.m == null || this.qualitys == null || i < 0 || i >= this.qualitys.b()) {
            return;
        }
        wn wnVar = this.qualitys.a(i);
        if (wnVar.b instanceof Integer) {
            Activity activity = adl.a(getContext());
            this.m.mCurrentQuality = ((Integer) wnVar.b).intValue();
            if (this.m.getPlayUrl() == 1 && activity != null) {
                lr.b(activity.getApplicationContext(), "登录后可获取更高画质");
            }
            if (this.k != null) {
                this.k.a(this.m.mPlayUrl, this.m.mTitle, Integer.valueOf(this.m.mRoomId));
                this.k.m();
                this.k.requestFocus();
            }
        }
    }

    @Override // com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.a
    public void setAudioBalance(int i) {
        if (this.audioBalanceList == null || i < 0 || i >= this.audioBalanceList.b()) {
            return;
        }
        wn wnVar = this.audioBalanceList.a(i);
        if (wnVar.b instanceof String) {
            String level = (String) wnVar.b;
            abd.set_audio_balance_level(MainApplication.a().getApplicationContext(), level);
            AudioBalanceLevel audioLevel = AudioBalanceLevel.fromPrefValue(level);
            wm.a().setAudioBalanceLevel(audioLevel);
            Activity activity = adl.a(getContext());
            if (activity != null) {
                lr.b(activity.getApplicationContext(), "音频平衡：" + wnVar.a);
            }
        }
    }

    @Override // com.bilibili.tv.newplayer.widget.LivePlayerMenuRight.a
    public void onMenuClosed() {
        if (this.k != null) {
            this.k.requestFocus();
        }
    }

    public void a() {
        a(!this.j);
    }

    public boolean getShow() {
        return this.j;
    }

    public void a(boolean z) {
        if (this.j == z) {
            return;
        }
        if (z) {
            setVisibility(View.VISIBLE);
            aap.a(this.e);
            if (this.h == null) {
                this.h = AnimationUtils.loadAnimation(getContext(), R.anim.in_from_bottom);
                this.h.setAnimationListener(new Animation.AnimationListener() { // from class: com.bilibili.tv.newplayer.widget.LivePlayerController.2
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        LivePlayerController.this.b();
                    }
                });
            }
            setBackgroundResource(R.color.black_60);
            this.g.startAnimation(this.h);
            this.j = true;
            return;
        }
        this.k.requestFocus();
        if (this.i == null) {
            this.i = AnimationUtils.loadAnimation(getContext(), R.anim.out_to_bottom);
            this.i.setAnimationListener(new Animation.AnimationListener() { // from class: com.bilibili.tv.newplayer.widget.LivePlayerController.3
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    LivePlayerController.this.setVisibility(View.INVISIBLE);
                    LivePlayerController.this.setBackgroundResource(R.color.transparent);
                }
            });
        }
        this.g.startAnimation(this.i);
        this.j = false;
    }

    public void a(int i, KeyEvent keyEvent) {
        if (this.j) {
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.q == null) {
            this.q = new Runnable() { // from class: com.bilibili.tv.newplayer.widget.LivePlayerController.4
                @Override // java.lang.Runnable
                public void run() {
                    LivePlayerController.this.a(false);
                }
            };
        }
        removeCallbacks(this.q);
        postDelayed(this.q, 3500L);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.k == null || adl.a(getContext()) == null || view.getId() != R.id.play_layout) {
            return;
        }
        boolean e = wm.e();
        if (e) {
            this.k.e();
        } else {
            this.k.f();
            removeCallbacks(this.q);
            a(false);
        }
        this.f.setSelected(e);
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public class a extends adz<RecyclerView.v> implements View.OnClickListener {
        private ArrayList<PlayControllerOptionType> b;
        private String c;

        @Override // bl.adz
        public int e() {
            return 1;
        }

        public a(ArrayList<PlayControllerOptionType> arrayList) {
            this.b = arrayList;
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public RecyclerView.v a(ViewGroup viewGroup, int i) {
            return xb.a(viewGroup);
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public void a(RecyclerView.v vVar, int i) {
            PlayControllerOptionType playControllerOptionType;
            if (this.b == null || (playControllerOptionType = this.b.get(i)) == null) {
                return;
            }
            adl adlVar = adl.a;
            Activity a = adl.a(LivePlayerController.this.getContext());
            if (a == null) {
                return;
            }
            xb xbVar = (xb) vVar;
            b(a, playControllerOptionType, xbVar.n, xbVar.o);
            xbVar.p.setTag(playControllerOptionType);
            xbVar.p.setOnClickListener(this);
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public int a() {
            if (this.b == null) {
                return 0;
            }
            return this.b.size();
        }

        public void a(String str) {
            this.c = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Activity a;
            if (LivePlayerController.this.k == null || (a = adl.a(LivePlayerController.this.getContext())) == null) {
                return;
            }
            Object tag = view.getTag();
            LivePlayerController.this.b();
            if (tag instanceof PlayControllerOptionType) {
                TextView textView = (TextView) view.findViewById(R.id.text);
                ImageView imageView = (ImageView) view.findViewById(R.id.img);
                if (textView == null || imageView == null) {
                    return;
                }
                a(a, (PlayControllerOptionType) tag, textView, imageView);
            }
        }

        private void a(Activity activity, PlayControllerOptionType playControllerOptionType, TextView textView, ImageView imageView) {
            int i = 0;
            switch (playControllerOptionType) {
                case AVATAR:
                    LivePlayerController.this.a(false);
                    if (LivePlayerController.this.m != null) {
                        AuthSpaceSideActivity.start(activity, LivePlayerController.this.m.mUid, LivePlayerController.this.m.mUname);
                        return;
                    }
                    return;
                case DANMAKU_DISPLAY:
                    LivePlayerController.this.k.a(!LivePlayerController.this.k.G);
                    b(activity, playControllerOptionType, textView, imageView);
                    return;
                case DANMAKU_SIZE:
                    LivePlayerController.this.a(false);
                    String valueOf = String.valueOf(abd.f(MainApplication.a().getApplicationContext()));
                    int b = LivePlayerController.this.o.b();
                    int i2 = 0;
                    while (i < b) {
                        if (((wn) LivePlayerController.this.o.a(i)).equals(valueOf)) {
                            i2 = i;
                        }
                        i++;
                    }
                    xa.a aVar = new xa.a(activity);
                    aVar.a(1).a("弹幕大小").b(i2).a(LivePlayerController.this.o, new xa.c() { // from class: com.bilibili.tv.newplayer.widget.LivePlayerController.a.1
                        @Override // bl.xa.c
                        public void a(xa xaVar, View view, int i3) {
                            wn wnVar = (wn) LivePlayerController.this.o.a(i3);
                            if (wnVar.b instanceof Float) {
                                Float f = (Float) wnVar.b;
                                LivePlayerController.this.k.setDanmakuSize(f.floatValue());
                                abd.a(MainApplication.a().getApplicationContext(), f.floatValue());
                            }
                            xaVar.dismiss();
                        }
                    });
                    aVar.a().show();
                    return;
                case DANMAKU_ALPHA:
                    LivePlayerController.this.a(false);
                    String valueOf2 = String.valueOf(abd.g(MainApplication.a().getApplicationContext()));
                    int b2 = LivePlayerController.this.p.b();
                    int i3 = 0;
                    while (i < b2) {
                        if (((wn) LivePlayerController.this.p.a(i)).equals(valueOf2)) {
                            i3 = i;
                        }
                        i++;
                    }
                    xa.a aVar2 = new xa.a(activity);
                    aVar2.a(1).a("弹幕透明度").b(i3).a(LivePlayerController.this.p, new xa.c() { // from class: com.bilibili.tv.newplayer.widget.LivePlayerController.a.2
                        @Override // bl.xa.c
                        public void a(xa xaVar, View view, int i4) {
                            wn wnVar = (wn) LivePlayerController.this.p.a(i4);
                            if (wnVar.b instanceof Float) {
                                Float f = (Float) wnVar.b;
                                LivePlayerController.this.k.setDanmakuAlpha(f.floatValue());
                                abd.b(MainApplication.a().getApplicationContext(), f.floatValue());
                            }
                            xaVar.dismiss();
                        }
                    });
                    aVar2.a().show();
                    return;
                case MIRROR_REVERSAL:
                    LivePlayerController.this.k.o();
                    b(activity, playControllerOptionType, textView, imageView);
                    return;
                case VIDEO_QUALITY:
                    LivePlayerController.this.a(false);
                    int position=0;
                    BiliLiveContent biliLiveContent=LivePlayerController.this.m;
                    for(int i4=0;i4<biliLiveContent.mAcceptQuality.length;i4++){
                        if(biliLiveContent.mAcceptQuality[i4]==biliLiveContent.mCurrentQuality)position=i4;
                    }
                    xa.a aVar3 = new xa.a(activity);
                    aVar3.a(1).a("画质").b(position).a(LivePlayerController.this.qualitys, new xa.c() { // from class: com.bilibili.tv.newplayer.widget.LivePlayerController.a.1
                        @Override // bl.xa.c
                        public void a(xa xaVar, View view, int i5) {
                            wn wnVar = (wn) LivePlayerController.this.qualitys.a(i5);
                            if (wnVar.b instanceof Integer) {
                                biliLiveContent.mCurrentQuality=(Integer)wnVar.b;
                                if(biliLiveContent.getPlayUrl()==1){lr.b(activity.getApplicationContext(), "登录后可获取更高画质");
;}
                                LivePlayerController.this.k.a(biliLiveContent.mPlayUrl, biliLiveContent.mTitle, Integer.valueOf(biliLiveContent.mRoomId));
                                LivePlayerController.this.k.m();
                                LivePlayerController.this.k.requestFocus();
                            }
                            xaVar.dismiss();
                        }
                    });
                    aVar3.a().show();
                    return;
                case AUDIO_BALANCE:
                    LivePlayerController.this.a(false);
                    String currentLevel = abd.get_audio_balance_level(MainApplication.a().getApplicationContext());
                    int audioBalancePosition = 0;
                    if ("standard".equals(currentLevel)) {
                        audioBalancePosition = 1;
                    } else if ("high_dynamic".equals(currentLevel)) {
                        audioBalancePosition = 2;
                    }
                    xa.a aVar4 = new xa.a(activity);
                    aVar4.a(1).a("音频平衡").b(audioBalancePosition).a(LivePlayerController.this.audioBalanceList, new xa.c() {
                        @Override
                        public void a(xa xaVar, View view, int i6) {
                            wn wnVar = (wn) LivePlayerController.this.audioBalanceList.a(i6);
                            if (wnVar.b instanceof String) {
                                String level = (String) wnVar.b;
                                abd.set_audio_balance_level(MainApplication.a().getApplicationContext(), level);
                                AudioBalanceLevel audioLevel = AudioBalanceLevel.fromPrefValue(level);
                                wm.a().setAudioBalanceLevel(audioLevel);
                                lr.b(activity.getApplicationContext(), "音频平衡：" + wnVar.a);
                            }
                            xaVar.dismiss();
                        }
                    });
                    aVar4.a().show();
                    return;
                default:
                    return;
            }
        }

        private void b(Activity activity, PlayControllerOptionType playControllerOptionType, TextView textView, ImageView imageView) {
            switch (playControllerOptionType) {
                case AVATAR:
                    textView.setText("UP投稿");
                    if (!TextUtils.isEmpty(this.c)) {
                        nv.a().a(abd.get_thumb_url_d(LivePlayerController.this.getContext(), this.c), imageView);
                    }
                    if (imageView instanceof ScalableImageView) {
                        ((ScalableImageView) imageView).setRoundAsCircle(true);
                        return;
                    }
                    return;
                case DANMAKU_DISPLAY:
                    imageView.setBackgroundResource(R.drawable.selector_live_player_danmaku_button);
                    imageView.setSelected(!LivePlayerController.this.k.G);
                    textView.setText(LivePlayerController.this.k.G ? "弹幕开" : "弹幕关");
                    return;
                case DANMAKU_SIZE:
                    imageView.setBackgroundResource(R.drawable.ic_format_size_white_48dp);
                    textView.setText("弹幕大小");
                    return;
                case DANMAKU_ALPHA:
                    imageView.setBackgroundResource(R.drawable.ic_sort_by_alpha_white_48dp);
                    textView.setText("弹幕透明");
                    return;
                case MIRROR_REVERSAL:
                    imageView.setBackgroundResource(R.drawable.ic_hourglass_empty_white_48dp);
                    textView.setText(LivePlayerController.this.k.p() ? "镜像开" : "镜像关");
                    return;
                case VIDEO_QUALITY:
                    imageView.setBackgroundResource(R.drawable.ic_round_hd_white_48dp);
                    textView.setText("画质");
                    return;
                case AUDIO_BALANCE:
                    imageView.setBackgroundResource(R.drawable.ic_sort_by_alpha_white_48dp);
                    textView.setText("音频平衡");
                    return;
                default:
                    return;
            }
        }
    }
}