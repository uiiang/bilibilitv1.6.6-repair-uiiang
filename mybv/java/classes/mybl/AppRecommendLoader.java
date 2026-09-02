package mybl;

import android.text.TextUtils;
import android.util.Log;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.bilibili.tv.api.main.MainRecommendEx;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/**
 * App推荐接口加载器（参考项目BT同款实现）：
 * GET https://app.bilibili.com/x/v2/feed/index?<params>
 * 签名：参数追加 appkey/ts 后按key排序，md5(query + appsec)（BT LT.c() 同款，安卓appkey 783bbb7264451d82）。
 * 游标：响应 items[].idx（长整型）作为下一页游标（BT C0134Go.s() 同款）。
 * 补流：结果不足时最多连发5页补足（BT s() 内部 while 循环同款）。
 * 仅已登录（有access_key）时调用，未登录由调用方回退Web推荐接口。
 */
public final class AppRecommendLoader {
    private static final String TAG = "AppRecommendLoader";
    private static final String FEED_URL = "https://app.bilibili.com/x/v2/feed/index";
    /** 安卓App appkey/appsec（与参考项目BT解码后一致，已验证可用） */
    private static final String APP_KEY = "783bbb7264451d82";
    private static final String APP_SEC = "2653583c8873dea268ab9386918b1d65";
    /** App UA（BT X5.b(z)→C1386p0(5) 同款格式，固定小米13设备档案，对应 build 8830500） */
    private static final String APP_UA =
            "Dalvik/2.1.0 (Linux; U; Android 13; 2211133C Build/TKQ1.221114.001) 8.83.0 os/android"
                    + " model/2211133C mobi_app/android build/8830500 channel/xiaomi innerVer/8830500"
                    + " osVer/13 network/2 grpc-java-cronet/1.36.1";

    /** App feed加载结果：内容列表 + 下一页游标 + 是否已到尽头 */
    public static final class Result {
        public final List<MainRecommendEx.Content> contents;
        public final long nextIdx;
        /** true=服务端已无更多数据（返回空/游标未推进），调用方可据此停止翻页 */
        public final boolean end;

        Result(List<MainRecommendEx.Content> contents, long nextIdx, boolean end) {
            this.contents = contents;
            this.nextIdx = nextIdx;
            this.end = end;
        }
    }

    private AppRecommendLoader() {
    }

    /**
     * 请求App推荐feed（阻塞，需在子线程调用）。
     *
     * @param idx       本次起始游标（首次/刷新传0）
     * @param accessKey 登录access_key
     * @param minCount  期望最少条数（结果不足时最多连发5页补足，传20）
     * @return 结果（含下一页游标与end标记，contents可能为空：网络失败end=false可重试，服务端无数据end=true）
     */
    public static Result fetch(long idx, String accessKey, int minCount) {
        List<MainRecommendEx.Content> all = new ArrayList<MainRecommendEx.Content>();
        // 单次加载内按uri去重，防止服务端重复下发相同卡片
        Set<String> seenUris = new HashSet<String>();
        long cursor = idx;
        int target = Math.max(1, minCount);
        for (int round = 0; round < 5 && all.size() < target; round++) {
            long requestIdx = cursor;
            JSONObject data = requestOnce(requestIdx, accessKey, requestIdx == 0);
            if (data == null) {
                // 网络失败：可重试（end=false），游标保持不变
                return new Result(all, cursor, false);
            }
            JSONArray items = data.getJSONArray("items");
            if (items == null || items.isEmpty()) {
                return new Result(all, cursor, true);
            }
            for (int i = 0; i < items.size(); i++) {
                JSONObject item = items.getJSONObject(i);
                MainRecommendEx.Content content = parseItem(item);
                if (content != null && seenUris.add(content.getUri())) {
                    all.add(content);
                }
            }
            // 游标=响应最后一条的idx（BT同款：feed按时间流式排列，向后翻页游标允许回退，勿取最大值）
            long lastIdx = items.getJSONObject(items.size() - 1).getLongValue("idx");
            if (lastIdx <= 0 || lastIdx == requestIdx) {
                // 游标未推进：服务端无更多新数据
                return new Result(all, lastIdx > 0 ? lastIdx : cursor, true);
            }
            cursor = lastIdx;
        }
        Log.i(TAG, "[App推荐] 加载" + all.size() + "条 起始游标=" + idx + " 下一游标=" + cursor);
        return new Result(all, cursor, false);
    }

