package bl;

import android.content.Context;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import bl.qa;
import com.bilibili.lib.media.resolver.exception.ResolveException;
import com.bilibili.lib.media.resolver.exception.ResolveMediaSourceException;
import com.bilibili.lib.media.resolver.params.ResolveMediaResourceParams;
import com.bilibili.lib.media.resolver.params.ResolveResourceExtra;
import com.bilibili.lib.media.resolver.resolve.IMediaResolver;
import com.bilibili.lib.media.resolver.resolve.vip.VipQualityToken;
import com.bilibili.lib.media.resource.MediaResource;
import com.bilibili.lib.media.resource.Segment;
import mybl.CookieUtil;
import mybl.WbiSigner;
import bl.mg;
import com.bilibili.tv.MainApplication;
import java.util.TreeMap;
import android.util.Base64;

public class ql implements IMediaResolver {
    private static final SparseArray<qn> a = new SparseArray<>();
    private qx b;

    static {
        qn qnVar = new qn("bili2api", String.valueOf(16), "流畅 360P", "MPEG-4", "MP4A", "H264", 1, 100);
        qn qnVar2 = new qn("bili2api", String.valueOf(32), "清晰 480P", "FLV", "MP4A", "H264", 2, 150);
        qn qnVar3 = new qn("bili2api", String.valueOf(48), "高清 720P", "MPEG-4", "MP4A", "H264", 3, 175);
        qn qnVar4 = new qn("bili2api", String.valueOf(64), "高清 720P", "FLV", "MP4A", "H264", 4, 200);
        qn qnVar5 = new qn("bili2api", String.valueOf(80), "高清 1080P", "FLV", "MP4A", "H264", 5, 400);
        qn qnVar6 = new qn("bili2api", "unknown", "unknown", "unknown", "", "", 6, -100000);
        qnVar2.a(qnVar);
        qnVar4.a(qnVar3);
        a.put(16, qnVar);
        a.put(32, qnVar2);
        a.put(48, qnVar3);
        a.put(64, qnVar4);
        a.put(80, qnVar5);
        a.put(-1000, qnVar6);
    }

    @Override // com.bilibili.lib.media.resolver.resolve.IMediaResolver
    public MediaResource resolveMediaResource(Context context, ResolveMediaResourceParams resolveMediaResourceParams, ps psVar, pu puVar, ResolveResourceExtra resolveResourceExtra) throws ResolveException {
        long resolveStart = System.currentTimeMillis();
        Log.i("PlaySpeed", "[UGC_RESOLVE_START] ql.resolveMediaResource(), cid=" + resolveMediaResourceParams.c() + ", avid=" + resolveMediaResourceParams.a());
        if (resolveMediaResourceParams == null || resolveMediaResourceParams.c() <= 0 || psVar == null) {
            throw new ResolveMediaSourceException("invalid resolve params", -1);
        }
        this.b = new qx(psVar.b(), resolveMediaResourceParams.b(), resolveMediaResourceParams.c());
        this.b.a();
        this.b.b();
        MediaResource result = a(context, resolveMediaResourceParams.i(), psVar, puVar, resolveResourceExtra, false);
        Log.i("PlaySpeed", "[UGC_RESOLVE_END] ql.resolveMediaResource() done, elapsed=" + (System.currentTimeMillis() - resolveStart) + "ms, hasDash=" + (result != null && result.dash != null));
        return result;
    }

    @Override // com.bilibili.lib.media.resolver.resolve.IMediaResolver
    public Segment resolveSegment(Context context, pt ptVar, String str) {
        return ptVar.a();
    }

