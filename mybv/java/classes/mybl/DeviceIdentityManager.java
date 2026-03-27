package mybl;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.alibaba.fastjson.JSONObject;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.util.UUID;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class DeviceIdentityManager {
    private static final String TAG = "DeviceIdentity";
    private static final String PREF_NAME = "device_identity";
    
    private static final String KEY_BUVID3 = "buvid3";
    private static final String KEY_BUVID4 = "buvid4";
    private static final String KEY_B_NUT = "b_nut";
    private static final String KEY_UUID = "uuid";
    private static final String KEY_BILI_TICKET = "bili_ticket";
    private static final String KEY_BILI_TICKET_EXPIRE = "bili_ticket_expire";
    
    private static final long BILI_TICKET_DURATION = 259200000L;
    
    private static DeviceIdentityManager instance;
    private SharedPreferences prefs;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    
    private String buvid3;
    private String buvid4;
    private String bNut;
    private String uuid;
    private String biliTicket;
    private long biliTicketExpire;
    
    public interface InitCallback {
        void onSuccess();
        void onError(Exception e);
    }
    
    public static synchronized DeviceIdentityManager getInstance() {
        if (instance == null) {
            instance = new DeviceIdentityManager();
        }
        return instance;
    }
    
    private DeviceIdentityManager() {}
    
    public void init(Context context) {
        prefs = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
        loadFromPrefs();
        
        if (uuid == null || uuid.isEmpty()) {
            uuid = generateUuid();
            saveToPrefs(KEY_UUID, uuid);
        }
        
        if (bNut == null || bNut.isEmpty()) {
            bNut = String.valueOf(System.currentTimeMillis() / 1000);
            saveToPrefs(KEY_B_NUT, bNut);
        }
        
        final boolean needBuvid = (buvid3 == null || buvid3.isEmpty() || buvid4 == null || buvid4.isEmpty());
        final boolean needTicket = (biliTicket == null || biliTicket.isEmpty() || 
            System.currentTimeMillis() > biliTicketExpire - 3600000);
        
        if (needBuvid || needTicket) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        refreshFromNetwork();
                        Log.d(TAG, "Device identity refreshed from network");
                    } catch (Exception e) {
                        Log.e(TAG, "Error refreshing device identity", e);
                    }
                }
            }).start();
        }
    }
    
    public void initAsync(final Context context, final InitCallback callback) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    init(context);
                    
                    boolean needRefresh = false;
                    if (buvid3 == null || buvid3.isEmpty() || buvid4 == null || buvid4.isEmpty()) {
                        needRefresh = true;
                    }
                    if (biliTicket == null || biliTicket.isEmpty() || 
                        System.currentTimeMillis() > biliTicketExpire - 3600000) {
                        needRefresh = true;
                    }
                    
                    if (needRefresh) {
                        refreshFromNetwork();
                    }
                    
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            callback.onSuccess();
                        }
                    });
                } catch (final Exception e) {
                    Log.e(TAG, "Init error", e);
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            callback.onError(e);
                        }
                    });
                }
            }
        }).start();
    }
    
    private void loadFromPrefs() {
        buvid3 = prefs.getString(KEY_BUVID3, null);
        buvid4 = prefs.getString(KEY_BUVID4, null);
        bNut = prefs.getString(KEY_B_NUT, null);
        uuid = prefs.getString(KEY_UUID, null);
        biliTicket = prefs.getString(KEY_BILI_TICKET, null);
        biliTicketExpire = prefs.getLong(KEY_BILI_TICKET_EXPIRE, 0);
    }
    
    private void saveToPrefs(String key, String value) {
        prefs.edit().putString(key, value).apply();
    }
    
    private void saveToPrefs(String key, long value) {
        prefs.edit().putLong(key, value).apply();
    }
    
    private String generateUuid() {
        String rawUuid = UUID.randomUUID().toString().replace("-", "").toUpperCase();
        return rawUuid + "0841689infoc";
    }
    
    private void refreshFromNetwork() throws Exception {
        fetchBuvid();
        fetchBiliTicket();
    }
    
    private void fetchBuvid() throws Exception {
        String url = "https://api.bilibili.com/x/frontend/finger/spi";
        String response = fetchUrl(url);
        JSONObject json = JSONObject.parseObject(response);
        
        int code = json.getIntValue("code");
        if (code != 0) {
            Log.e(TAG, "Failed to fetch buvid, code: " + code);
            return;
        }
        
        JSONObject data = json.getJSONObject("data");
        if (data != null) {
            buvid3 = data.getString("b_3");
            buvid4 = data.getString("b_4");
            
            if (buvid3 != null) {
                saveToPrefs(KEY_BUVID3, buvid3);
            }
            if (buvid4 != null) {
                saveToPrefs(KEY_BUVID4, buvid4);
            }
            
            Log.d(TAG, "Updated buvid3=" + buvid3 + ", buvid4=" + buvid4);
        }
    }
    
    private void fetchBiliTicket() throws Exception {
        long ts = System.currentTimeMillis() / 1000;
        String hexSign = hmacSha256("XgwSnGZ1p", "ts" + ts);
        
        String url = "https://api.bilibili.com/bapis/bilibili.api.ticket.v1.Ticket/GenWebTicket" +
                "?key_id=ec02" +
                "&hexsign=" + hexSign +
                "&context[ts]=" + ts +
                "&csrf=";
        
        String response = fetchUrlPost(url);
        JSONObject json = JSONObject.parseObject(response);
        
        int code = json.getIntValue("code");
        if (code != 0) {
            Log.e(TAG, "Failed to fetch bili_ticket, code: " + code);
            return;
        }
        
        JSONObject data = json.getJSONObject("data");
        if (data != null) {
            biliTicket = data.getString("ticket");
            long createdAt = data.getLongValue("created_at");
            long ttl = data.getLongValue("ttl");
            biliTicketExpire = (createdAt + ttl) * 1000;
            
            saveToPrefs(KEY_BILI_TICKET, biliTicket);
            saveToPrefs(KEY_BILI_TICKET_EXPIRE, biliTicketExpire);
            
            Log.d(TAG, "Updated bili_ticket, expire at: " + biliTicketExpire);
        }
    }
    
    public void refreshBiliTicketAsync() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    fetchBiliTicket();
                } catch (Exception e) {
                    Log.e(TAG, "Error refreshing bili_ticket", e);
                }
            }
        }).start();
    }
    
    private String hmacSha256(String key, String message) throws Exception {
        Mac mac = Mac.getInstance("HmacSHA256");
        SecretKeySpec secretKeySpec = new SecretKeySpec(key.getBytes("UTF-8"), "HmacSHA256");
        mac.init(secretKeySpec);
        byte[] hash = mac.doFinal(message.getBytes("UTF-8"));
        return bytesToHex(hash);
    }
    
    private String bytesToHex(byte[] bytes) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            String hex = Integer.toHexString(0xff & b);
            if (hex.length() == 1) {
                sb.append('0');
            }
            sb.append(hex);
        }
        return sb.toString();
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
    
    private String fetchUrlPost(String urlStr) throws Exception {
        URL url = new URL(urlStr);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setConnectTimeout(5000);
        conn.setReadTimeout(5000);
        conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36");
        conn.setRequestProperty("Referer", "https://www.bilibili.com/");
        conn.setDoOutput(true);
        conn.getOutputStream().close();
        
        BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
        StringBuilder response = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            response.append(line);
        }
        reader.close();
        return response.toString();
    }
    
    public String getDeviceCookie() {
        StringBuilder sb = new StringBuilder();
        
        if (buvid3 != null && !buvid3.isEmpty()) {
            sb.append("buvid3=").append(buvid3);
        }
        if (buvid4 != null && !buvid4.isEmpty()) {
            if (sb.length() > 0) sb.append("; ");
            sb.append("buvid4=").append(buvid4);
        }
        if (bNut != null && !bNut.isEmpty()) {
            if (sb.length() > 0) sb.append("; ");
            sb.append("b_nut=").append(bNut);
        }
        if (uuid != null && !uuid.isEmpty()) {
            if (sb.length() > 0) sb.append("; ");
            sb.append("_uuid=").append(uuid);
        }
        if (biliTicket != null && !biliTicket.isEmpty() && System.currentTimeMillis() < biliTicketExpire) {
            if (sb.length() > 0) sb.append("; ");
            sb.append("bili_ticket=").append(biliTicket);
        }
        
        String result = sb.toString();
        Log.d(TAG, "getDeviceCookie: buvid3=" + (buvid3 != null ? "有" : "无") + 
            ", buvid4=" + (buvid4 != null ? "有" : "无") + 
            ", biliTicket=" + (biliTicket != null && System.currentTimeMillis() < biliTicketExpire ? "有效" : "无效"));
        return result;
    }
    
    public String getBuvid3() {
        return buvid3;
    }
    
    public String getBuvid4() {
        return buvid4;
    }
    
    public String getBNut() {
        return bNut;
    }
    
    public String getUuid() {
        return uuid;
    }
    
    public String getBiliTicket() {
        if (biliTicket != null && System.currentTimeMillis() < biliTicketExpire) {
            return biliTicket;
        }
        return null;
    }
    
    public boolean isBiliTicketValid() {
        return biliTicket != null && !biliTicket.isEmpty() && System.currentTimeMillis() < biliTicketExpire;
    }
    
    public void clear() {
        prefs.edit().clear().apply();
        buvid3 = null;
        buvid4 = null;
        bNut = null;
        uuid = null;
        biliTicket = null;
        biliTicketExpire = 0;
    }
}
