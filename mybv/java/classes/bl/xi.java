package bl;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.graphics.Bitmap;
import bl.xh;
import com.bilibili.bangumi.api.BiliBangumiSeason;
import com.bilibili.lib.media.resource.MediaResource;
import com.bilibili.lib.media.resource.PlayerCodecConfig;
import com.bilibili.tv.R;
import com.bilibili.tv.player.basic.context.PlayerParams;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import com.bilibili.tv.player.interfaces.IEventCenter;
import com.bilibili.tv.player.widget.PlayerBufferingView;
import com.bilibili.tv.player.widget.PlayerSeekBar;
import java.util.GregorianCalendar;
import java.util.Locale;
import tv.danmaku.android.log.BLog;
import android.util.Log;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaMetadataRetriever;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
import tv.danmaku.videoplayer.core.context.BiliPlayerContext;
import tv.danmaku.videoplayer.core.context.IPlayerContext;
import tv.danmaku.videoplayer.core.media.PlayerReleaseEventManager;
import tv.danmaku.videoplayer.core.videoview.AspectRatio;

import tv.danmaku.videoplayer.core.context.PlayerEvents;
import tv.danmaku.videoplayer.core.videoview.IVideoView;
import tv.danmaku.videoplayer.core.media.exo.ExoPlayerImpl;
import com.bilibili.tv.api.video.VideoShot;
import com.bilibili.okretro.GeneralResponse;
import mybl.MyBiliApiService;
import com.bilibili.tv.MainApplication;
import bl.mg;
import bl.pz;
import bl.qa;
import bl.qb;
import bl.vo;
import bl.we;
import com.alibaba.fastjson.JSONObject;
import mybl.LogUtil;

/* compiled from: BL */
/* loaded from: classes.dex */
public class xi extends xh implements bbb<Message, Boolean> {
    private yd c;
    private IPlayerContext d;
    private ViewGroup e;
    private ViewGroup f;
    private ViewGroup g;
    private TextView h;
    private TextView i;
    private TextView j;
    private aar k;
    private PlayerSeekBar l;
    private PlayerBufferingView m;
    private View n;
    private TextView o;
    private volatile long p;
    private boolean isSliding = false;
    private boolean isLongPress = false;
    private boolean r = false;
    private boolean s = false;
    private VideoShot videoShot;
    private long currentAid;
    private long currentCid;
    private String currentBvid;
    private int currentPage;
    private ViewGroup seekPreviewGroup;
    private ImageView seekPreviewSnapshot;
    private TextView seekPreviewTimeCurrent;
    private TextView seekPreviewTimeTotal;
    private SeekBar seekPreviewSeekbar;
    
    private com.bilibili.tv.player.BufferingOverlayController bufferingOverlayController;
    private Runnable hideSeekPreviewRunnable = new Runnable() {
        @Override
        public void run() {
            hideSeekPreview();
        }
    };
    private Runnable t = new Runnable() { // from class: bl.xi.1
        @Override // java.lang.Runnable
        public void run() {
            xi.this.v();
        }
    };

    public static String error_message;

    // 控制进度条中是否显示截图预览
    private static final boolean ENABLE_SEEK_PREVIEW_SNAPSHOT = false;

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    public boolean onInfo2(IMediaPlayer iMediaPlayer, int i, int i2, long j) {
        return false;
    }

    public xi() {
        this.b = new aaq(this);
    }

