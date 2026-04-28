package bl;

import android.app.Activity;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.player.basic.context.PlayerParams;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import com.bilibili.tv.player.interfaces.IEventCenter;
import tv.danmaku.android.log.BLog;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
import tv.danmaku.videoplayer.core.danmaku.IDanmakuDocument;

import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: BL */
/* loaded from: classes.dex */
public class xj extends xh {
    protected TextView c;
    private zt d;
    private zu e;
    private boolean f;
    private int i;
    private Runnable j;
    private Animation k;
    private int g = 0;
    private String h = "";
    private boolean l = false;
    // 是否已首次真正播放（画面渲染），用于延迟定时器启动
    private boolean hasFirstPlayed = false;

    public JSONArray skips;

    private boolean introSkipped = false;
    private boolean outroPromptShown = false;
    private boolean userSeekedToIntro = false;
    private java.util.Set<String> skippedSegments = new java.util.HashSet<>();
    private boolean chapterTipShown = false;
    private long initialPlayPosition = 0;

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    public boolean onInfo2(IMediaPlayer iMediaPlayer, int i, int i2, long j) {
        return false;
    }

    @Override // bl.xh, tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    public boolean onInfo(IMediaPlayer iMediaPlayer, int i, int i2) {
        super.onInfo(iMediaPlayer, i, i2);
        // 缓冲结束=画面正式播放，启动延迟的定时器
        if (i == IMediaPlayer.MEDIA_INFO_BUFFERING_END /* 702 */) {
            if (!this.hasFirstPlayed) {
                this.hasFirstPlayed = true;
                Log.i("xj", "[BUFFERING_END] first play detected, start history report timer (30s)");
                a(IjkMediaPlayer.FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS, (Object) null, 30000L);
            }
        }
        return false;
    }

    @Override // bl.xh
    public void a(Bundle bundle) {
        zt ztVar;
        super.a(bundle);
        PlayerParams b = b();
        if (b != null) {
            ResolveResourceParams obtainResolveParams = b.mVideoParams.obtainResolveParams();
            if (!TextUtils.isEmpty(obtainResolveParams.mSeasonId) && obtainResolveParams.mEpisodeId > 0) {
                ztVar = new zt(zu.getEp(obtainResolveParams.mEpisodeId));
            } else {
                ztVar = new zt(zu.getCid(obtainResolveParams.mCid));
            }
            this.d = ztVar;
            this.e = new zu(p());
            this.f = true;
            
            final ResolveResourceParams finalParams = obtainResolveParams;
            final Activity activity = o();
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        finalParams.initPlayInfo(new ResolveResourceParams.PlayInfoCallback() {
                            @Override
                            public void onPlayInfoReady(final JSONArray view_points) {
                                if (activity != null) {
                                    activity.runOnUiThread(new Runnable() {
                                        @Override
                                        public void run() {
                                            showChapterTip(view_points);
                                        }
                                    });
                                }
                            }
                            
                            @Override
                            public void onPlayInfoFailed(Exception e) {
                                Log.e("xj", "initPlayInfo failed: " + e.getMessage());
                            }
                        });
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }).start();
            return;
        }
        this.f = false;
    }

    @Override // bl.xh
    public void b(IEventCenter.EventType eventType, Object... objArr) {
        super.b(eventType, objArr);
    }

    @Override // bl.xh, android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 20202) {
            P();
            b(IjkMediaPlayer.FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS);
            if (!K()) {
                return true;
            }
            a(IjkMediaPlayer.FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS, (Object) null, 31000L);
            return true;
        }
        return super.handleMessage(message);
    }

    public void checkSkip(long t) {
        if (this.skips == null || this.skips.length() == 0) {
            return;
        }
        for(int i=0;i<this.skips.length();i++){
            JSONObject skip_info = this.skips.optJSONObject(i);
            long start = skip_info.optLong("start");
            long end = skip_info.optLong("end");
            String type = skip_info.optString("type");

            if ("片头".equals(type)) {
                if (!introSkipped && !userSeekedToIntro && t >= start && t < end) {
                    android.util.Log.i("SkipDebug", "EXEC INTRO: t=" + t);
                    if(this.c==null)Q();
                    if(this.c==null)return;
                    a(this.j);
                    this.c.setText("侦测到片头，已空降至"+aan.a(end));
                    this.c.clearAnimation();
                    if(this.k!=null)this.k.reset();
                    this.l = true;
                    a(this.j, 5000L);
                    c((int)end);
                    introSkipped = true;
                    return;
                }
            } else if ("片尾".equals(type)) {
                if (!outroPromptShown && t >= start) {
                    android.util.Log.i("SkipDebug", "EXEC OUTRO: t=" + t);
                    if(this.c==null)Q();
                    if(this.c==null)return;
                    a(this.j);
                    this.c.setText("侦测到片尾，即将结束");
                    this.c.clearAnimation();
                    if(this.k!=null)this.k.reset();
                    this.l = true;
                    a(this.j, 5000L);
                    outroPromptShown = true;
                    c((int)end);
                    return;
                }
            } else {
                String segmentKey = type + "_" + start + "_" + end;
                if (!skippedSegments.contains(segmentKey) && t >= start && t < end) {
                    android.util.Log.i("SkipDebug", "EXEC " + type + ": t=" + t + ", start=" + start + ", end=" + end);
                    if(this.c==null)Q();
                    if(this.c==null)return;
                    a(this.j);
                    this.c.setText("侦测到" + type + "，已空降至"+aan.a(end));
                    this.c.clearAnimation();
                    if(this.k!=null)this.k.reset();
                    this.l = true;
                    a(this.j, 5000L);
                    c((int)end);
                    skippedSegments.add(segmentKey);
                    return;
                }
            }
        }
    }

    public void updateSkips(JSONArray newSkips) {
        this.skips = newSkips;
        this.introSkipped = false;
        this.outroPromptShown = false;
    }

    public void onUserSeek(long seekToTime) {
        if (this.skips == null) return;
        for (int i = 0; i < this.skips.length(); i++) {
            JSONObject skip_info = this.skips.optJSONObject(i);
            long start = skip_info.optLong("start");
            long end = skip_info.optLong("end");
            String type = skip_info.optString("type");
            if ("片头".equals(type) && seekToTime >= start && seekToTime < end) {
                userSeekedToIntro = true;
                return;
            }
        }
    }

    public void resetSkipFlags() {
        this.introSkipped = false;
        this.outroPromptShown = false;
        this.userSeekedToIntro = false;
        this.skippedSegments.clear();
        this.chapterTipShown = false;
        this.initialPlayPosition = 0;
    }

    private void checkInitialPositionSkippedIntro() {
        if (this.skips == null || this.skips.length() == 0) {
            return;
        }
        if (this.initialPlayPosition <= 0) {
            return;
        }
        for (int i = 0; i < this.skips.length(); i++) {
            JSONObject skip_info = this.skips.optJSONObject(i);
            long end = skip_info.optLong("end");
            String type = skip_info.optString("type");
            if ("片头".equals(type) && this.initialPlayPosition >= end) {
                Log.i("xj", "[checkInitialPositionSkippedIntro] initial position " + this.initialPlayPosition + " >= intro end " + end + ", skip intro prompt");
                this.introSkipped = true;
                return;
            }
        }
    }

    private void P() {
        long j = this.i;
        long x = x();
        if (zt.a(x, j) && Math.abs(x - this.d.b) >= 30000) {
            BLog.dfmt("BreakPointPlayerAdapter", "bp: %s", aan.a(x));
            this.d.b = x;
            this.d.c = j;
            this.e.a(this.d);
        }
        PlayerParams b = b();
        if (b != null) {
            ResolveResourceParams resolveParams = b.mVideoParams.obtainResolveParams();
            a(resolveParams);
        }
    }

    private void a(ResolveResourceParams resolveResourceParams) {
        long j;
        if (resolveResourceParams == null) {
            return;
        }
        boolean noHistoryPlay = resolveResourceParams.mNoHistoryPlay;
        long i = resolveResourceParams.mCid;
        long i2 = resolveResourceParams.mAvid;
        int i3 = this.i;
        if (i3 <= 0) {
            return;
        }
        int x = x();
        int i4 = (i3 - x <= 5000 || L()) ? -1 : x / IjkMediaCodecInfo.RANK_MAX;
        int b = b(resolveResourceParams);
        long j2 = 0;
        if (resolveResourceParams.isBangumi()) {
            j2 = Long.parseLong(resolveResourceParams.mSeasonId);
            j = resolveResourceParams.mEpisodeId;
        } else {
            j = 0;
        }
        zq.a(p(), i2, i, j2, j, b, i4, 1L, noHistoryPlay);
    }

    private int b(ResolveResourceParams resolveResourceParams) {
        if (TextUtils.isEmpty(resolveResourceParams.mSeasonId)) {
            return "movie".equalsIgnoreCase(resolveResourceParams.mFrom) ? 2 : 3;
        }
        if("cheese".equals(resolveResourceParams.mFrom))return 10;
        return 1;
    }

    private void showChapterTip(JSONArray view_points) {
        if (view_points == null || view_points.length() <= 0) {
            return;
        }
        if (this.chapterTipShown) {
            Log.i("xj", "[showChapterTip] already shown, skip duplicate call");
            return;
        }
        this.chapterTipShown = true;
        if (this.c == null) Q();
        if (this.c == null) return;
        a(this.j);
        String chapterText = lp.a(o().getString(R.string.player_chapter_tip), String.valueOf(view_points.length()));
        this.c.setText(chapterText);
        this.c.clearAnimation();
        if (this.k != null) this.k.reset();
        this.l = true;
        a(this.j, 5000L);
        Log.i("xj", "[showChapterTip] chapter tip shown, count: " + view_points.length());
    }

    @Override // bl.xh, tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
    public void onPrepared(IMediaPlayer iMediaPlayer) {
        super.onPrepared(iMediaPlayer);
        this.i = I();
        yh c = c();
        
        if (this.f && c != null) {
            ResolveResourceParams resolveParams = c.a.mVideoParams.obtainResolveParams();
            
            if (this.g == 0) {
                JSONArray view_points = resolveParams.view_points;
                showChapterTip(view_points);
            }
            
            long j = c.d;
            IDanmakuDocument danmakuDocument = c.a.mDanmakuParams.getDanmakuDocument();
            if (danmakuDocument != null && danmakuDocument.hasPlayerSeekScript()) {
                long b = ym.b(danmakuDocument.getPlayerScriptItems().get(0).getText());
                if (j < b) {
                    j = b;
                }
            }
            
            this.initialPlayPosition = j;
            checkInitialPositionSkippedIntro();
            
            boolean isDashStream = c.a.mVideoParams.mMediaResource != null && c.a.mVideoParams.mMediaResource.dash != null;
            if (j > 0 && zt.a(j, this.i)) {
                if (isDashStream) {
                    Log.i("xj", "[seek-at-start] DASH stream, skip seekTo in onPrepared, seek-at-start will handle it");
                } else {
                    c((int)j);
                }
            }
            this.e.b(String.valueOf(resolveParams.mCid));
        }
        this.hasFirstPlayed = false;
        Log.i("xj", "[onPrepared] prepared but delay timer start, wait for first BUFFERING_END");
        this.g++;
    }

    private void Q() {
        final Activity o = o();
        if (o == null) {
            return;
        }
        this.c = (TextView) ((ViewStub) a(R.id.continued_play_tip)).inflate();
        this.h = o.getString(R.string.player_continue_play_tip);
        this.j = new Runnable() { // from class: bl.xj.1
            @Override // java.lang.Runnable
            public void run() {
                if (xj.this.k == null) {
                    xj.this.k = AnimationUtils.loadAnimation(o, R.anim.out_to_left);
                    xj.this.k.setAnimationListener(new Animation.AnimationListener() { // from class: bl.xj.1.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            xj.this.l = false;
                        }
                    });
                }
                xj.this.c.startAnimation(xj.this.k);
            }
        };
    }

    @Override // bl.xh
    public boolean g(int i, KeyEvent keyEvent) {
        if (i != 4 || !this.l) {
            return false;
        }
        // 去除重新播放逻辑，只隐藏提示
        a(this.j);
        a(this.j, 0L);
        return true;
    }

    @Override // bl.xh
    public void e() {
        P();
        super.e();
    }
}