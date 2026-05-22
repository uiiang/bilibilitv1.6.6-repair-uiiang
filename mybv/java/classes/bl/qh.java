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
import com.bilibili.lib.media.resource.MediaResource;
import com.bilibili.lib.media.resource.Segment;
import mybl.CookieUtil;
import mybl.WbiSigner;
import bl.mg;
import com.bilibili.tv.MainApplication;
import java.util.TreeMap;
import android.util.Base64;

public class qh implements IMediaResolver {
    static final SparseArray<qn> a = new SparseArray<>();
    private qx b;

    static {
        qn qnVar = new qn("bb2api", String.valueOf(15), "流畅 360P", "MPEG-4", "MP4A", "H264", 1, 90);
        qn qnVar2 = new qn("bb2api", String.valueOf(16), "流畅 360P", "MPEG-4", "MP4A", "H264", 1, 100);
        qn qnVar3 = new qn("bb2api", String.valueOf(32), "清晰 480P", "FLV", "MP4A", "H264", 2, 150);
        qn qnVar4 = new qn("bb2api", String.valueOf(48), "高清 720P", "MPEG-4", "MP4A", "H264", 3, 175);
        qn qnVar5 = new qn("bb2api", String.valueOf(64), "高清 720P", "FLV", "MP4A", "H264", 4, 200);
        qn qnVar6 = new qn("bb2api", String.valueOf(80), "高清 1080P", "FLV", "MP4A", "H264", 5, 400);
        qn qnVar7 = new qn("bb2api", "bd", "高清 1080P+", "FLV", "MP4A", "H264", 11, 800);
        qn qnVar8 = new qn("bb2api", "unknown", "unknown", "unknown", "", "", 6, -100000);
        qnVar3.a(qnVar2);
        qnVar5.a(qnVar4);
        a.put(15, qnVar);
        a.put(16, qnVar2);
        a.put(32, qnVar3);
        a.put(48, qnVar4);
        a.put(64, qnVar5);
        a.put(80, qnVar6);
        a.put(112, qnVar7);
        a.put(-1000, qnVar8);
    }

    @Override // com.bilibili.lib.media.resolver.resolve.IMediaResolver
    public MediaResource resolveMediaResource(Context context, ResolveMediaResourceParams resolveMediaResourceParams, ps psVar, pu puVar, ResolveResourceExtra resolveResourceExtra) throws ResolveException {
        long resolveStart = System.currentTimeMillis();
        Log.i("PlaySpeed", "[PGC_RESOLVE_START] qh.resolveMediaResource(), cid=" + resolveMediaResourceParams.c() + ", avid=" + resolveMediaResourceParams.a());
        if (resolveMediaResourceParams == null || resolveMediaResourceParams.c() <= 0 || psVar == null) {
            throw new ResolveMediaSourceException("invalid resolve params", -1);
        }
        this.b = new qx(psVar.b(), resolveMediaResourceParams.b(), resolveMediaResourceParams.c());
        this.b.a();
        this.b.b();
        MediaResource result = a(context, resolveMediaResourceParams.i(), psVar, puVar, resolveResourceExtra, false);
        Log.i("PlaySpeed", "[PGC_RESOLVE_END] qh.resolveMediaResource() done, elapsed=" + (System.currentTimeMillis() - resolveStart) + "ms, hasDash=" + (result != null && result.dash != null));
        return result;
    }

    @Override // com.bilibili.lib.media.resolver.resolve.IMediaResolver
    public Segment resolveSegment(Context context, pt ptVar, String str) {
        return ptVar.a();
    }

