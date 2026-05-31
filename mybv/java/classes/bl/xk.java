package bl;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.os.Message;
import android.view.ViewGroup;
import com.bilibili.tv.R;
import com.bilibili.tv.api.danmaku.DanmakuSendData;
import com.bilibili.tv.player.basic.context.PlayerParams;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import com.bilibili.tv.player.interfaces.IEventCenter;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.videoplayer.core.context.IPlayerContext;
import tv.danmaku.videoplayer.core.danmaku.DanmakuPlayerInfo;
import tv.danmaku.videoplayer.core.danmaku.IDanmakuPlayer;
import tv.danmaku.videoplayer.core.danmaku.comment.CommentItem;
import tv.danmaku.videoplayer.core.danmaku.comment.DrawableItem;

import tv.danmaku.videoplayer.core.context.BiliPlayerContext;
import tv.danmaku.videoplayer.core.danmaku.DanmakuPlayerDFM;

import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: BL */
/* loaded from: classes.dex */
public class xk extends xh implements bbb<Message, Boolean> {
    private static final String g = "xk";
    protected IPlayerContext c;
    private boolean d;
    private yo f;
    private ViewGroup h;
    private boolean i;
    private int e = 1;
    private Runnable j = new Runnable() { // from class: bl.xk.1
        @Override // java.lang.Runnable
        public void run() {
            if (xk.this.c == null || xk.this.S() == null || xk.this.S().mCid == xk.this.b().mVideoParams.obtainResolveParams().mCid) {
                xk.this.V();
            } else {
                xk.this.R();
            }
        }
    };

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
    public boolean onInfo2(IMediaPlayer iMediaPlayer, int i, int i2, long j) {
        return false;
    }

    @Override // bl.xh
    @SuppressLint({"InlinedApi"})
    public void a(Bundle bundle) {
        this.b = new aaq(this);
        o().getWindow().setFlags(16777216, 16777216);
        this.h = (ViewGroup) a(R.id.danmaku_view);
        T();
        this.f = new yo();
        super.a(bundle);
    }

    private void T() {
        if (p() == null) {
            return;
        }
        this.e = p().getResources().getDisplayMetrics().widthPixels;
    }