    @Override // bl.xh
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.activity_player, viewGroup, false);
    }

    @Override // bl.xh
    public void a(View view, Bundle bundle) {
        this.e = (ViewGroup) view.findViewById(R.id.root);
        this.o = (TextView) view.findViewById(R.id.clock);
        this.g = (ViewGroup) view.findViewById(R.id.bottom);
        this.f = (ViewGroup) view.findViewById(R.id.top);
        this.h = (TextView) view.findViewById(R.id.title);
        this.j = (TextView) view.findViewById(R.id.time_current);
        this.i = (TextView) view.findViewById(R.id.time_total);
        this.l = (PlayerSeekBar) view.findViewById(R.id.seekbar_group);
        this.m = (PlayerBufferingView) view.findViewById(R.id.buffering_group);
        this.k = new aar();
        this.k.a((ViewGroup) a(R.id.preparing));
        this.k.b();
        initSeekPreview(view);
        a(o().getIntent(), false);
        super.a(view, bundle);
    }
    
    private void initSeekPreview(View view) {
        ViewStub seekPreviewStub = (ViewStub) view.findViewById(R.id.seek_preview_group);
        if (seekPreviewStub != null) {
            this.seekPreviewGroup = (ViewGroup) seekPreviewStub.inflate();
            this.seekPreviewSnapshot = (ImageView) this.seekPreviewGroup.findViewById(R.id.snapshot_preview);
            this.seekPreviewTimeCurrent = (TextView) this.seekPreviewGroup.findViewById(R.id.preview_time_current);
            this.seekPreviewTimeTotal = (TextView) this.seekPreviewGroup.findViewById(R.id.preview_time_total);
            this.seekPreviewSeekbar = (SeekBar) this.seekPreviewGroup.findViewById(R.id.preview_seekbar);
            this.seekPreviewGroup.setVisibility(View.GONE);
            Log.i("SeekPreview", "initSeekPreview: initialized");
        } else {
            Log.i("SeekPreview", "initSeekPreview: seek_preview_group not found");
        }
    }
    
    private void showSeekPreview() {
        if (this.seekPreviewGroup != null) {
            this.seekPreviewGroup.setVisibility(View.VISIBLE);
            this.seekPreviewGroup.bringToFront();
            Log.i("SeekPreview", "showSeekPreview: visible");
        }
        removeHideSeekPreviewCallback();
        this.e.postDelayed(this.hideSeekPreviewRunnable, 2000);
    }
    
    private void hideSeekPreview() {
        if (this.seekPreviewGroup != null) {
            this.seekPreviewGroup.setVisibility(View.GONE);
            Log.i("SeekPreview", "hideSeekPreview: gone");
        }
    }
    
    private void removeHideSeekPreviewCallback() {
        if (this.e != null) {
            this.e.removeCallbacks(this.hideSeekPreviewRunnable);
        }
    }
    
    private void updateSeekPreview(int progress, int max) {
        updateSeekPreview(progress, max, true);
    }
    
    private void updateSeekPreview(int progress, int max, boolean showSnapshot) {
        Log.i("SeekPreview", "=== updateSeekPreview called ===");
        Log.i("SeekPreview", "progress=" + progress + "ms, max=" + max + "ms");
        Log.i("SeekPreview", "previewTimeCurrent=" + aan.a(progress) + ", previewTimeTotal=" + aan.a(max));
        
        if (this.seekPreviewSeekbar != null) {
            this.seekPreviewSeekbar.setMax(max);
            this.seekPreviewSeekbar.setProgress(progress);
        }
        if (this.seekPreviewTimeCurrent != null) {
            this.seekPreviewTimeCurrent.setText(aan.a(progress));
        }
        if (this.seekPreviewTimeTotal != null) {
            this.seekPreviewTimeTotal.setText(aan.a(max));
        }
        
        // 根据常量控制是否显示截图
        if (!ENABLE_SEEK_PREVIEW_SNAPSHOT) {
            if (this.seekPreviewSnapshot != null) {
                this.seekPreviewSnapshot.setVisibility(View.GONE);
                Log.i("SeekPreview", "updateSeekPreview: snapshot disabled by constant");
            }
            return;
        }
        
        if (!showSnapshot) {
            if (this.seekPreviewSnapshot != null) {
                this.seekPreviewSnapshot.setVisibility(View.GONE);
                Log.i("SeekPreview", "updateSeekPreview: snapshot hidden (long press)");
            }
            return;
        }
        
        if (this.l != null && this.seekPreviewSnapshot != null) {
            int timeSeconds = progress / 1000;
            Log.i("SeekPreview", "snapshot calculation: progress=" + progress + "ms, timeSeconds=" + timeSeconds + "s");
            
            this.l.loadSnapshotAsync(timeSeconds, new PlayerSeekBar.SnapshotLoadCallback() {
                @Override
                public void onLoadSuccess(Bitmap bitmap) {
                    if (seekPreviewSnapshot != null) {
                        seekPreviewSnapshot.setImageBitmap(bitmap);
                        seekPreviewSnapshot.setVisibility(View.VISIBLE);
                        Log.i("SeekPreview", "onLoadSuccess: snapshot visible");
                    }
                }
                
                @Override
                public void onLoadFailed() {
                    if (seekPreviewSnapshot != null) {
                        seekPreviewSnapshot.setVisibility(View.GONE);
                        Log.i("SeekPreview", "onLoadFailed: snapshot gone");
                    }
                }
            });
        }
    }

    @Override // bl.xh
    public void e() {
        super.e();
        if (K()) {
            B();
            this.r = true;
        }
    }

    @Override // bl.xh
    public void f() {
        super.f();
        if (J() && this.r) {
            F();
        }
    }

    @Override // bl.xh
    public ViewGroup l() {
        if (a() != null) {
            return a().l();
        }
        return this.e;
    }

    @Override // bl.xh
    public boolean f(int keyCode, KeyEvent event) {
        android.util.Log.i("ShotMenuBug", "xi.f: keyCode=" + keyCode + ", action=" + event.getAction());

        // 电子书模式：拦截所有按键（除了菜单键和返回键）
        // 查找xw handler，检查是否处于电子书模式
        xh handler = this;
        while (handler != null) {
            if (handler instanceof xw) {
                xw xwInstance = (xw) handler;
                if (xwInstance.isEbookMode() && !xwInstance.isMenuShown()) {
                    android.util.Log.i("ShotMenuBug", "xi.f: 电子书模式，拦截按键 " + keyCode);
                    // 只拦截方向键和确定键
                    if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT
                        || keyCode == KeyEvent.KEYCODE_DPAD_RIGHT
                        || keyCode == KeyEvent.KEYCODE_DPAD_UP
                        || keyCode == KeyEvent.KEYCODE_DPAD_DOWN
                        || keyCode == KeyEvent.KEYCODE_DPAD_CENTER
                        || keyCode == KeyEvent.KEYCODE_ENTER) {
                        return true; // 拦截按键
                    }
                }
                break;
            }
            handler = handler.next();
        }

        switch (keyCode) {
            case KeyEvent.KEYCODE_DPAD_LEFT:
            case KeyEvent.KEYCODE_DPAD_RIGHT:
                xh handler2 = this;
                while (handler2 != null) {
                    handler2 = handler2.next();
                    if (handler2 instanceof xl) {
                        xl xlInstance = (xl) handler2;
                        boolean isShowing = xlInstance.isShotMenuShowing();
                        android.util.Log.i("ShotMenuBug", "xi.f: found xl, isShotMenuShowing=" + isShowing);
                        if (isShowing) {
                            android.util.Log.i("ShotMenuBug", "xi.f: shot menu showing, ignoring LEFT/RIGHT key");
                            return false;
                        }
                        break;
                    }
                }
                
                if (!this.isSliding) {
                    aal.a(x() / 1000);
                    this.isSliding = true;
                    this.isLongPress = false;
                }
                if (event.getRepeatCount() > 0) {
                    this.isLongPress = true;
                }
                int a = aal.a(keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) * 1000;
                int targetProgress = Math.max(0, Math.min(a, I()));
                int maxProgress = I();
                int videoDuration = this.l != null ? this.l.getDuration() : 0;
                Log.i("SeekPreview", "=== f() called ===");
                Log.i("SeekPreview", "targetProgress=" + targetProgress + "ms (" + aan.a(targetProgress) + ")");
                Log.i("SeekPreview", "maxProgress=" + maxProgress + "ms (" + aan.a(maxProgress) + ")");
                Log.i("SeekPreview", "videoDuration=" + videoDuration + "s");
                Log.i("SeekPreview", "bottomSeekBar duration=" + (this.l != null ? this.l.getDuration() : "null"));
                this.l.a(targetProgress, true);
                showSeekPreview();
                updateSeekPreview(targetProgress, I(), !this.isLongPress);
                return true;
            default:
                return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // bl.xh
    public boolean g(int keyCode, KeyEvent event) {
        // 电子书模式：拦截所有按键（除了菜单键和返回键）
        // 查找xw handler，检查是否处于电子书模式
        xh handler = this;
        while (handler != null) {
            if (handler instanceof xw) {
                xw xwInstance = (xw) handler;
                if (xwInstance.isEbookMode() && !xwInstance.isMenuShown()) {
                    android.util.Log.i("ShotMenuBug", "xi.g: 电子书模式，拦截按键 " + keyCode);
                    // 菜单键和返回键由xw.g()处理
                    if (keyCode != KeyEvent.KEYCODE_MENU && keyCode != KeyEvent.KEYCODE_BACK) {
                        return true; // 拦截其他按键
                    }
                }
                break;
            }
            handler = handler.next();
        }

        switch (keyCode) {
            case KeyEvent.KEYCODE_BACK:
                if (s()) {
                    v();
                    return true;
                }
                return false;
            case KeyEvent.KEYCODE_DPAD_UP:
                tt();
                return true;
            case KeyEvent.KEYCODE_DPAD_DOWN:
                return false;
            case KeyEvent.KEYCODE_DPAD_LEFT:
                if (this.isSliding) {
                    int a = aal.a(false);
                    long x = x();
                    int min = Math.max(0, Math.min(Math.min(a * 1000, x() + IjkMediaMetadataRetriever.IJK_ONERROR), I()));
                    c(min);
                    aal.a();
                    this.isSliding = false;
                    a(IEventCenter.EventType.SEEK, false, Long.valueOf(x), Long.valueOf(min));
                }
                return false;
            case KeyEvent.KEYCODE_DPAD_RIGHT:
                if (this.isSliding) {
                    int a2 = aal.a(true);
                    long x2 = x();
                    int min2 = Math.min(Math.max(a2 * 1000, x() + 10000), I());
                    c(min2);
                    aal.a();
                    this.isSliding = false;
                    a(IEventCenter.EventType.SEEK, true, Long.valueOf(x2), Long.valueOf(min2));
                }
                return false;
            case KeyEvent.KEYCODE_ENTER:
            case KeyEvent.KEYCODE_DPAD_CENTER:
            case KeyEvent.KEYCODE_NUMPAD_ENTER:
                T();
                return true;
            default:
                return false;
        }
    }

    private void T() {
        D();
        if(s()){if(!mybl.BiliFilter.progressbar_on && !this.n.isShown())v();}
        else {P();super.t();}
    }


    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.xh
    public void t() {
        a(this.t);
        P();
        if(!mybl.BiliFilter.progressbar_on)a(this.t, 6000L);
        super.t();
    }

    public void tt() {
        // 电子书模式：不显示进度预览菜单
        xh handler = this;
        while (handler != null) {
            if (handler instanceof xw) {
                xw xwInstance = (xw) handler;
                if (xwInstance.isEbookMode() && !xwInstance.isMenuShown()) {
                    android.util.Log.i("ShotMenuBug", "tt: 电子书模式，不显示进度预览菜单");
                    return;
                }
                break;
            }
            handler = handler.next();
        }

        if(mybl.BiliFilter.progressbar_on){
            if(s())v();
            else P();
        }else{
            a(this.t);
            P();
            a(this.t, 6000L);
        }
        super.t();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.xh
    public boolean s() {
        return (this.f.isShown() && this.g.isShown()) || super.s();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.xh
    public void v() {
        if (this.g != null && this.f != null) {
            this.g.setVisibility(View.INVISIBLE);
            this.f.setVisibility(View.INVISIBLE);
        }
        super.v();
    }

    protected void P() {
        if (this.g == null || this.f == null) {
            return;
        }
        this.g.setVisibility(View.VISIBLE);
        this.f.setVisibility(View.VISIBLE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.xh
    public View a(int i) {
        if (this.e == null) {
            return null;
        }
        return this.e.findViewById(i);
    }

    @Override // bl.xh
    public yd m() {
        return this.c;
    }

    @Override // bl.xh
    public IPlayerContext n() {
        return this.d;
    }

    @Override // bl.xh
    public void h() {
        super.h();
    }

    @Override // bl.xh
    public void d() {
        Activity o = o();
        if (o != null) {
            PlayerReleaseEventManager.getInstance().unregister(o.hashCode());
        }
        if (l != null) {
            l.clearCache();
        }
        super.d();
        r();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // bl.xh, android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        boolean z = true;
        if (o() == null) {
            return false;
        }
        switch(message.what) {
            case 10100:
                this.b.sendMessageDelayed(this.b.obtainMessage(5000202, Long.valueOf(System.currentTimeMillis())), 10000L);
                break;
            case 10211:
                U();
                IPlayerContext context = n();
                if (context != null && !context.isAttachedToView(this.e)) {
                    context.attachVideoView(this.e);
                }
                break;
            case 20100:
                b(message);
                break;
            case 5000200:
                Q();
                break;
            case 5000202:
                Long l = (Long) message.obj;
                if (l != null) {
                    long diff = System.currentTimeMillis() - l.longValue();
                    if (diff >= 10000 && diff < 18000) {
                        e(R.string.PlayerReactTips_too_slowly);
                    }
                }
                break;
            case 10201:
                Log.i("PlaySpeed", "[XI_10201] RESOLVE_PREPARED received, calling c(message)");
                c(message);
                break;
            case 10202:
                if (K()) {
                    C();
                }
                this.b.removeMessages(5000202);
                e(R.string.PlayerReactTips_resolve_failed);
                break;
            case 10203:
            case 10204:
                break;
            default:
                BLog.ifmt("BasicTVPlayerAdapter", "handled default:%d %s", Integer.valueOf(message.what), true);
                z = false;
                break;
        }
        BLog.ifmt("BasicTVPlayerAdapter", "handled:%d %s", Integer.valueOf(message.what), Boolean.valueOf(z));
        return z || !super.handleMessage(message);
    }

    private void U() {
        PlayerParams b = b();
        IPlayerContext n = n();
        if (b == null || n == null || this.s) {
            return;
        }
        n.addPlayerEventListener(new IPlayerContext.PlayerEventListener() { // from class: bl.xi.2
            @Override // tv.danmaku.videoplayer.core.context.IPlayerContext.PlayerEventListener
            public void onPlayerEvent(int i, Object... objArr) {
                if (i == PlayerEvents.PLAYER_EVENT_RELEASED) {
                    xi.this.s = false;
                }
            }
        });
        this.s = true;
    }

    private void b(Message message) {
        xh.a aVar = (xh.a) message.obj;
        IPlayerContext n = n();
        if (aVar == null || n == null || J() || L()) {
            this.b.removeMessages(IjkMediaPlayer.FFP_PROP_INT64_BIT_RATE);
            N();
            return;
        }
        int i = aVar.b;
        int i2 = aVar.a;
        int currentPosition = n.getCurrentPosition();
        long j = aVar.c;
        BLog.vfmt("BasicTVPlayerAdapter", "buffering end  %d -> %d", Integer.valueOf(i2), Integer.valueOf(currentPosition));
        if (currentPosition == i2) {
            currentPosition = i2;
        } else if (Math.abs(currentPosition - i2) < 5000 || i >= 3) {
            this.b.removeMessages(IjkMediaPlayer.FFP_PROP_INT64_BIT_RATE);
            this.m.setVisibility(View.GONE);
            return;
        } else {
            BLog.vfmt("BasicTVPlayerAdapter", "[%d] continue buffering due to too far seek %d -> %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(currentPosition));
            i++;
        }
        this.b.removeMessages(IjkMediaPlayer.FFP_PROP_INT64_BIT_RATE);
        Message obtainMessage = this.b.obtainMessage(IjkMediaPlayer.FFP_PROP_INT64_BIT_RATE);
        aVar.a = currentPosition;
        aVar.b = i;
        aVar.c = j;
        obtainMessage.obj = aVar;
        this.b.sendMessageDelayed(obtainMessage, 500L);
    }

    private void c(Message message) {
        Boolean bool = (Boolean) message.obj;
        this.b.removeMessages(5000202);
        onInfo(null, IMediaPlayer.MEDIA_INFO_BUFFERING_START, 0);
        MediaResource mediaResource = b().mVideoParams.mMediaResource;
        if (mediaResource == null || mediaResource.d() == null) {
            e(R.string.PlayerReactTips_unknown_error);
            return;
        }
        if (bool != null && bool.booleanValue()) {
            c(true);
        } else {
            A();
        }
        if(!mybl.BiliFilter.progressbar_on)v();
        R();
        a(IEventCenter.EventType.RESOLVE_SUCCESS, b());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.xh
    public void u() {
        super.u();
        Q();
        if (J()) {
            d(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.xh
    public void w() {
        super.w();
        d(false);
    }

    @Override // bl.xh
    public void E() {
        super.E();
        if (s()) {
            d(true);
        }
    }

    @Override // bl.xh
    public void G() {
        super.G();
        d(false);
    }

    protected void Q() {
        if (this.p >= Long.MAX_VALUE) {
            this.p = 0L;
        }
        V();
        if ((this.p == 0 || K()) && !this.isSliding) {
            int I = I();
            int x = x();
            if (I > 0 && x > -1) {
                b(x, I);
                a(x, I);
            }
        }
        this.b.removeMessages(5000200);
        if (s()) {
            this.p++;
            this.b.sendEmptyMessageDelayed(5000200, 800L);
        } else {
            this.p = 0L;
        }
    }

    private void V() {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        this.o.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(gregorianCalendar.get(11)), Integer.valueOf(gregorianCalendar.get(12))));
    }

    private void a(int i, int i2) {
        if (this.l == null) {
            return;
        }
        this.l.setMax(i2);
        this.l.setProgress(i);
        IPlayerContext n = n();
        if (n != null) {
            this.l.setSecondaryProgress((i2 * n.getBufferPercentage()) / 100);
        }
    }

    private void b(int i, int i2) {
        if (i <= -1 || i2 <= 0) {
            return;
        }
        this.j.setText(aan.a(i));
        this.i.setText(aan.a(i2));
    }

    @Override // bl.xh
    public void a(Intent intent) {
        super.a(intent);
        if (intent.getExtras() == null || intent.getExtras().isEmpty()) {
            return;
        }
        o().setIntent(intent);
        a(intent, true);
    }

    private void a(Intent intent, boolean z) {
        Activity o = o();
        if (o == null) {
            return;
        }
        Bundle extras = intent.getExtras();
        PlayerParams a = extras != null ? zs.a(o, extras) : null;
        if (a == null) {
            o.finish();
            return;
        }
        if (this.c != null && a.mVideoParams.obtainResolveParams().mCid != this.c.c().a.mVideoParams.obtainResolveParams().mCid) {
            this.c.b();
        }
        
        long cid = a.mVideoParams.obtainResolveParams().mCid;
        mybl.VideoViewParams.setCurrentVideo(String.valueOf(cid));
        
        yh yhVar = new yh();
        yhVar.a = a;
        this.c = new yd(o(), yhVar, new yt(), new zi(), new yx(), new za(), new ze(), new yu());
        this.d = new BiliPlayerContext(o(), a.mVideoParams, a.mDanmakuParams, S());
        this.c.a(this.d);
        this.c.a(new xd());
        c().a = a;
        PlayerParams b = b();
        if (b == null) {
            o.finish();
            return;
        }
        this.c.a(this.b);
        this.c.a(this, this, this, this, this, this, this);
        this.c.a();
        R();
        String a2 = yr.a(b);
        String coverUrl = yr.d(b);
        android.util.Log.d("CoverDebug", "========== xi.d() Cover Info ==========");
        android.util.Log.d("CoverDebug", "coverUrl from yr.d(b) = " + coverUrl);
        String pageTitle = null;
        if (b.mVideoParams != null && b.mVideoParams.mResolveParams != null) {
            if (b.mVideoParams.mResolveParamsArray != null && b.mVideoParams.mResolveParamsArray.length > 1) {
                pageTitle = b.mVideoParams.mResolveParams.mPageTitle;
            }
        }
        android.util.Log.i("LoadingTitle", "mainTitle(a2)=" + a2 + " | pageTitle=" + pageTitle + " | isBangumi=" + b.isBangumi());
        if (b.isBangumi()) {
            if (TextUtils.isEmpty(a2)) {
                a2 = BiliBangumiSeason.getReadableIndexTitle(b.mVideoParams.mResolveParams.mPageIndex);
            } else {
                a2 = BiliBangumiSeason.getReadableIndexTitle(b.mVideoParams.mResolveParams.mPageIndex) + " - " + a2;
            }
        } else if (pageTitle != null && !pageTitle.isEmpty() && 
                   b.mVideoParams.mResolveParamsArray != null && 
                   b.mVideoParams.mResolveParamsArray.length > 1) {
            if (a2 != null && !a2.isEmpty() && a2.equals(pageTitle)) {
                android.util.Log.i("LoadingTitle", "mainTitle equals pageTitle, hide tv_loading_page");
                pageTitle = null;
            } else {
                android.util.Log.i("LoadingTitle", "mainTitle != pageTitle, show tv_loading_page: " + pageTitle);
            }
        }
        android.util.Log.i("LoadingTitle", "final mainTitle: " + a2 + " | final pageTitle: " + pageTitle);
        this.k.b(lp.a(o.getString(R.string.player_loading_title), a2));
        this.k.a(coverUrl, pageTitle);
    }

    private void e(int i) {
        this.b.removeMessages(5000202);
        if (!bll.c(p())) {
            i = R.string.PlayerReactTips_network_problem;
        }
        if(xi.error_message==null||xi.error_message.isEmpty())xi.error_message=p().getString(i);
        if (this.k != null) {
            this.k.a(xi.error_message);
        }
        xi.error_message=null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.xh
    public void r() {
        if (this.c != null) {
            this.c.b();
        }
        if (this.d != null) {
            this.d.attachDanmakuView(null, true, 0);
            try {
                this.d.release();
            } catch (Exception unused) {
            }
        }
        this.b.a();
        super.r();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.xh
    public void A() {
        c(false);
    }

    protected void c(boolean z) {
        if (this.d != null) {
            this.d.play(z);
        }
    }

    @Override // bl.xh
    public void B() {
        if (n() == null) {
            return;
        }
        super.B();
    }

    @Override // bl.xh
    public void C() {
        super.C();
        IPlayerContext n = n();
        if (n != null) {
            n.release();
        }
        yd m = m();
        if (m != null) {
            m.b();
        }
    }

    private void d(boolean z) {
        if (this.n == null) {
            this.n = ((ViewStub) a(R.id.tv_toggle_icon)).inflate();
        }
        this.n.setVisibility(z ? View.VISIBLE : View.GONE);
    }

    @Override // bl.xh
    public void F() {
        if (n() == null) {
            return;
        }
        if (L()) {
            A();
        }
        super.F();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0058 A[RETURN] */
    @Override // bl.xh, tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onInfo(IMediaPlayer iMediaPlayer, int what, int extra) {
        boolean z = false;
        super.onInfo(iMediaPlayer, what, extra);
        if (what != 801) {
            switch (what) {
                case IMediaPlayer.MEDIA_INFO_BUFFERING_START /* 701 */:
                    M();
                    if (this.b != null) {
                        this.b.removeMessages(IjkMediaPlayer.FFP_PROP_INT64_BIT_RATE);
                        Message obtainMessage = this.b.obtainMessage(IjkMediaPlayer.FFP_PROP_INT64_BIT_RATE);
                        xh.a a = ((xh.a)null).a();
                        a.a = x();
                        a.b = 0;
                        a.c = System.currentTimeMillis();
                        obtainMessage.obj = a;
                        this.b.sendMessage(obtainMessage);
                    }
                    break;
                case IMediaPlayer.MEDIA_INFO_BUFFERING_END /* 702 */:
                    if (this.b != null) {
                        this.b.removeMessages(IjkMediaPlayer.FFP_PROP_INT64_BIT_RATE);
                    }
                    N();
                    break;
                default:
                    break;
            }
            return !z;
        }else{
            BLog.v("BasicTVPlayerAdapter", "media not seekable");
            return z;
        }
    }

    @Override // bl.xh, tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
    public boolean onError(IMediaPlayer iMediaPlayer, int i, int i2) {
        super.onError(iMediaPlayer, i, i2);
        
        mybl.VideoViewParams.reportPlaybackFailed();
        
        PlayerCodecConfig y = y();
        if (y.d < y.e || !y.a.equals(PlayerCodecConfig.Player.NONE)) {
            return true;
        }
        e(R.string.PlayerReactTips_play_failed);
        return true;
    }

    @Override // bl.xh, tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
    public void onPrepared(IMediaPlayer iMediaPlayer) {
        Log.i("PlaySpeed", "[XI_ON_PREPARED] onPrepared() called, video ready to play");
        mybl.VideoViewParams.reportPlaybackSuccess();
        
        if (n() != null) {
            F();
        }
        if (this.k.a()) {
            this.k.c();
        }
        if (O()) {
            N();
        }
        
        try {
            IPlayerContext playerContext = n();
            if (playerContext != null) {
                IVideoView videoView = playerContext.getIVideoView();
                if (videoView != null) {
                    IMediaPlayer mediaPlayer = videoView.getMediaPlayer();
                    if (mediaPlayer != null && mediaPlayer instanceof ExoPlayerImpl) {
                        ExoPlayerImpl exoPlayer = (ExoPlayerImpl) mediaPlayer;
                        
                        exoPlayer.setErrorListener(new ExoPlayerImpl.PlayerErrorListener() {
                            @Override
                            public void onPlayerError(int errorCode, String errorMessage, Integer httpCode) {
                                Log.i("xi", "[ERROR_LISTENER_CALLBACK] Received player error: code=" + errorCode + 
                                      ", http=" + (httpCode != null ? httpCode : "null") + ", message=" + errorMessage);
                                
                                int effectiveErrorCode = (httpCode != null) ? httpCode : errorCode;
                                if (effectiveErrorCode == 403 || effectiveErrorCode == 404 || effectiveErrorCode == 410) {
                                    Log.i("xi", "[ERROR_LISTENER_CALLBACK] HTTP error detected: " + effectiveErrorCode);
                                    
                                    Log.i("xi", "[ERROR_LISTENER_CALLBACK] Triggering error refresh via static method");
                                    com.bilibili.tv.player.PlayerActivityUrlRefreshHelper.triggerErrorRefresh(effectiveErrorCode, errorMessage);
                                }
                            }
                        });
                        
                        Log.i("xi", "[ERROR_LISTENER] Error listener setup successfully in onPrepared");
                    }
                }
            }
        } catch (IllegalAccessError e) {
            Log.w("xi", "[ERROR_LISTENER] IllegalAccessError when accessing player (likely IjkPlayer), skipping error listener setup");
        } catch (Exception e) {
            Log.e("xi", "[ERROR_LISTENER] Failed to setup error listener in onPrepared: " + e.getMessage());
        }
        
        this.b.sendEmptyMessage(5000200);
        
        PlayerParams params = b();
        if (params != null && params.mVideoParams != null && params.mVideoParams.obtainResolveParams() != null) {
            ResolveResourceParams resolveParams = params.mVideoParams.obtainResolveParams();
            this.currentAid = resolveParams.mAvid;
            this.currentCid = resolveParams.mCid;
            this.currentBvid = resolveParams.mBvid;
            this.currentPage = resolveParams.mPage;
            
            Log.i("VideoShot", "========== ResolveParams Details ==========");
            Log.i("VideoShot", "mAvid=" + resolveParams.mAvid);
            Log.i("VideoShot", "mCid=" + resolveParams.mCid);
            Log.i("VideoShot", "mBvid=" + resolveParams.mBvid);
            Log.i("VideoShot", "mEpisodeId=" + resolveParams.mEpisodeId);
            Log.i("VideoShot", "mSeasonId=" + resolveParams.mSeasonId);
            Log.i("VideoShot", "mType=" + resolveParams.mType);
            Log.i("VideoShot", "mFrom=" + resolveParams.mFrom);
            Log.i("VideoShot", "mVid=" + resolveParams.mVid);
            Log.i("VideoShot", "mPage=" + resolveParams.mPage);
            Log.i("VideoShot", "========== End ResolveParams ==========");
            
            loadVideoShot();
        } else {
            Log.i("VideoShot", "onPrepared: params is null or incomplete");
        }
        
        super.onPrepared(iMediaPlayer);
    }
    
    private void loadVideoShot() {
        Log.i("VideoShot", "loadVideoShot: aid=" + currentAid + ", cid=" + currentCid + ", bvid=" + currentBvid);
        if (currentCid <= 0) {
            Log.i("VideoShot", "loadVideoShot: invalid cid, return");
            return;
        }
        
        if (currentBvid == null || currentBvid.isEmpty()) {
            if (currentAid <= 0) {
                Log.i("VideoShot", "loadVideoShot: invalid aid and bvid, return");
                return;
            }
        }
        
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Log.i("VideoShot", "loadVideoShot: start loading");
                    MyBiliApiService apiService = vo.a(MyBiliApiService.class);
                    String cookie = mybl.CookieUtil.getFullCookieWithDevice(mg.a(MainApplication.a()));
                    
                    vp call;
                    if (currentBvid != null && !currentBvid.isEmpty()) {
                        Log.i("VideoShot", "loadVideoShot: using bvid=" + currentBvid + ", cid=" + currentCid + ", index=1");
                        call = apiService.getVideoShotByBvid(currentBvid, currentCid, 1, cookie);
                    } else {
                        Log.i("VideoShot", "loadVideoShot: using aid=" + currentAid + ", cid=" + currentCid + ", index=1");
                        call = apiService.getVideoShot(currentAid, currentCid, 1, cookie);
                    }
                    
                    JSONObject jsonResponse = (JSONObject) we.a(call.d());
                    Log.i("VideoShot", "loadVideoShot: jsonResponse=" + jsonResponse);
                    
                    if (jsonResponse == null) {
                        Log.i("VideoShot", "loadVideoShot: jsonResponse is null");
                        return;
                    }
                    
                    Log.i("VideoShot_JSON", "========== Full JSON Response ==========");
                    LogUtil.json("VideoShot_JSON", jsonResponse);
                    Log.i("VideoShot_JSON", "========== End JSON Response ==========");
                    
                    int code = jsonResponse.getIntValue("code");
                    Log.i("VideoShot", "loadVideoShot: code=" + code);
                    if (code != 0) {
                        Log.i("VideoShot", "loadVideoShot: code != 0, return");
                        return;
                    }
                    
                    JSONObject data = jsonResponse.getJSONObject("data");
                    if (data == null) {
                        Log.i("VideoShot", "loadVideoShot: data is null");
                        return;
                    }
                    
                    Log.i("VideoShot_DATA", "========== Data Object ==========");
                    LogUtil.json("VideoShot_DATA", data);
                    Log.i("VideoShot_DATA", "========== End Data Object ==========");
                    
                    VideoShot shot = new VideoShot();
                    shot.setImgXLen(data.getIntValue("img_x_len"));
                    shot.setImgYLen(data.getIntValue("img_y_len"));
                    shot.setImgXSize(data.getIntValue("img_x_size"));
                    shot.setImgYSize(data.getIntValue("img_y_size"));
                    shot.setPvdata(data.getString("pvdata"));
                    
                    if (data.containsKey("image")) {
                        com.alibaba.fastjson.JSONArray imageArray = data.getJSONArray("image");
                        if (imageArray != null) {
                            java.util.List<String> imageList = new java.util.ArrayList<>();
                            for (int i = 0; i < imageArray.size(); i++) {
                                imageList.add(imageArray.getString(i));
                            }
                            shot.setImage(imageList);
                        }
                    }
                    
                    if (data.containsKey("index")) {
                        com.alibaba.fastjson.JSONArray indexArray = data.getJSONArray("index");
                        if (indexArray != null) {
                            java.util.List<Integer> indexList = new java.util.ArrayList<>();
                            for (int i = 0; i < indexArray.size(); i++) {
                                indexList.add(indexArray.getInteger(i));
                            }
                            shot.setIndex(indexList);
                        }
                    }
                    
                    Log.i("VideoShot", "loadVideoShot: shot=" + shot + ", image=" + shot.getImage() + ", index=" + shot.getIndex());
                    Log.i("VideoShot", "loadVideoShot: imgXLen=" + shot.getImgXLen() + ", imgYLen=" + shot.getImgYLen() + ", imgXSize=" + shot.getImgXSize() + ", imgYSize=" + shot.getImgYSize());
                    Log.i("VideoShot", "loadVideoShot: pvdata=" + shot.getPvdata());
                    
                    if (shot.getImage() == null || shot.getImage().isEmpty()) {
                        Log.i("VideoShot", "loadVideoShot: shot.getImage() is null or empty");
                        return;
                    }
                    
                    if (shot.getIndex() == null || shot.getIndex().isEmpty()) {
                        Log.i("VideoShot", "loadVideoShot: shot.getIndex() is null or empty");
                        return;
                    }
                    
                    Log.i("VideoShot", "loadVideoShot: data valid, setting to PlayerSeekBar");
                    if (l != null) {
                        l.post(new Runnable() {
                            @Override
                            public void run() {
                                Log.i("VideoShot", "loadVideoShot: posting to main thread");
                                if (l != null) {
                                    l.setVideoShot(shot);
                                    Log.i("VideoShot", "loadVideoShot: setVideoShot called");
                                    IPlayerContext playerContext = n();
                                    if (playerContext != null) {
                                        int duration = (int) (playerContext.getDuration() / 1000);
                                        l.setDuration(duration);
                                        Log.i("VideoShot", "loadVideoShot: setDuration called, duration=" + duration);
                                    } else {
                                        Log.i("VideoShot", "loadVideoShot: playerContext is null");
                                    }
                                } else {
                                    Log.i("VideoShot", "loadVideoShot: l is null in post");
                                }
                            }
                        });
                    } else {
                        Log.i("VideoShot", "loadVideoShot: l is null");
                    }
                } catch (Exception e) {
                    Log.i("VideoShot", "loadVideoShot error: " + e.getMessage());
                    e.printStackTrace();
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.xh
    public void M() {
        if (bufferingOverlayController == null) {
            bufferingOverlayController = new com.bilibili.tv.player.BufferingOverlayController();
            bufferingOverlayController.setBufferingView(this.m);
            com.bilibili.tv.player.PlayerActivityUrlRefreshHelper.setBufferingOverlayController(bufferingOverlayController);
            Log.i("xi", "[M] BufferingOverlayController initialized");
        }
        
        if (com.bilibili.tv.player.PlayerActivityUrlRefreshHelper.shouldSuppressBufferingOverlay()) {
            Log.i("xi", "[M] Buffering overlay is suppressed, skip showing");
            return;
        }
        
        bufferingOverlayController.onBufferingStarted();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.xh
    public void d(int i) {
        if (this.m != null) {
            this.m.setText(i);
            this.m.setVisibility(View.VISIBLE);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.xh
    public void N() {
        if (bufferingOverlayController != null) {
            bufferingOverlayController.onBufferingEnded();
        } else if (this.m == null || !this.m.isShown()) {
            return;
        }
        this.m.setVisibility(View.GONE);
    }

    @Override // bl.xh
    protected boolean O() {
        return this.m != null && this.m.isShown();
    }

    protected void R() {
        yh c;
        if (this.h == null || (c = c()) == null || c.a == null) {
            return;
        }
        PlayerParams playerParams = c.a;
        String mainTitle = yr.a(playerParams);
        String a = mainTitle;
        
        if (playerParams.isBangumi()) {
            String indexTitle = BiliBangumiSeason.getReadableIndexTitle(playerParams.mVideoParams.mResolveParams.mPageIndex);
            String pageTitle = playerParams.mVideoParams.mResolveParams.mPageTitle;
            boolean hasMainTitle = mainTitle != null && !mainTitle.isEmpty();
            boolean hasIndexTitle = indexTitle != null && !indexTitle.isEmpty();
            boolean hasPageTitle = pageTitle != null && !pageTitle.isEmpty();
            
            if (hasMainTitle) {
                if (hasIndexTitle) {
                    if (hasPageTitle && !pageTitle.equals(indexTitle)) {
                        a = mainTitle + " - " + indexTitle + " - " + pageTitle;
                    } else {
                        a = mainTitle + " - " + indexTitle;
                    }
                } else {
                    if (hasPageTitle) {
                        a = mainTitle + " - " + pageTitle;
                    }
                }
            } else {
                if (hasIndexTitle) {
                    if (hasPageTitle && !pageTitle.equals(indexTitle)) {
                        a = indexTitle + " - " + pageTitle;
                    } else {
                        a = indexTitle;
                    }
                } else {
                    if (hasPageTitle) {
                        a = pageTitle;
                    }
                }
            }
        } else if (playerParams.mVideoParams.mResolveParams != null && playerParams.mVideoParams.mResolveParams.mPageTitle != null && playerParams.mVideoParams.mResolveParamsArray != null && playerParams.mVideoParams.mResolveParamsArray.length > 1) {
            String pageTitle = playerParams.mVideoParams.mResolveParams.mPageTitle;
            if (mainTitle != null && !mainTitle.isEmpty() && !mainTitle.equals(pageTitle)) {
                a = mainTitle + " - " + pageTitle;
            } else {
                a = pageTitle;
            }
        }
        this.h.setText(a);
    }

    @Override // bl.xh, tv.danmaku.videoplayer.core.videoview.IVideoView.OnExtraInfoListener
    public void onExtraInfo(int i, Object... objArr) {
        super.onExtraInfo(i, objArr);
        if (i == IVideoView.OnExtraInfoListener.ON_MEDIA_TRY_RECONNECT_START) {
            if (this.m != null) {
                this.m.post(new Runnable() { // from class: bl.xi.4
                    @Override // java.lang.Runnable
                    public void run() {
                        xi.this.M();
                    }
                });
            }
        } else if (i == IVideoView.OnExtraInfoListener.ON_MEDIA_TRY_RECONNECT_END) {
            if (this.m == null) {
                return;
            }
            this.m.post(new Runnable() { // from class: bl.xi.5
                @Override // java.lang.Runnable
                public void run() {
                    xi.this.onInfo(null, IMediaPlayer.MEDIA_INFO_BUFFERING_END, 0);
                }
            });
        }
    }
    
    @Override // bl.xh, tv.danmaku.videoplayer.core.videoview.IVideoView.OnExtraInfoListener
    public boolean onNativeInvoke(int what, android.os.Bundle args) {
        Log.i("xi", "[IJK_NATIVE_INVOKE] what=" + what + ", args=" + (args != null ? args.toString() : "null"));
        
        if (args != null) {
            String url = args.getString("url", "");
            int httpCode = args.getInt("http_code", 0);
            int errorCode = args.getInt("error", 0);
            
            Log.i("xi", "[IJK_NATIVE_INVOKE] url=" + url + ", http_code=" + httpCode + ", error=" + errorCode);
            
            if (httpCode == 403 || httpCode == 404 || httpCode == 410) {
                Log.i("xi", "[IJK_NATIVE_INVOKE] HTTP error detected: " + httpCode);
                com.bilibili.tv.player.PlayerActivityUrlRefreshHelper.triggerErrorRefresh(httpCode, "HTTP " + httpCode);
                return true;
            }
            
            if (errorCode != 0 || httpCode == 0) {
                Log.i("xi", "[IJK_NATIVE_INVOKE] Network error detected, triggering URL refresh");
                com.bilibili.tv.player.PlayerActivityUrlRefreshHelper.triggerErrorRefresh(errorCode, "Network error");
                return true;
            }
        }
        
        return super.onNativeInvoke(what, args);
    }

    @Override // bl.xh
    public void a(Activity activity, xf xfVar) {
        super.a(activity, xfVar);
        xfVar.a(4, (bbb<? super Message, Boolean>) this);
    }

    /* JADX DEBUG: Method merged with bridge method: a(Ljava/lang/Object;)Ljava/lang/Object; */
    @Override // bl.bbb
    public Boolean a(Message message) {
        if (message.what == 4) {
            a((AspectRatio) message.obj);
        }
        return Boolean.FALSE;
    }

    @Override // bl.xh
    public void b(IEventCenter.EventType eventType, Object... objArr) {
        PlayerCodecConfig y;
        if (eventType == IEventCenter.EventType.NEW_RESOLVE_TASK) {
            if (objArr.length >= 1 && this.c != null) {
                this.c.a((Runnable) objArr[0]);
            }
        } else if (eventType == IEventCenter.EventType.CODEC_CONFIG_CHANGED && ((y = y()) == null || y.a.equals(PlayerCodecConfig.Player.NONE))) {
            this.k.a(o().getString(R.string.PlayerReactTips_play_failed));
        }
        super.b(eventType, objArr);
    }

    private void a(AspectRatio aspectRatio) {
        if (aspectRatio == null) {
            aspectRatio = AspectRatio.RATIO_ADJUST_SCREEN;
        }
        n().setAspectRatio(aspectRatio);
        IPlayerContext n = n();
        if (n != null) {
            n.setAspectRatio(aspectRatio);
        }
    }

    protected int S() {
        Activity o = o();
        if (o != null) {
            return o.hashCode();
        }
        return hashCode();
    }
}