    @NonNull
    private MediaResource a(Context context, ResolveMediaResourceParams resolveMediaResourceParams, ps psVar, pu puVar, ResolveResourceExtra resolveResourceExtra, boolean z) throws ResolveException {
        long ugcApiStart = System.currentTimeMillis();
        a(resolveMediaResourceParams);
        int a2 = a(resolveMediaResourceParams, psVar);
        
        long cid = resolveMediaResourceParams.c();
        long avid = resolveMediaResourceParams.a();
        
        Log.i("UgcPlayUrl", "========== UGC PlayUrl Request (Web API + WBI) ==========");
        Log.i("UgcPlayUrl", "cid=" + cid + ", avid=" + avid + ", qn=" + a2);
        Log.i("PlaySpeed", "[UGC_API_REQUEST_START] cid=" + cid + ", avid=" + avid + ", qn=" + a2);
        
        mg biliAccount = mg.a(MainApplication.a());
        String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
        Log.i("UgcPlayUrl", "Cookie: " + (cookie != null && !cookie.isEmpty() ? "exists(" + cookie.length() + "chars)" : "null"));
        
        boolean hasSessData = cookie != null && cookie.contains("SESSDATA=");
        
        TreeMap<String, String> params = new TreeMap<>();
        params.put("cid", String.valueOf(cid));
        params.put("avid", String.valueOf(avid));
        params.put("qn", String.valueOf(a2));
        params.put("fnver", "0");
        params.put("fnval", String.valueOf(0b011111010000));
        params.put("fourk", "1");
        params.put("voice_balance", "1");
        params.put("from_client", "BROWSER");
        
        if (!hasSessData) {
            params.put("try_look", "1");
            Log.i("UgcPlayUrl", "No SESSDATA, using try_look=1");
        }
        
        String signedQuery = WbiSigner.getInstance().encWbiAndGetQuery(params);
        if (signedQuery == null) {
            Log.e("UgcPlayUrl", "Failed to sign WBI parameters!");
            throw new ResolveMediaSourceException("WBI sign failed", -5);
        }
        
        String fullUrl = "https://api.bilibili.com/x/player/wbi/playurl?" + signedQuery;
        Log.i("UgcPlayUrl", "Signed URL: " + fullUrl);
        
        qa.a requestBuilder = new qa.a(qm.class)
            .a(fullUrl)
            .b("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36")
            .a(true);
        
        requestBuilder.a("env", "prod");
        requestBuilder.a("app-key", "android64");
        requestBuilder.a("x-bili-aurora-zone", "sh001");
        
        String midStr = CookieUtil.getCookieValue(cookie, "DedeUserID");
        if (midStr != null && !midStr.isEmpty()) {
            try {
                long mid = Long.parseLong(midStr);
                if (mid > 0) {
                    requestBuilder.a("x-bili-mid", String.valueOf(mid));
                    String auroraEid = genAuroraEid(mid);
                    if (auroraEid != null) {
                        requestBuilder.a("x-bili-aurora-eid", auroraEid);
                    }
                }
            } catch (NumberFormatException e) {
                Log.w("UgcPlayUrl", "Failed to parse DedeUserID: " + midStr);
            }
        }
        
        if (cookie != null && !cookie.isEmpty()) {
            requestBuilder.a("Cookie", cookie);
            Log.i("UgcPlayUrl", "Added Cookie header");
        }
        requestBuilder.a("Referer", "https://www.bilibili.com");
        
        qa a3 = requestBuilder.a();
        this.b.a(a3.g());
        Log.i("PlaySpeed", "[UGC_API_REQUEST_END] API request done, elapsed=" + (System.currentTimeMillis() - ugcApiStart) + "ms");
        
        Log.i("UgcPlayUrl", "Response URL: " + a3.g());
        
        qm qmVar = (qm) pz.a(a3);
        
        int i = -5;
        if (qmVar == null) {
            Log.e("UgcPlayUrl", "Response is null!");
            throw new ResolveMediaSourceException("empty response", -5);
        }
        if (!qmVar.a()) {
            Log.e("UgcPlayUrl", "PlayUrl request failed! code=" + qmVar.b() + ", message=" + qmVar.c());
            this.b.a(qmVar.b(), qmVar.c());
            throw new ResolveMediaSourceException("connect error", i);
        }
        this.b.a(qmVar.b(), qmVar.c());
        Log.i("UgcPlayUrl", "PlayUrl request succeeded");
        try {
            MediaResource a4 = qmVar.a(context, resolveMediaResourceParams, a2, null, null);
            if (a4 == null) {
                Log.e("UgcPlayUrl", "MediaResource is null!");
                throw new ResolveMediaSourceException("resolve fake", -3);
            }
            Log.i("UgcPlayUrl", "MediaResource resolved successfully");
            this.b.a(a4);
            return a4;
        } catch (ResolveException e) {
            Log.e("UgcPlayUrl", "ResolveException: " + e.getMessage());
            this.b.a(e, new String(qmVar.c()));
            throw e;
        }
    }

    private int a(ResolveMediaResourceParams resolveMediaResourceParams, ps psVar) {
        int a2;
        String f = resolveMediaResourceParams.f();
        int e = resolveMediaResourceParams.e();
        if (e == 0) {
            e = (TextUtils.isEmpty(psVar.e()) && TextUtils.isEmpty(psVar.f())) ? 64 : 0;
        } else if (e == 100) {
            e = a(100);
        } else if (e == 150) {
            e = a(150);
        } else if (e == 175) {
            e = a(175);
        } else if (e == 200) {
            e = a(200);
        } else if (e == 400) {
            e = a(400);
        }
        return (TextUtils.isEmpty(f) || !qn.a(f) || (a2 = a(f)) == -1000) ? e : a2;
    }

    private void a(ResolveMediaResourceParams resolveMediaResourceParams) {
        String f = resolveMediaResourceParams.f();
        if (TextUtils.isEmpty(f) || qn.a(f)) {
            return;
        }
        resolveMediaResourceParams.a((String) null);
    }

    private int a(int i) {
        for (int i2 = 0; i2 < a.size(); i2++) {
            if (a.valueAt(i2).g == i) {
                return a.keyAt(i2);
            }
        }
        return 64;
    }

    private int a(String str) {
        int b;
        if (!TextUtils.isEmpty(str) && (b = qn.b(str)) >= 0) {
            return b;
        }
        return -1000;
    }

    private String a(Context context, int i, ResolveMediaResourceParams resolveMediaResourceParams, ResolveResourceExtra resolveResourceExtra, pu puVar, ps psVar) {
        VipQualityToken a2;
        if (qw.a(context, i) && (a2 = qp.a(resolveMediaResourceParams, resolveResourceExtra, puVar, psVar)) != null) {
            return a2.a();
        }
        return null;
    }

    private static String genAuroraEid(long mid) {
        if (mid <= 0) return null;
        try {
            byte[] key = "ad1va46a7lza".getBytes("UTF-8");
            byte[] input = String.valueOf(mid).getBytes("UTF-8");
            byte[] output = new byte[input.length];
            for (int i = 0; i < input.length; i++) {
                output[i] = (byte) ((input[i] ^ key[i % key.length]) & 0xFF);
            }
            return Base64.encodeToString(output, Base64.NO_PADDING | Base64.NO_WRAP);
        } catch (Exception e) {
            Log.e("UgcPlayUrl", "genAuroraEid error: " + e.getMessage());
            return null;
        }
    }
}