    /**
     * 解析App feed视频卡片（BT C() 同款字段映射）：
     * 仅接受 goto=av/空 且含 player_args 的卡片（过滤广告/直播/番剧/横幅等）。
     */
    private static MainRecommendEx.Content parseItem(JSONObject item) {
        try {
            String gotoType = item.getString("goto");
            if (gotoType != null && !gotoType.isEmpty() && !"av".equals(gotoType)) {
                return null;
            }
            JSONObject playerArgs = item.getJSONObject("player_args");
            if (playerArgs == null) {
                return null;
            }
            long aid = playerArgs.getLongValue("aid");
            if (aid <= 0) {
                return null;
            }
            MainRecommendEx.Content content = new MainRecommendEx.Content();
            content.setCardType("small_popular_ugc");
            content.setCardGoto("av");
            content.setJumpId(aid);
            content.setUri("bilibili_yst://video/" + aid);
            content.setCover(item.getString("cover"));
            content.setTitle(item.getString("title"));
            content.setPubdate(item.getLongValue("pubdate"));
            content.setDuration(playerArgs.getIntValue("duration"));
            JSONObject args = item.getJSONObject("args");
            if (args != null) {
                content.setOwnerName(args.getString("up_name"));
            }
            // 播放数/弹幕数来自格式化文本（如"1.2万"）
            content.setPlay(parseCount(item.getString("cover_left_text_1")));
            content.setDanmaku(parseCount(item.getString("cover_left_text_2")));
            return content;
        } catch (Exception e) {
            Log.w(TAG, "[App推荐] 卡片解析异常 " + e.getMessage());
            return null;
        }
    }

    /** 解析格式化数字文本："1.2万"→12000，"886"→886，异常返回0 */
    private static int parseCount(String text) {
        if (TextUtils.isEmpty(text)) {
            return 0;
        }
        try {
            text = text.trim();
            if (text.endsWith("万")) {
                return (int) (Double.parseDouble(text.substring(0, text.length() - 1)) * 10000.0d);
            }
            if (text.endsWith("亿")) {
                return (int) (Double.parseDouble(text.substring(0, text.length() - 1)) * 100000000.0d);
            }
            return (int) Long.parseLong(text);
        } catch (Exception e) {
            return 0;
        }
    }

    /** 单次请求（BT s() 参数 + LT.c() 签名 + X5.U0 请求同款） */
    private static JSONObject requestOnce(long idx, String accessKey, boolean firstPage) {
        HttpURLConnection conn = null;
        try {
            // 业务参数（BT s() L2484同款；TreeMap自动按key排序，与签名字序一致）
            TreeMap<String, String> params = new TreeMap<String, String>();
            params.put("idx", String.valueOf(idx));
            params.put("flush", firstPage ? "0" : "8");
            params.put("column", "4");
            params.put("pull", firstPage ? "true" : "false");
            params.put("feed_version", "V8");
            params.put("network", "wifi");
            params.put("platform", "android");
            params.put("device", "pad");
            params.put("mobi_app", "android");
            if (firstPage) {
                params.put("open_event", "cold");
            }
            if (!TextUtils.isEmpty(accessKey)) {
                params.put("access_key", accessKey);
            }
            // 签名（BT LT.c() 同款：追加appkey/ts后 md5(排序query + appsec)）
            params.put("appkey", APP_KEY);
            params.put("ts", String.valueOf(System.currentTimeMillis() / 1000L));
            StringBuilder query = new StringBuilder();
            for (Map.Entry<String, String> entry : params.entrySet()) {
                if (query.length() > 0) {
                    query.append('&');
                }
                query.append(entry.getKey()).append('=').append(entry.getValue());
            }
            String url = FEED_URL + "?" + query + "&sign=" + md5(query.toString() + APP_SEC);

            conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(10000);
            conn.setReadTimeout(10000);
            // 请求头（BT X5.b(z) 同款）
            conn.setRequestProperty("User-Agent", APP_UA);
            conn.setRequestProperty("APP-KEY", "android64");
            conn.setRequestProperty("ENV", "prod");

            int code = conn.getResponseCode();
            if (code != 200) {
                Log.w(TAG, "[App推荐请求] HTTP " + code + " idx=" + idx);
                return null;
            }
            BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
            reader.close();
            JSONObject resp = JSON.parseObject(sb.toString());
            if (resp == null || resp.getIntValue("code") != 0) {
                Log.w(TAG, "[App推荐请求] code=" + (resp == null ? -1 : resp.getIntValue("code"))
                        + " message=" + (resp == null ? "null" : resp.getString("message")));
                return null;
            }
            return resp.getJSONObject("data");
        } catch (Exception e) {
            Log.w(TAG, "[App推荐请求异常] idx=" + idx + " " + e.getMessage());
            return null;
        } finally {
            if (conn != null) {
                try {
                    conn.disconnect();
                } catch (Exception ignored) {
                }
            }
        }
    }

    private static String md5(String text) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] digest = md.digest(text.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (Exception e) {
            return "";
        }
    }
}