    @NonNull
    private MediaResource a(Context context, ResolveMediaResourceParams resolveMediaResourceParams, ps psVar, pu puVar, ResolveResourceExtra resolveResourceExtra, boolean z) throws ResolveException {
        long pgcApiStart = System.currentTimeMillis();
        a(resolveMediaResourceParams);
        int a2 = a(resolveMediaResourceParams, psVar);
        
        long cid = resolveMediaResourceParams.c();
        long avid = resolveMediaResourceParams.a();
        long epId = resolveResourceExtra.a();
        
        Log.i("PgcPlayUrl", "========== PGC PlayUrl Request (Web API + WBI) ==========");
        Log.i("PgcPlayUrl", "cid=" + cid + ", avid=" + avid + ", epId=" + epId + ", qn=" + a2);
        Log.i("PlaySpeed", "[PGC_API_REQUEST_START] cid=" + cid + ", avid=" + avid + ", epId=" + epId + ", qn=" + a2);
        
        mg biliAccount = mg.a(MainApplication.a());
        String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
        Log.i("PgcPlayUrl", "Cookie: " + (cookie != null && !cookie.isEmpty() ? "exists(" + cookie.length() + "chars)" : "null"));
        
        String midStr = CookieUtil.getCookieValue(cookie, "DedeUserID");
        if (midStr != null && !midStr.isEmpty()) {
            try {
                long mid = Long.parseLong(midStr);
                if (mid > 0) {
                    Log.i("PgcPlayUrl", "Activating buvid for mid=" + mid);
                    mybl.BuvidActivator.ensureBuvidActive(mid, cookie);
                }
            } catch (NumberFormatException e) {
                Log.w("PgcPlayUrl", "Failed to parse DedeUserID: " + midStr);
            }
        }
        
        TreeMap<String, String> params = new TreeMap<>();
        params.put("qn", String.valueOf(a2));
        params.put("fnver", "0");
        params.put("fnval", String.valueOf(0b011111010000));
        params.put("fourk", "1");
        params.put("from_client", "BROWSER");
        params.put("drm_tech_type", "2");
        
        if (avid > 0) {
            params.put("avid", String.valueOf(avid));
        }
        if (cid > 0) {
            params.put("cid", String.valueOf(cid));
        }
        if (epId > 0) {
            params.put("ep_id", String.valueOf(epId));
        }
        
        String gaiaVtoken = CookieUtil.getCookieValue(cookie, "x-bili-gaia-vtoken");
        if (gaiaVtoken != null && !gaiaVtoken.trim().isEmpty()) {
            params.put("gaia_vtoken", gaiaVtoken.trim());
            Log.i("PgcPlayUrl", "Added gaia_vtoken parameter");
        }
        
        StringBuilder queryBuilder = new StringBuilder();
        boolean first = true;
        for (String key : params.keySet()) {
            if (!first) {
                queryBuilder.append("&");
            }
            queryBuilder.append(key).append("=").append(params.get(key));
            first = false;
        }
        String query = queryBuilder.toString();
        
        String fullUrl = "https://api.bilibili.com/pgc/player/web/playurl?" + query;
        Log.i("PgcPlayUrl", "URL (no WBI): " + fullUrl);
        
        qa.a requestBuilder = new qa.a(qi.class)
            .a(fullUrl)
            .b("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36")
            .a(true);
        
        requestBuilder.a("env", "prod");
        requestBuilder.a("app-key", "android64");
        requestBuilder.a("x-bili-aurora-zone", "sh001");
        requestBuilder.a("X-Blbl-Skip-Origin", "1");
        
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
                Log.w("PgcPlayUrl", "Failed to parse DedeUserID: " + midStr);
            }
        }
        
        if (cookie != null && !cookie.isEmpty()) {
            requestBuilder.a("Cookie", cookie);
            Log.i("PgcPlayUrl", "Added Cookie header");
        }
        requestBuilder.a("Referer", "https://www.bilibili.com");
        
        qa a3 = requestBuilder.a();
        this.b.a(a3.g());
        long apiRequestTime = System.currentTimeMillis();
        Log.i("PlaySpeed", "[PGC_API_REQUEST_END] API request done, elapsed=" + (apiRequestTime - pgcApiStart) + "ms");
        
        Log.i("PgcPlayUrl", "Response URL: " + a3.g());
        
        qi qiVar = (qi) pz.a(a3);
        
        if (qiVar == null) {
            Log.e("PgcPlayUrl", "Response is null!");
            throw new ResolveMediaSourceException("empty response", -5);
        }
        this.b.a(qiVar.b(), qiVar.c());
        
        Log.i("PgcPlayUrl", "Response code=" + qiVar.b() + ", message=" + qiVar.c());
        Log.i("PgcPlayUrl", "qiVar.a()=" + qiVar.a() + " (isSuccess)");
        
        if (!qiVar.a()) {
            Log.e("PgcPlayUrl", "PlayUrl request failed!");
            throw new ResolveMediaSourceException("connect error", -5);
        }
        try {
            MediaResource a5 = qiVar.a(context, resolveMediaResourceParams, a2, (SparseArray<qn>) null, (int[]) null);
            if (a5 == null) {
                Log.e("PgcPlayUrl", "MediaResource is null!");
                throw new ResolveMediaSourceException("resolve fake", -3);
            }
            Log.i("PgcPlayUrl", "MediaResource resolved successfully");
            this.b.a(a5);
            return a5;
        } catch (ResolveException e) {
            Log.e("PgcPlayUrl", "ResolveException: " + e.getMessage());
            this.b.a(e, new String(qiVar.c()));
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
        } else if (e == 800) {
            e = a(800);
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
            Log.e("PgcPlayUrl", "genAuroraEid error: " + e.getMessage());
            return null;
        }
    }
}
