package bl;

import android.os.Bundle;
import android.os.SystemClock;
import com.bilibili.lib.media.resource.PlayerCodecConfig;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.player.basic.context.PlayerParams;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import com.bilibili.tv.player.interfaces.IEventCenter;
import java.util.HashMap;
import tv.danmaku.android.log.BLog;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
import tv.danmaku.videoplayer.core.commander.Commands;
import tv.danmaku.videoplayer.core.videoview.IVideoView;
import android.util.Log;

/* compiled from: BL */
/* loaded from: classes.dex */
public class yb extends xh {
    private static final String c = "yb";
    private boolean g;
    private boolean i;
    private boolean j;
    private long d = 0;
    private zm e = new zm();
    private zl f = new zl();
    private zo h = new zo();
    // 是否已首次真正播放（画面渲染），用于延迟上报到播放开始而非loading阶段
    private boolean hasFirstPlayed = false;
    // RESOLVE_SUCCESS时暂存参数，延迟到首次播放时上报
    private PlayerParams pendingResolveParams = null;

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    public boolean onInfo2(IMediaPlayer iMediaPlayer, int i, int i2, long j) {
        return false;
    }

    @Override // bl.xh
    public void b(IEventCenter.EventType eventType, Object... objArr) {
        super.b(eventType, objArr);
        switch (eventType) {
            case RESOLVE_SUCCESS:
                if (objArr == null || objArr.length < 1) {
                    return;
                }
                PlayerParams playerParams = (PlayerParams) objArr[0];
                this.e.a();
                this.e.a(playerParams, "");
                // 延迟上报：暂存参数，等首次播放时再上报历史记录
                // 原逻辑直接调用 zk.a() 会在loading阶段就上报，不符合业务要求
                this.pendingResolveParams = playerParams;
                // 首次播放标识重置（切P场景）
                this.hasFirstPlayed = false;
                Log.i("yb", "[RESOLVE_SUCCESS] delay report until first play, reset hasFirstPlayed=false");
                return;
            case SEEK:
                if (objArr != null && objArr.length >= 3) {
                    aai.a(((Boolean) objArr[0]).booleanValue());
                    // 获取目标位置并执行跳转
                    Long targetPosition = (Long) objArr[2];
                    if (targetPosition != null) {
                        // 执行实际的跳转操作
                        c(targetPosition.intValue());
                    }
                }
                if (this.i) {
                    this.h.g();
                    this.i = false;
                    S();
                }
                this.h.b(x() / IjkMediaCodecInfo.RANK_MAX);
                this.h.a(K());
                return;
            case SWITCH_EPISODE:
                aai.a();
                return;
            case MENU_QUICK_SHOW:
                aai.b();
                return;
            case SWITCH_QUALITY:
                this.j = true;
                return;
            default:
                return;
        }
    }

    @Override // bl.xh
    public void G() {
        super.G();
        aai.b(false);
        Q();
    }

    @Override // bl.xh
    public void E() {
        super.E();
        aai.b(true);
        R();
    }

    @Override // bl.xh
    public void a(Bundle bundle) {
        super.a(bundle);
        this.d = SystemClock.uptimeMillis();
    }

