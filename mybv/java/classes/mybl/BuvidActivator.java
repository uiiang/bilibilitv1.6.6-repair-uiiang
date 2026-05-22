package mybl;

import android.util.Base64;
import android.util.Log;

import org.json.JSONObject;

import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class BuvidActivator {
    private static final String TAG = "BuvidActivator";
    private static final String AURORA_KEY = "ad1va46a7lza";
    
    private static long lastActivatedMid = 0;
    private static long lastActivatedDay = 0;
    
    public static String genAuroraEid(long mid) {
        if (mid <= 0) return null;
        try {
            byte[] key = AURORA_KEY.getBytes("UTF-8");
            byte[] input = String.valueOf(mid).getBytes("UTF-8");
            byte[] out = new byte[input.length];
            for (int i = 0; i < input.length; i++) {
                out[i] = (byte) (input[i] ^ key[i % key.length]);
            }
            return Base64.encodeToString(out, Base64.NO_PADDING | Base64.NO_WRAP);
        } catch (Exception e) {
            Log.e(TAG, "genAuroraEid failed", e);
            return null;
        }
    }
    
    public static synchronized boolean ensureBuvidActive(long mid, String cookie) {
        if (mid <= 0) {
            Log.w(TAG, "Invalid mid: " + mid);
            return false;
        }
        
        long nowMs = System.currentTimeMillis();
        long epochDay = nowMs / 86_400_000L;
        
        if (lastActivatedMid == mid && lastActivatedDay == epochDay) {
            Log.d(TAG, "Already activated today for mid=" + mid);
            return true;
        }
        
        try {
            SecureRandom random = new SecureRandom();
            byte[] rand = new byte[32 + 8 + 4];
            random.nextBytes(rand);
            
            rand[32] = 0;
            rand[33] = 0;
            rand[34] = 0;
            rand[35] = 0;
            rand[36] = 73;
            rand[37] = 69;
            rand[38] = 78;
            rand[39] = 68;
            byte[] tail = new byte[4];
            random.nextBytes(tail);
            for (int i = 0; i < 4; i++) {
                rand[40 + i] = tail[i];
            }
            
            String randPngEnd = Base64.encodeToString(rand, Base64.NO_WRAP);
            
            JSONObject innerJson = new JSONObject();
            innerJson.put("adca", "Linux");
            innerJson.put("bfe9", randPngEnd.substring(randPngEnd.length() - 50));
            
            String jsonData = new JSONObject()
                .put("3064", 1)
                .put("39c8", "333.1387.fp.risk")
                .put("3c43", innerJson)
                .toString();
            
            String bodyStr = new JSONObject()
                .put("payload", jsonData)
                .toString();
            
            Log.i(TAG, "ExClimbWuzhi request body: " + bodyStr);
            
            String auroraEid = genAuroraEid(mid);
            
            RequestBody body = RequestBody.create(
                MediaType.parse("application/json; charset=utf-8"),
                bodyStr
            );
            
            Request.Builder requestBuilder = new Request.Builder()
                .url("https://api.bilibili.com/x/internal/gaia-gateway/ExClimbWuzhi")
                .post(body)
                .header("Content-Type", "application/json")
                .header("env", "prod")
                .header("app-key", "android64")
                .header("x-bili-aurora-zone", "sh001")
                .header("x-bili-mid", String.valueOf(mid))
                .header("Referer", "https://www.bilibili.com")
                .header("X-Blbl-Skip-Origin", "1");
            
            if (auroraEid != null) {
                requestBuilder.header("x-bili-aurora-eid", auroraEid);
            }
            
            if (cookie != null && !cookie.isEmpty()) {
                requestBuilder.header("Cookie", cookie);
            }
            
            OkHttpClient client = new OkHttpClient.Builder()
                .connectTimeout(10, java.util.concurrent.TimeUnit.SECONDS)
                .readTimeout(10, java.util.concurrent.TimeUnit.SECONDS)
                .writeTimeout(10, java.util.concurrent.TimeUnit.SECONDS)
                .build();
            
            Response response = client.newCall(requestBuilder.build()).execute();
            String responseBody = response.body() != null ? response.body().string() : "";
            
            Log.i(TAG, "ExClimbWuzhi response: code=" + response.code() + ", body=" + responseBody);
            
            if (response.isSuccessful()) {
                lastActivatedMid = mid;
                lastActivatedDay = epochDay;
                Log.i(TAG, "buvid activated successfully for mid=" + mid);
                return true;
            } else {
                Log.w(TAG, "ExClimbWuzhi failed: " + response.code());
                return false;
            }
        } catch (Exception e) {
            Log.e(TAG, "ensureBuvidActive failed", e);
            return false;
        }
    }
}
