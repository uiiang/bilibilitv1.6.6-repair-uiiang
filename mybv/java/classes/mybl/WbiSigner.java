package mybl;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.alibaba.fastjson.JSONObject;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.TreeMap;

public class WbiSigner {
    private static final String TAG = "WbiSigner";
    private static final int[] MIXIN_KEY_ENC_TAB = {
        46, 47, 18, 2, 53, 8, 23, 32, 15, 50, 10, 31, 58, 3, 45, 35, 27, 43, 5, 49,
        33, 9, 42, 19, 29, 28, 14, 39, 12, 38, 41, 13, 37, 48, 7, 16, 24, 55, 40,
        61, 26, 17, 0, 1, 60, 51, 30, 4, 22, 25, 54, 21, 56, 59, 6, 63, 57, 62, 11,
        36, 20, 34, 44, 52
    };

    private String imgKey;
    private String subKey;
    private String mixinKey;
    private long lastUpdateTime = 0;
    private static final long CACHE_DURATION = 3600000;

    private static WbiSigner instance;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());

    public interface WbiKeyCallback {
        void onKeysReady(String mixinKey);
        void onError(Exception e);
    }

    public static synchronized WbiSigner getInstance() {
        if (instance == null) {
            instance = new WbiSigner();
        }
        return instance;
    }

    private WbiSigner() {}

    public void getMixinKeyAsync(final WbiKeyCallback callback) {
        if (mixinKey != null && System.currentTimeMillis() - lastUpdateTime < CACHE_DURATION) {
            callback.onKeysReady(mixinKey);
            return;
        }

        new Thread(new Runnable() {
            @Override
            public void run() {
                final boolean updated = updateKeysBlocking();
                if (updated && mixinKey != null) {
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            callback.onKeysReady(mixinKey);
                        }
                    });
                } else {
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            callback.onError(new Exception("Failed to update WBI keys"));
                        }
                    });
                }
            }
        }).start();
    }

    public boolean updateKeysBlocking() {
        try {
            String navUrl = "https://api.bilibili.com/x/web-interface/nav";
            String response = fetchUrl(navUrl);
            JSONObject json = JSONObject.parseObject(response);

            int code = json.getInteger("code");
            if (code != 0 && code != -101) {
                Log.e(TAG, "Failed to get nav, code: " + code);
                return false;
            }

            JSONObject data = json.getJSONObject("data");
            if (data == null) {
                Log.e(TAG, "Nav data is null");
                return false;
            }

            JSONObject wbiImg = data.getJSONObject("wbi_img");
            if (wbiImg == null) {
                Log.e(TAG, "wbi_img is null");
                return false;
            }

            String imgUrl = wbiImg.getString("img_url");
            String subUrl = wbiImg.getString("sub_url");

            if (imgUrl == null || subUrl == null) {
                Log.e(TAG, "img_url or sub_url is null");
                return false;
            }

            this.imgKey = extractFileName(imgUrl);
            this.subKey = extractFileName(subUrl);
            this.mixinKey = getMixinKey(imgKey + subKey);
            this.lastUpdateTime = System.currentTimeMillis();

            Log.d(TAG, "Updated WBI keys: imgKey=" + imgKey + ", subKey=" + subKey + ", mixinKey=" + mixinKey);
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Error updating WBI keys", e);
            return false;
        }
    }

    private String extractFileName(String url) {
        if (url == null) return "";
        int lastSlash = url.lastIndexOf('/');
        int lastDot = url.lastIndexOf('.');
        if (lastSlash >= 0 && lastDot > lastSlash) {
            return url.substring(lastSlash + 1, lastDot);
        }
        return "";
    }

    private String getMixinKey(String rawKey) {
        StringBuilder mixin = new StringBuilder();
        for (int i = 0; i < 32; i++) {
            mixin.append(rawKey.charAt(MIXIN_KEY_ENC_TAB[i]));
        }
        return mixin.toString();
    }

    public String encWbiAndGetQuery(TreeMap<String, String> params) {
        // 单飞模式：多线程并发首次获取WBI密钥时，只允许一个线程执行拉取，
        // 其余线程等待锁释放后直接复用缓存密钥，避免多分P并发下载时重复请求nav接口导致部分失败
        synchronized (this) {
            if (mixinKey == null || System.currentTimeMillis() - lastUpdateTime > CACHE_DURATION) {
                if (!updateKeysBlocking()) {
                    Log.e(TAG, "Failed to get WBI keys");
                    return null;
                }
            }
        }

        String currentMixinKey = this.mixinKey;
        if (currentMixinKey == null) {
            Log.e(TAG, "mixinKey is still null");
            return null;
        }

        TreeMap<String, String> signed = new TreeMap<>();
        signed.putAll(params);

        long wts = System.currentTimeMillis() / 1000;
        signed.put("wts", String.valueOf(wts));

        StringBuilder query = new StringBuilder();
        boolean first = true;
        for (String key : signed.keySet()) {
            String value = signed.get(key);
            value = filterSpecialChars(value);
            try {
                String encodedKey = encodeURIComponent(key);
                String encodedValue = encodeURIComponent(value);
                if (!first) {
                    query.append("&");
                }
                query.append(encodedKey).append("=").append(encodedValue);
                first = false;
            } catch (Exception e) {
                Log.e(TAG, "Error encoding: " + key + "=" + value, e);
            }
        }

        String wbiSign = md5(query.toString() + currentMixinKey);
        signed.put("w_rid", wbiSign);

        StringBuilder result = new StringBuilder();
        first = true;
        for (String key : signed.keySet()) {
            if (!first) {
                result.append("&");
            }
            try {
                result.append(encodeURIComponent(key)).append("=").append(encodeURIComponent(signed.get(key)));
                first = false;
            } catch (Exception e) {
                Log.e(TAG, "Error building query", e);
            }
        }

        Log.d(TAG, "Signed query: " + result.toString());
        return result.toString();
    }

    private String filterSpecialChars(String input) {
        if (input == null) return "";
        return input.replaceAll("[!'()*]", "");
    }

    private String encodeURIComponent(String input) {
        if (input == null) return "";
        try {
            return URLEncoder.encode(input, "UTF-8")
                    .replace("+", "%20")
                    .replace("*", "%2A")
                    .replace("%21", "!")
                    .replace("%27", "'")
                    .replace("%28", "(")
                    .replace("%29", ")")
                    .replace("%7E", "~");
        } catch (Exception e) {
            return input;
        }
    }

    private String md5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] hashBytes = md.digest(input.getBytes("UTF-8"));
            StringBuilder hexString = new StringBuilder();
            for (byte b : hashBytes) {
                String hex = Integer.toHexString(0xff & b);
                if (hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }
            return hexString.toString();
        } catch (Exception e) {
            Log.e(TAG, "MD5 error", e);
            return "";
        }
    }

    private String fetchUrl(String urlStr) throws Exception {
        URL url = new URL(urlStr);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setConnectTimeout(5000);
        conn.setReadTimeout(5000);
        conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36");
        conn.setRequestProperty("Referer", "https://www.bilibili.com/");

        BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
        StringBuilder response = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            response.append(line);
        }
        reader.close();
        return response.toString();
    }

    public void clearCache() {
        this.mixinKey = null;
        this.lastUpdateTime = 0;
    }

    public String getImgKey() {
        return imgKey;
    }

    public String getSubKey() {
        return subKey;
    }
}