    @Override // bl.xh
    public void d() {
        super.d();
        aai.a(SystemClock.uptimeMillis() - this.d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
    
        return false;
     */
    @Override // bl.xh, tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onInfo(IMediaPlayer iMediaPlayer, int i, int i2) {
        super.onInfo(iMediaPlayer, i, i2);
        switch (i) {
            case IMediaPlayer.MEDIA_INFO_BUFFERING_START /* 701 */:
                if (this.g) {
                    this.h.h();
                } else {
                    this.h.i();
                }
                this.g = false;
                break;
            case IMediaPlayer.MEDIA_INFO_BUFFERING_END /* 702 */:
                this.h.i();
                this.g = true;
                // 缓冲结束=画面正式播放，触发延迟的首次上报
                if (!this.hasFirstPlayed) {
                    this.hasFirstPlayed = true;
                    Log.i("yb", "[BUFFERING_END] first play detected, trigger delayed report");
                    // 执行延迟的RESOLVE_SUCCESS上报（历史记录初始化）
                    if (this.pendingResolveParams != null) {
                        zk.a(p(), this.pendingResolveParams.mVideoParams.obtainResolveParams(), this.e);
                        this.pendingResolveParams = null;
                    }
                    // 执行延迟的onPrepared上报（播放点击+首次心跳）
                    P();
                    if (this.i || !this.j) {
                        this.h.g();
                        c(true);
                    }
                }
                break;
        }
        return false;
    }

    @Override // bl.xh, tv.danmaku.videoplayer.core.videoview.IVideoView.OnExtraInfoListener
    public void onExtraInfo(int i, Object... objArr) {
        switch (i) {
            case IVideoView.OnExtraInfoListener.WILL_PLAYER_RELEASE /* 65568 */:
                if (!this.j && !this.i) {
                    S();
                    break;
                }
                break;
            case IVideoView.OnExtraInfoListener.WILL_PLAYER_PREPARE /* 65569 */:
                if (objArr != null && (objArr[0] instanceof IjkMediaPlayer)) {
                    String b = m() != null ? adl.a.b() : "";
                    if (n() != null) {
                        yh c2 = c();
                        n().act(Commands.CDM_INIT_IJK_TRACKER, b, Integer.valueOf(abg.a(c2)), abg.a(), Integer.valueOf(abg.c(c2)), abg.b(c2), 0L, Long.valueOf(abg.a(c2.a)), abg.b());
                        break;
                    }
                }
                break;
        }
        super.onExtraInfo(i, objArr);
    }

    @Override // bl.xh, tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
    public void onPrepared(IMediaPlayer iMediaPlayer) {
        super.onPrepared(iMediaPlayer);
        // onPrepared时播放器只准备好了，但画面可能还在缓冲(loading)，
        // 不应在此上报。上报延迟到首次BUFFERING_END（画面正式播放）时。
        // 保留Q()来设置g=true和累加播放时间，但不执行P()（播放点击上报）和c(true)（首次心跳）
        Q();
        // 首次播放标识重置（切P/切画质场景）
        this.hasFirstPlayed = false;
        // 切换画质和播放完成的标志位仍在此处理
        this.j = false;
        this.i = false;
        T();
        Log.i("yb", "[onPrepared] prepared but skip report, wait for first BUFFERING_END");
    }

    @Override // bl.xh, tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
    public void onCompletion(IMediaPlayer iMediaPlayer) {
        super.onCompletion(iMediaPlayer);
        this.i = true;
        S();
    }

    private void P() {
        long j;
        long j2;
        long j3;
        PlayerParams b = b();
        ResolveResourceParams obtainResolveParams = b == null ? null : b.mVideoParams.obtainResolveParams();
        if (obtainResolveParams != null) {
            this.e.a();
            this.e.a(b, "");
            int[] a = zn.a(b, obtainResolveParams, c());
            if (obtainResolveParams.isBangumi()) {
                try {
                    j = Long.parseLong(obtainResolveParams.mSeasonId);
                } catch (NumberFormatException unused) {
                    j = 0;
                }
                j2 = j;
                j3 = obtainResolveParams.mEpisodeId;
            } else {
                j2 = 0;
                j3 = 0;
            }
            try {
                this.f.a(p(), obtainResolveParams.mAvid, obtainResolveParams.mCid, obtainResolveParams.mEpisodeId != 0 ? 1 : obtainResolveParams.mPage, a[0], a[1], j2, j3, "1", null);
            } catch (Exception e) {
                BLog.e(e.getMessage(), e);
            }
        }
    }

    private void Q() {
        this.g = true;
        if (this.i) {
            this.h.g();
            S();
            this.i = false;
        }
        this.h.i();
    }

    private void R() {
        this.g = false;
        this.h.h();
    }

    private void S() {
        c(false);
    }

    private void c(boolean z) {
        zn.a(z, MainApplication.a(), this.h, b(), c(), I(), x(), this.g);
    }

    private void T() {
        PlayerCodecConfig y = y();
        int b = y != null ? b(y) : 1;
        HashMap hashMap = new HashMap();
        hashMap.put("playtype", b + "");
        abl.a.b("ott-player.ott-play.ott-player.0.player", hashMap);
    }

    private int b(PlayerCodecConfig playerCodecConfig) {
        PlayerCodecConfig.Player player = playerCodecConfig.a;
        if (PlayerCodecConfig.Player.NONE == player) {
            return 1;
        }
        if (PlayerCodecConfig.Player.ANDROID_PLAYER == player) {
            return 4;
        }
        if (PlayerCodecConfig.Player.IJK_PLAYER == player) {
            return playerCodecConfig.c ? 6 : 5;
        }
        return 1;
    }
}