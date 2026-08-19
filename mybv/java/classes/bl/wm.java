package bl;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import com.bilibili.tv.MainApplication;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import tv.danmaku.ijk.media.player.AbstractMediaPlayer;
import tv.danmaku.ijk.media.player.AndroidMediaPlayer;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaMetadataRetriever;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

import android.os.Bundle;
import tv.danmaku.android.log.BLog;
import tv.danmaku.videoplayer.core.media.PlayerSelector;
import tv.danmaku.videoplayer.core.media.exo.ExoPlayerImpl;
import tv.danmaku.videoplayer.core.media.exo.AudioBalanceLevel;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import tv.danmaku.videoplayer.core.videoview.IVideoView;
import com.bilibili.tv.ui.live.player.LivePlayerActivity;

/* compiled from: BL */
/* loaded from: classes.dex */
public class wm implements IMediaPlayer.OnBufferingUpdateListener, IMediaPlayer.OnCompletionListener, IMediaPlayer.OnErrorListener, IMediaPlayer.OnInfoListener, IMediaPlayer.OnPreparedListener, IMediaPlayer.OnSeekCompleteListener, IMediaPlayer.OnVideoSizeChangedListener, IjkMediaPlayer.OnNativeInvokeListener {
    private static String sLiveFormat = null;
    int a;
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    private IMediaPlayer h;
    private HandlerThread i;
    private b j;
    private Handler k;
    private Context l;
    private int m;
    private List<wp> n;
    private boolean o;
    private WeakReference<ws> p;
    private WeakReference<ws> q;
    private int r;
    private int s;
    private String t;

    /* renamed from: u  reason: collision with root package name */
    private int f57u;
    private int v;

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    public boolean onInfo2(IMediaPlayer iMediaPlayer, int i, int i2, long j) {
        return false;
    }

    public static wm a() {
        return aa.a;
    }

    public static void setLiveFormat(String format) {
        sLiveFormat = format;
        android.util.Log.i("wm", "[LIVE_FORMAT] Set live format: " + format);
    }

    public static String getLiveFormat() {
        return sLiveFormat;
    }