    public void initSubtitle() {
        PlayerParams b = b();
        if (b == null) return;
        final ResolveResourceParams resolveParams = b.mVideoParams.obtainResolveParams();
        final BiliPlayerContext bc = (BiliPlayerContext) this.c;
        if (bc == null || bc.mDanmakuPlayerContext == null) return;
        final DanmakuPlayerDFM dp = (DanmakuPlayerDFM) bc.mDanmakuPlayerContext.mDanmakuPlayer;
        final xk self = this;

        android.util.Log.i("SkipInfo", "[INIT_DEBUG] ========== initSubtitle START ==========");
        android.util.Log.i("SkipInfo", "[INIT_DEBUG] mAvid=" + resolveParams.mAvid + ", mCid=" + resolveParams.mCid + ", mEpisodeId=" + resolveParams.mEpisodeId);
        android.util.Log.i("SkipInfo", "[INIT_DEBUG] mListKey=" + resolveParams.mListKey + ", mDuration=" + resolveParams.mDuration);
        android.util.Log.i("SkipInfo", "[INIT_DEBUG] clip_info_list=" + (resolveParams.clip_info_list != null ? resolveParams.clip_info_list.toString() : "null"));

        xj _xj = (xj) self.next().next().next().next().next();
        if (_xj != null) {
            android.util.Log.i("SkipInfo", "[INIT_DEBUG] _xj found, will set skips in async thread");
            if (dp != null && dp.mDanmakuView != null) {
                ((bgy)dp.mDanmakuView)._xj = _xj;
            }
        }

        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    android.util.Log.i("SkipInfo", "[INIT_DEBUG] Thread start: calling initPlayInfo");
                    resolveParams.initPlayInfo();
                    
                    android.util.Log.i("SkipInfo", "[INIT_DEBUG] initPlayInfo done, resolveParams.skips=" + (resolveParams.skips != null ? resolveParams.skips.toString() : "null"));
                    
                    xj _xj = (xj) self.next().next().next().next().next();
                    if (_xj != null) {
                        JSONArray localSkips = getLocalEffectiveSkips(resolveParams);
                        JSONArray serverSkips = resolveParams.skips;
                        
                        android.util.Log.i("SkipInfo", "[INIT_DEBUG] localSkips=" + (localSkips != null ? localSkips.toString() : "null"));
                        android.util.Log.i("SkipInfo", "[INIT_DEBUG] serverSkips=" + (serverSkips != null ? serverSkips.toString() : "null"));
                        
                        JSONArray mergedSkips = new org.json.JSONArray();
                        
                        boolean hasLocalIntro = false;
                        boolean hasLocalOutro = false;
                        
                        if (localSkips != null && localSkips.length() > 0) {
                            for (int i = 0; i < localSkips.length(); i++) {
                                JSONObject skip = localSkips.optJSONObject(i);
                                mergedSkips.put(skip);
                                String type = skip.optString("type");
                                if ("片头".equals(type)) hasLocalIntro = true;
                                if ("片尾".equals(type)) hasLocalOutro = true;
                            }
                            android.util.Log.i("SkipInfo", "[INIT_DEBUG] added localSkips to merged, hasLocalIntro=" + hasLocalIntro + ", hasLocalOutro=" + hasLocalOutro);
                        }
                        
                        if (serverSkips != null && serverSkips.length() > 0) {
                            for (int i = 0; i < serverSkips.length(); i++) {
                                JSONObject skip = serverSkips.optJSONObject(i);
                                String type = skip.optString("type");
                                boolean shouldAdd = true;
                                
                                if ("片头".equals(type) && hasLocalIntro) {
                                    shouldAdd = false;
                                    android.util.Log.i("SkipInfo", "[INIT_DEBUG] skip server intro because hasLocalIntro=true");
                                }
                                if ("片尾".equals(type) && hasLocalOutro) {
                                    shouldAdd = false;
                                    android.util.Log.i("SkipInfo", "[INIT_DEBUG] skip server outro because hasLocalOutro=true");
                                }
                                
                                if (shouldAdd) {
                                    mergedSkips.put(skip);
                                    android.util.Log.i("SkipInfo", "[INIT_DEBUG] added server skip: " + type + " " + skip.optLong("start") + "-" + skip.optLong("end"));
                                }
                            }
                        }
                        
                        android.util.Log.i("SkipInfo", "[INIT_DEBUG] mergedSkips=" + mergedSkips.toString());
                        
                        if (mergedSkips.length() > 0) {
                            _xj.skips = mergedSkips;
                            _xj.resetSkipFlags();
                            android.util.Log.i("SkipInfo", "[INIT_DEBUG] set _xj.skips and resetSkipFlags, total=" + mergedSkips.length());
                        } else {
                            android.util.Log.i("SkipInfo", "[INIT_DEBUG] mergedSkips is empty, skip setting");
                        }
                    }
                    if (dp != null && dp.mDanmakuView != null) {
                        ((bgy)dp.mDanmakuView)._xj = _xj;
                        dp.setSubtitleData(resolveParams.subtitle_data);
                    }
                } catch (Exception e) {
                    android.util.Log.e("SkipInfo", "[INIT_DEBUG] Exception: " + e.getMessage());
                    e.printStackTrace();
                }
            }
        }).start();
    }

    private JSONArray getLocalEffectiveSkips(ResolveResourceParams params) {
        android.util.Log.i("SkipInfo", "[LOCAL_DEBUG] ========== getLocalEffectiveSkips START ==========");
        android.util.Log.i("SkipInfo", "[LOCAL_DEBUG] mAvid=" + params.mAvid + ", mListKey=" + params.mListKey + ", mDuration=" + params.mDuration);
        
        JSONArray result = new org.json.JSONArray();
        long[] localSkip = null;

        if (!android.text.TextUtils.isEmpty(params.mListKey)) {
            String listKey = "skip_list_" + params.mListKey;
            localSkip = abd.getSkipTime(p(), listKey);
            android.util.Log.i("SkipInfo", "[LOCAL_DEBUG] try listKey=" + listKey + ", localSkip=" + (localSkip != null ? "[" + localSkip[0] + "," + localSkip[1] + "]" : "null"));
        }
        if (localSkip == null || (localSkip[0] == 0 && localSkip[1] == 0)) {
            String videoKey = abd.getVideoSkipKey(params.mAvid);
            localSkip = abd.getSkipTime(p(), videoKey);
            android.util.Log.i("SkipInfo", "[LOCAL_DEBUG] try videoKey=" + videoKey + ", localSkip=" + (localSkip != null ? "[" + localSkip[0] + "," + localSkip[1] + "]" : "null"));
        }

        if (localSkip == null || (localSkip[0] == 0 && localSkip[1] == 0)) {
            android.util.Log.i("SkipInfo", "[LOCAL_DEBUG] no local skip settings, return null");
            return null;
        }

        android.util.Log.i("SkipInfo", "[LOCAL_DEBUG] localSkip=" + "[" + localSkip[0] + "," + localSkip[1] + "]ms");

        try {
            if (localSkip[0] > 0) {
                JSONObject intro = new JSONObject();
                intro.put("type", "片头");
                intro.put("start", 0);
                intro.put("end", localSkip[0]);
                intro.put("source", "local");
                result.put(intro);
                android.util.Log.i("SkipInfo", "[LOCAL_DEBUG] added local intro: start=0, end=" + localSkip[0] + "ms (" + (localSkip[0]/1000) + "s)");
            }
            if (localSkip[1] > 0 && params.mDuration > 0) {
                JSONObject outro = new JSONObject();
                long duration = params.mDuration * 1000L;
                outro.put("type", "片尾");
                outro.put("start", duration - localSkip[1]);
                outro.put("end", duration);
                outro.put("source", "local");
                result.put(outro);
                android.util.Log.i("SkipInfo", "[LOCAL_DEBUG] added local outro: duration=" + duration + "ms, localSkip[1]=" + localSkip[1] + "ms");
                android.util.Log.i("SkipInfo", "[LOCAL_DEBUG] local outro start=" + (duration - localSkip[1]) + "ms (" + ((duration - localSkip[1])/1000) + "s), end=" + duration + "ms (" + (duration/1000) + "s)");
            }
        } catch (Exception e) {
            android.util.Log.e("SkipInfo", "[LOCAL_DEBUG] Exception: " + e.getMessage());
        }

        android.util.Log.i("SkipInfo", "[LOCAL_DEBUG] getLocalEffectiveSkips END, result=" + result.toString());
        return result;
    }

    private JSONArray getEffectiveSkips(ResolveResourceParams params) {
        JSONArray result = new org.json.JSONArray();
        long[] localSkip = null;

        if (!android.text.TextUtils.isEmpty(params.mListKey)) {
            localSkip = abd.getSkipTime(p(), "skip_list_" + params.mListKey);
        }
        if (localSkip == null || (localSkip[0] == 0 && localSkip[1] == 0)) {
            localSkip = abd.getSkipTime(p(), abd.getVideoSkipKey(params.mAvid));
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


    @Override // bl.xh
    public void g() {
        if (this.b == null) {
            this.b = new aaq(this);
        }
        super.g();
        if (K()) {
            this.c = n();
            if (this.c != null && this.d) {
                this.c.startDanmakuPlayer();
                this.d = false;
            } else {
                if (this.c == null || !this.c.isFromService()) {
                    return;
                }
                Q();
            }
        }

    }

    @Override // bl.xh
    public void h() {
        super.h();
        if (this.c == null || this.d) {
            return;
        }
        this.c.stopDanmakuPlayer();
        this.d = true;
    }

    @Override // bl.xh, android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        PlayerParams b;
        if (message.what == 60001 && (b = b()) != null) {
            CommentItem commentItem = (CommentItem) message.obj;
            if (azo.a.a().j() != null) {
                commentItem.setPublisherId(azo.a.a().j().b);
            } else {
                commentItem.setPublisherId(mg.a(p()).d());
            }
            b.mDanmakuParams.optDanmakuDocument().appendDanmaku(commentItem);
            this.c.onDanmakuAppended(commentItem);
        }
        return super.handleMessage(message);
    }

    private void c(boolean z) {
        if (this.c == null) {
            return;
        }
        if (z) {
            this.c.showDanmaku();
            azo.a.a().a(7, "1");
        } else {
            this.c.hideDanmaku();
            azo.a.a().a(7, "0");
        }
    }

    public void P() {
        if (this.c != null) {
            this.c.pauseDanmakuPlayer();
        }
    }

    public void Q() {
        if (this.i && this.c != null) {
            if (!this.c.isDanmakuPaused() || this.c.isVideoViewReleased()) {
                return;
            }
            this.c.resumeDanmakuPlayer();
            return;
        }
        a(0L);
    }

    protected final void a(long j) {
        a(this.j);
        a(this.j, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bl.xh
    public void r() {
        if (this.b != null) {
            this.b.a();
        }
        super.r();
    }

    protected void R() {
        if (this.c != null) {
            this.c.releaseDanmakuPlayer();
            U();
        }
    }

    private void U() {
        PlayerParams b;
        if (this.c == null || (b = b()) == null || b.mVideoParams == null) {
            return;
        }
        boolean isDanmakuDFMHardwareAcc = b.mDanmakuParams.isDanmakuDFMHardwareAcc();
        if (this.c != null && !this.c.isSurfaceRenderer()) {
            isDanmakuDFMHardwareAcc = true;
        }
        this.c.attachDanmakuView(this.h, isDanmakuDFMHardwareAcc, this.e);
        this.c.onScreenOrientationChanged(false, this.e);
        this.c.prepareAndStartDanmakuPlayer(b.mVideoParams.obtainResolveParams().mCid);
        if (b.mDanmakuParams.isDanmakuHideByDefault()) {
            this.c.hideDanmaku();
        }
        this.i = true;
initSubtitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        this.c = n();
        if (o() == null || this.h == null || this.c == null) {
            return;
        }
        if (this.i) {
            Q();
        } else {
            this.c.onScreenOrientationChanged(false, this.e);
            U();
        }
    }

    @Override // bl.xh
    public void G() {
        Q();
        super.G();
    }

    @Override // bl.xh
    public void E() {
        P();
        super.E();
    }

    protected DanmakuPlayerInfo S() {
        IPlayerContext n = n();
        if (n != null) {
            return n.getDanmakuInfo();
        }
        return null;
    }

    @Override // bl.xh
    public void a(Activity activity, xf xfVar) {
        super.a(activity, xfVar);
        xfVar.a(new int[]{3, 5}, this);
    }

    @Override // bl.bbb
    public Boolean a(Message message) {
        int i = message.what;
        if (i == 3 || i == 5) {
            c(((Boolean) message.obj).booleanValue());
        }
        return Boolean.FALSE;
    }

    @Override // bl.xh
    public void b(IEventCenter.EventType eventType, Object... objArr) {
        if (eventType == IEventCenter.EventType.SWITCH_EPISODE) {
            R();
        } else if (eventType == IEventCenter.EventType.DANMAKU_SIZE && this.c != null) {
                this.c.setDanmakuOption(IDanmakuPlayer.DanmakuOptionName.TEXTSIZE_SCALE, (Float) objArr[0]);
        } else if (eventType == IEventCenter.EventType.DANMAKU_ALPHA && this.c != null) {
            this.c.setDanmakuOption(IDanmakuPlayer.DanmakuOptionName.TRANSPARENCY, (Float) objArr[0]);
        } else if (eventType == IEventCenter.EventType.POST_DANMAKU) {
            String str = (String) objArr[0];
            int i1 = 25;
            int i2 = 16777215;
            int i3 = 1;
            if (objArr.length == 4) {
                try {
                    i1 = Integer.parseInt((String) objArr[1]);
                    i2 = Integer.parseInt((String) objArr[2]);
                    i3 = Integer.parseInt((String) objArr[3]);
                } catch (Exception e) {
                    att.a(e);
                }
            }
            a(str, i1, i2, i3);
        } else if (eventType == IEventCenter.EventType.SEEK && objArr.length >= 3 && this.c != null) {
            this.c.seekDanmaku(((Long) objArr[1]).longValue(), ((Long) objArr[2]).longValue());
        } else if (eventType == IEventCenter.EventType.SWITCH_SPEED && this.c != null) {
            this.c.setSpeed(((Float) objArr[0]).floatValue());
        } else if (eventType == IEventCenter.EventType.SCREEN_ADJUST && this.c != null) {
            this.c.adjustScreen(((Integer) objArr[0]).intValue());
        }
        super.b(eventType, objArr);
    }

    public void a(CharSequence charSequence, int i, int i2, int i3) {
        DanmakuSendData danmakuSendData = new DanmakuSendData();
        danmakuSendData.text = charSequence;
        danmakuSendData.textSize = i;
        danmakuSendData.textColor = i2;
        danmakuSendData.type = i3;
        a(danmakuSendData);
    }

    public void a(DanmakuSendData danmakuSendData) {
        PlayerParams b;
        if (this.c == null || (b = b()) == null) {
            return;
        }
        ResolveResourceParams obtainResolveParams = b.mVideoParams.obtainResolveParams();
        this.f.a(q());
        this.f.a(o(), String.valueOf(obtainResolveParams.mCid), obtainResolveParams.mAvid, obtainResolveParams.mPage, x(), ((Integer) aah.a(b).a("bundle_key_player_params_jump_from", 0)).intValue(), danmakuSendData, false, 0, this);
    }
}