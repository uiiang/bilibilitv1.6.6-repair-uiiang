package bl;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import mybl.CookieUtil;
import com.bilibili.tv.player.basic.context.PlayerParams;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import com.bilibili.tv.player.basic.context.VideoViewParams;
import com.bilibili.tv.player.report.HeartbeatApiService;
import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class zn {
    public static final void a(boolean z, Context context, zo zoVar, PlayerParams playerParams, yh yhVar, int i, int i2, boolean z2) {
        bbi.b(zoVar, "reportV2Context");
        bbi.b(yhVar, "playerParamsHolder");
        if (zoVar.a() == 0 || playerParams == null || context == null) {
            return;
        }
        ResolveResourceParams resolveResourceParams = playerParams.mVideoParams.obtainResolveParams();
        if (resolveResourceParams != null && resolveResourceParams.mNoHistoryPlay) {
            return;
        }
        kn a = kn.a();
        bbi.a((Object) a, "ConnectivityMonitor.getInstance()");
        if (a.c()) {
            long d = mg.a(context).d();
            long i3 = playerParams.mVideoParams.obtainResolveParams().mAvid;
            long i4 = playerParams.mVideoParams.obtainResolveParams().mCid;
            String str = playerParams.mVideoParams.obtainResolveParams().mSeasonId;
            long j = playerParams.mVideoParams.obtainResolveParams().mEpisodeId;
            String str2 = str == null ? "3" : "4";
            VideoViewParams videoViewParams = playerParams.mVideoParams;
            int i5 = a(playerParams, videoViewParams != null ? videoViewParams.obtainResolveParams() : null, yhVar)[1];
            ResolveResourceParams resolveParams = playerParams.mVideoParams.mResolveParams;
            bbi.a((Object) resolveParams, "playerParams.mVideoParams.mResolveParams");
            int qualityInt = resolveParams.getQualityInt();
            long j2 = i / 1000;
            String str3 = str != null ? "2" : "1";
            int i6 = bbi.a((Object) "downloaded", (Object) playerParams.mVideoParams.obtainResolveParams().mFrom) ? 2 : 1;
            zoVar.a(i2 / IjkMediaCodecInfo.RANK_MAX);
            if (!z) {
                if (z2) {
                    zoVar.h();
                } else {
                    zoVar.i();
                }
            }
            mg biliAccount = mg.a(context);
            String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
            String csrf = CookieUtil.getBiliJct(biliAccount);
            long sid = 0;
            if (!TextUtils.isEmpty(str)) {
                try {
                    sid = Long.parseLong(str);
                } catch (NumberFormatException e) {
                    Log.e("Heartbeat", "Failed to parse season_id: " + str);
                }
            }
            int typeInt = str != null ? 4 : 3;
            int subTypeInt = 0;
            if (str != null) {
                subTypeInt = 1;
            }
            long playedTime = i2 / 1000;
            ((HeartbeatApiService) vo.a(HeartbeatApiService.class)).webHeartbeat(
                i3,
                i4,
                sid,
                j,
                playedTime,
                zoVar.c(),
                zoVar.a(),
                typeInt,
                subTypeInt,
                qualityInt,
                j2,
                csrf,
                cookie
            ).a();
        }
    }

    public static final int[] a(PlayerParams playerParams, ResolveResourceParams resolveResourceParams, yh yhVar) {
        int b = yr.b(playerParams);
        int i = 4;
        if (b <= 0) {
            if (TextUtils.isEmpty(resolveResourceParams != null ? resolveResourceParams.mSeasonId : null)) {
                if (bcl.a("movie", resolveResourceParams != null ? resolveResourceParams.mFrom : null, true)) {
                    b = 2;
                } else if (yhVar == null || !yhVar.b) {
                    i = 3;
                    b = 0;
                } else {
                    b = 0;
                    i = 0;
                }
            } else {
                b = 1;
            }
        }
        return new int[]{i, b};
    }
}