    public void setAudioBalanceLevel(AudioBalanceLevel level) {
        if (this.h instanceof ExoPlayerImpl) {
            ((ExoPlayerImpl) this.h).setAudioBalanceLevel(level);
            android.util.Log.i("wm", "[AUDIO_BALANCE] Set audio balance level: " + level);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static class aa {
        private static final wm a = new wm();
    }

    public static void a(Context context) {
        if (context == null) {
            throw new NullPointerException("video manager init error!!!");
        }
        a().b(context);
    }

    private wm() {
        this.m = abd.h(MainApplication.a());
        this.o = false;
        this.r = 0;
        this.s = 0;
        this.t = "";
        this.f57u = -22;
        this.a = 3;
        this.b = IMediaPlayer.MEDIA_INFO_BUFFERING_START;
        this.c = IMediaPlayer.MEDIA_INFO_BUFFERING_END;
        this.d = 10001;
        this.e = 100;
        this.f = IjkMediaMetadataRetriever.IJK_ONERROR;
        this.g = 200;
        this.i = new HandlerThread("VideoManager");
        this.i.start();
        this.j = new b(this.i.getLooper());
        this.k = new Handler();
    }

    private void b(Context context) {
        this.l = context.getApplicationContext();
    }

    public ws b() {
        if (this.p == null) {
            return null;
        }
        return this.p.get();
    }

    public ws c() {
        if (this.q == null) {
            return null;
        }
        return this.q.get();
    }

    public void a(ws wsVar) {
        if (wsVar == null) {
            this.p = null;
        } else {
            this.p = new WeakReference<>(wsVar);
        }
    }

    public void b(ws wsVar) {
        if (wsVar == null) {
            this.q = null;
        } else {
            this.q = new WeakReference<>(wsVar);
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    wm.this.a(message);
                    return;
                case 1:
                    wm.this.c(message);
                    return;
                case 2:
                    if (wm.this.h != null) {
                        try {
                            wm.this.h.reset();
                            wm.this.h.release();
                            wm.this.h = null;
                        } catch (Exception e) {
                            att.a(e);
                        }
                    }
                    wm.this.a(false);
                    wm.this.v = 0;
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Message message) {
        boolean z = false;
        try {
            this.r = 0;
            this.s = 0;
            if (this.h != null) {
                this.h.release();
            }
            switch (this.m) {
                case 1:
                    b(message);
                    break;
                case 2:
                    z = true;
                case 3:
                    a(message, z);
                    break;
            }
            a(this.o);
            this.h.setOnCompletionListener(this);
            this.h.setOnBufferingUpdateListener(this);
            this.h.setScreenOnWhilePlaying(true);
            this.h.setOnPreparedListener(this);
            this.h.setOnSeekCompleteListener(this);
            this.h.setOnErrorListener(this);
            this.h.setOnInfoListener(this);
            this.h.setOnVideoSizeChangedListener(this);
            android.util.Log.i("LiveStartupTrace", "[LIVE_STARTUP_TRACE] prepareAsync");
            this.h.prepareAsync();
        } catch (Exception e) {
            att.a(e);
        }
    }

    private void b(Message message) {
        this.h = new AndroidMediaPlayer();
        this.h.setAudioStreamType(3);
        try {
            this.h.setDataSource(this.l, Uri.parse(((wo) message.obj).a()), ((wo) message.obj).b());
        } catch (Exception e) {
            att.a(e);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IjkMediaPlayer.OnNativeInvokeListener
    public boolean onNativeInvoke(int what, Bundle args) {
        android.util.Log.i("IjkCommander", "onNativeInvoke,what:" + what + ", args size:" + args.size());
        switch (what) {
            case IVideoView.OnExtraInfoListener.CTRL_WILL_CONCAT_RESOLVE_SEGMENT_SYS /* 65573 */:
            case IVideoView.OnExtraInfoListener.CTRL_WILL_CONCAT_RESOLVE_SEGMENT /* 131079 */:
            case IVideoView.OnExtraInfoListener.CTRL_WILL_SET_URL /* 65574 */:
            case IVideoView.OnExtraInfoListener.CTRL_WILL_TCP_OPEN /*131073*/:
            case IVideoView.OnExtraInfoListener.CTRL_WILL_HTTP_OPEN /*131075*/:
            case IVideoView.OnExtraInfoListener.CTRL_WILL_LIVE_OPEN /*131077*/:
            default:
                try{
                    String url = args.getString("url", "");
                    String expiresStr = Uri.parse(url).getQueryParameter("expires");
                    android.util.Log.i("IjkCommander", "url=" + url + ", expires=" + expiresStr);
                    if (expiresStr != null && !expiresStr.isEmpty()) {
                        long expires = Long.parseLong(expiresStr);
                        int http_code = args.getInt("http_code", 0);
                        long currentTimeSeconds = System.currentTimeMillis() / 1000;
                        android.util.Log.i("IjkCommander", "http_code=" + http_code + ", expires=" + expires + ", currentTime=" + currentTimeSeconds);
                        if(http_code==403 && currentTimeSeconds > expires){
                            android.util.Log.i("IjkCommander", "触发refresh");
                            LivePlayerActivity._this.refresh();
                        }
                    }
                }
                catch(Exception e){
                    android.util.Log.e("IjkCommander", "onNativeInvoke error: " + e.getMessage());
                    e.printStackTrace();
                }
                return true;
        }

    }

    private void a(Message message, boolean z) {
        String url = ((wo) message.obj).a();
        android.util.Log.i("wm", "[LIVE] a(message,z) entered, url=" + url + ", m=" + this.m + ", z=" + z);

        // === ExoPlayer 分支 ===
        // 使用直播专用播放器选择方法
        boolean useExoForLive = PlayerSelector.shouldUseExoPlayerForLive(this.l, sLiveFormat);
        android.util.Log.i("wm", "[LIVE_EXO] PlayerSelector.shouldUseExoPlayerForLive=" + useExoForLive + ", sLiveFormat=" + sLiveFormat);

        if (useExoForLive) {
            android.util.Log.i("wm", "[LIVE_EXO] Checking format compatibility");

            // FLV格式回退到IjkPlayer
            boolean isFlv = url.toLowerCase().contains(".flv");
            android.util.Log.i("wm", "[LIVE_EXO] URL FLV check: isFlv=" + isFlv + ", url=" + url);

            // TS格式回退到IjkPlayer (ExoPlayer对TS格式的HLS兼容性不好)
            boolean isTsFormat = "ts".equalsIgnoreCase(sLiveFormat);
            android.util.Log.i("wm", "[LIVE_EXO] TS format check: isTsFormat=" + isTsFormat + ", sLiveFormat=" + sLiveFormat);

            if (isFlv || isTsFormat) {
                android.util.Log.i("wm", "[LIVE_EXO] FLV or TS format detected, falling back to IjkPlayer");
            } else {
                android.util.Log.i("wm", "[LIVE_EXO] Creating ExoPlayerImpl for live streaming");
                try {
                    ExoPlayerImpl exoImpl = new ExoPlayerImpl(this.l);
                    this.h = exoImpl;
                    android.util.Log.i("wm", "[LIVE_EXO] ExoPlayerImpl created, h=" + this.h.getClass().getSimpleName());
                } catch (Exception e) {
                    android.util.Log.e("wm", "[LIVE_EXO] Failed to create ExoPlayerImpl: " + e.getMessage());
                    att.a(e);
                    // 创建失败，回退到IjkPlayer
                    android.util.Log.i("wm", "[LIVE_EXO] ExoPlayerImpl creation failed, falling back to IjkPlayer");
                }

                if (this.h instanceof ExoPlayerImpl) {
                    this.h.setAudioStreamType(3);

                    try {
                        // 构建带请求头的 DataSource.Factory
                        DefaultHttpDataSource.Factory httpFactory = new DefaultHttpDataSource.Factory()
                            .setUserAgent("Bilibili Freedoooooom/MarkII")
                            .setConnectTimeoutMs(DefaultHttpDataSource.DEFAULT_CONNECT_TIMEOUT_MILLIS)
                            .setReadTimeoutMs(DefaultHttpDataSource.DEFAULT_READ_TIMEOUT_MILLIS);

                        boolean hasReferer = url.contains("platform=web");
                        android.util.Log.i("wm", "[LIVE_EXO] platform=web check: hasReferer=" + hasReferer);
                        if (hasReferer) {
                            httpFactory.setDefaultRequestProperties(
                                java.util.Collections.singletonMap("Referer", "https://www.bilibili.com"));
                            android.util.Log.i("wm", "[LIVE_EXO] Referer header injected");
                        }

                        // 根据URL选择MediaSource类型
                        boolean isHls = url.toLowerCase().contains(".m3u8");
                        android.util.Log.i("wm", "[LIVE_EXO] HLS check: isHls=" + isHls);

                        com.google.android.exoplayer2.source.MediaSource mediaSource;
                        com.google.android.exoplayer2.MediaItem mediaItem;
                        
                        if (isHls) {
                            mediaItem = new com.google.android.exoplayer2.MediaItem.Builder()
                                .setUri(Uri.parse(url))
                                .setLiveTargetOffsetMs(1000)
                                .setLiveMinOffsetMs(500)
                                .setLiveMaxOffsetMs(5000)
                                .setLiveMinPlaybackSpeed(0.95f)
                                .setLiveMaxPlaybackSpeed(1.5f)
                                .build();
                            android.util.Log.i("wm", "[LIVE_EXO] Creating HlsMediaSource with live config: targetOffset=1000ms, minOffset=500ms, maxOffset=5000ms");
                            mediaSource = new com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory(httpFactory)
                                .createMediaSource(mediaItem);
                        } else {
                            mediaItem = com.google.android.exoplayer2.MediaItem.fromUri(Uri.parse(url));
                            android.util.Log.i("wm", "[LIVE_EXO] Creating ProgressiveMediaSource");
                            mediaSource = new com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory(httpFactory)
                                .createMediaSource(mediaItem);
                        }

                        android.util.Log.i("wm", "[LIVE_EXO] Calling exoImpl.setDataSource(mediaSource)");
                        ((ExoPlayerImpl) this.h).setDataSource(mediaSource);
                        android.util.Log.i("wm", "[LIVE_EXO] setDataSource completed");
                        
                        ((ExoPlayerImpl) this.h).setErrorListener(new ExoPlayerImpl.PlayerErrorListener() {
                            @Override
                            public void onPlayerError(int errorCode, String errorMessage, Integer httpCode) {
                                android.util.Log.e("wm", "[LIVE_EXO_ERROR] errorCode=" + errorCode + ", message=" + errorMessage + ", httpCode=" + httpCode);
                                if ("LIVE_STREAM_NEED_REFRESH".equals(errorMessage) || "LIVE_BUFFERING_TIMEOUT".equals(errorMessage)) {
                                    android.util.Log.i("wm", "[LIVE_EXO_ERROR] Live stream needs refresh, calling LivePlayerActivity.refresh()");
                                    if (LivePlayerActivity._this != null) {
                                        LivePlayerActivity._this.refresh();
                                    }
                                } else if ("EXO_PLAYER_FORMAT_INCOMPATIBLE".equals(errorMessage)) {
                                    android.util.Log.w("wm", "[LIVE_EXO_ERROR] ExoPlayer format incompatible, switching to IjkPlayer");
                                    PlayerSelector.setForceUseIjkPlayer(true);
                                    if (LivePlayerActivity._this != null) {
                                        android.util.Log.i("wm", "[LIVE_EXO_ERROR] Calling LivePlayerActivity.refresh() to switch player");
                                        LivePlayerActivity._this.refresh();
                                    }
                                }
                            }
                        });
                        android.util.Log.i("wm", "[LIVE_EXO] Error listener set");
                    } catch (Exception e) {
                        android.util.Log.e("wm", "[LIVE_EXO] setDataSource failed: " + e.getMessage());
                        att.a(e);
                    }

                    // 设置循环和速度
                    boolean looping = ((wo) message.obj).c();
                    float speed = ((wo) message.obj).d();
                    android.util.Log.i("wm", "[LIVE_EXO] looping=" + looping + ", speed=" + speed);
                    this.h.setLooping(looping);
                    if (speed != 1.0f && speed > 0.0f) {
                        this.h.setSpeed(speed);
                    }
                    android.util.Log.i("wm", "[LIVE_EXO] ExoPlayer setup complete, returning");
                    return;  // 跳过下方的 IjkPlayer 创建代码
                }
                // 如果 this.h 不是 ExoPlayerImpl（创建失败），继续走到IjkPlayer路径
            }
        } else {
            android.util.Log.i("wm", "[LIVE_IJK] PlayerSelector.shouldUseExoPlayer=false, using IjkPlayer");
        }

        // === 原有 IjkPlayer 路径 ===
        android.util.Log.i("wm", "[LIVE_IJK] Creating IjkMediaPlayer");
        this.h = new IjkMediaPlayer(this.l);
        this.h.setAudioStreamType(3);
        if (z) {
            try {
                ww.a("enable mediaCodec");
                ((IjkMediaPlayer) this.h).setOption(4, "mediacodec", 1L);
                ((IjkMediaPlayer) this.h).setOption(4, "mediacodec-auto-rotate", 1L);
                ((IjkMediaPlayer) this.h).setOption(4, "mediacodec-handle-resolution-change", 1L);
                android.util.Log.i("wm", "[LIVE_IJK] mediaCodec enabled");
            } catch (Exception e) {
                att.a(e);
                return;
            }
        }

        ((IjkMediaPlayer) this.h).setOption(1, "reconnect", 1L);
        ((IjkMediaPlayer) this.h).setOnNativeInvokeListener(this);


        ((IjkMediaPlayer) this.h).setOption(1, "user_agent", "Bilibili Freedoooooom/MarkII");
        if(url.indexOf("platform=web")>=0){
            ((IjkMediaPlayer) this.h).setOption(1, "headers", "Referer: https://www.bilibili.com\r\n");
        }
        try{
            ((IjkMediaPlayer) this.h).setDataSource(((wo) message.obj).a(), ((wo) message.obj).b());
        }catch(Exception e){}
        this.h.setLooping(((wo) message.obj).c());
        if (((wo) message.obj).d() != 1.0f && ((wo) message.obj).d() > 0.0f) {
            ((IjkMediaPlayer) this.h).setSpeed(((wo) message.obj).d());
        }
        a((IjkMediaPlayer) this.h);
        android.util.Log.i("wm", "[LIVE_IJK] IjkMediaPlayer setup complete");
    }

    private void a(IjkMediaPlayer ijkMediaPlayer) {
        if (this.n == null || this.n.size() <= 0) {
            return;
        }
        for (wp wpVar : this.n) {
            if (wpVar.a == 0) {
                ijkMediaPlayer.setOption(wpVar.b, wpVar.d, wpVar.c);
            } else {
                ijkMediaPlayer.setOption(wpVar.b, wpVar.d, wpVar.c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Message message) {
        if (message.obj == null && this.h != null) {
            this.h.setSurface(null);
            return;
        }
        Surface surface = (Surface) message.obj;
        if (this.h == null || !surface.isValid()) {
            return;
        }
        this.h.setSurface(surface);
    }

    public void a(String str, Map<String, String> map, boolean z, float f) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Message message = new Message();
        message.what = 0;
        message.obj = new wo(str, map, z, f);
        this.j.sendMessage(message);
    }

    public void d() {
        Message message = new Message();
        message.what = 2;
        this.j.sendMessage(message);
        this.t = "";
        this.f57u = -22;
    }

    public void a(Surface surface) {
        Message message = new Message();
        message.what = 1;
        message.obj = surface;
        this.j.sendMessage(message);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
    public void onPrepared(IMediaPlayer iMediaPlayer) {
        this.k.post(new Runnable() { // from class: bl.wm.1
            @Override // java.lang.Runnable
            public void run() {
                if (wm.this.p != null) {
                    wm.this.b().a();
                }
            }
        });
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
    public void onCompletion(IMediaPlayer iMediaPlayer) {
        this.k.post(new Runnable() { // from class: bl.wm.2
            @Override // java.lang.Runnable
            public void run() {
                if (wm.this.p != null) {
                    wm.this.b().b();
                }
            }
        });
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(IMediaPlayer iMediaPlayer, final int i) {
        this.k.post(new Runnable() { // from class: bl.wm.3
            @Override // java.lang.Runnable
            public void run() {
                if (wm.this.p != null) {
                    if (i <= wm.this.v) {
                        wm.this.b().a(wm.this.v);
                    } else {
                        wm.this.b().a(i);
                    }
                }
            }
        });
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(IMediaPlayer iMediaPlayer) {
        this.k.post(new Runnable() { // from class: bl.wm.4
            @Override // java.lang.Runnable
            public void run() {
                if (wm.this.p != null) {
                    wm.this.b().d();
                }
            }
        });
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
    public boolean onError(IMediaPlayer iMediaPlayer, final int i, final int i2) {
        this.k.post(new Runnable() { // from class: bl.wm.5
            @Override // java.lang.Runnable
            public void run() {
                if (wm.this.p != null) {
                    wm.this.b().a(i, i2);
                }
            }
        });
        return true;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    public boolean onInfo(IMediaPlayer iMediaPlayer, final int i, final int i2) {
        if (i == IMediaPlayer.MEDIA_INFO_VIDEO_RENDERING_START) {
            android.util.Log.i("LiveStartupTrace", "[LIVE_STARTUP_TRACE] first_frame");
        }
        this.k.post(new Runnable() { // from class: bl.wm.6
            @Override // java.lang.Runnable
            public void run() {
                if (wm.this.p != null) {
                    wm.this.b().b(i, i2);
                }
            }
        });
        return false;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, final int i, final int i2, final int i3, final int i4) {
        this.r = iMediaPlayer.getVideoWidth();
        this.s = iMediaPlayer.getVideoHeight();
        this.k.post(new Runnable() { // from class: bl.wm.7
            @Override // java.lang.Runnable
            public void run() {
                if (wm.this.p != null) {
                    wm.this.b().a(i, i2, i3, i4);
                }
            }
        });
    }

    public static boolean e() {
        IMediaPlayer i = a().i();
        return i != null && i.isPlaying();
    }

    public static void f() {
        ws b2 = a().b();
        if (b2 != null) {
            b2.e();
        }
    }

    public static void g() {
        ws b2 = a().b();
        if (b2 != null) {
            b2.f();
        }
    }

    public static void h() {
        ws b2 = a().b();
        if (b2 != null) {
            b2.g();
        }
    }

    public IMediaPlayer i() {
        return this.h;
    }

    public int j() {
        return this.r;
    }

    public int k() {
        return this.s;
    }

    public void a(int i) {
        this.s = i;
    }

    public void b(int i) {
        this.r = i;
    }

    public void a(String str) {
        this.t = str;
    }

    public void c(int i) {
        this.f57u = i;
    }

    public void d(int i) {
        this.m = i;
    }

    public void a(boolean z) {
        if (this.o == z) {
            return;
        }
        this.o = z;
        if (this.h != null) {
            try {
                if (z) {
                    this.h.setVolume(0.0f, 0.0f);
                } else {
                    this.h.setVolume(1.0f, 1.0f);
                }
            } catch (IllegalStateException e) {
                att.a(e);
            }
        }
    }
}