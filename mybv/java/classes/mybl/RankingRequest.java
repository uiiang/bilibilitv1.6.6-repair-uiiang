package mybl;

import android.util.Log;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.bilibili.tv.api.area.BiliVideoV2;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * 分区排行榜请求工具类
 * 直接使用OkHttp发送请求，绕过Retrofit的拦截器
 */
public class RankingRequest {
    private static final String TAG = "RankingRequest";
    private static volatile OkHttpClient client;

    private static OkHttpClient getClient() {
        if (client == null) {
            synchronized (RankingRequest.class) {
                if (client == null) {
                    client = new OkHttpClient.Builder()
                            .connectTimeout(6000, TimeUnit.MILLISECONDS)
                            .readTimeout(6000, TimeUnit.MILLISECONDS)
                            .writeTimeout(6000, TimeUnit.MILLISECONDS)
                            .build();
                }
            }
        }
        return client;
    }

    /**
     * 获取分区排行榜数据
     * @param rid 分区ID
     * @return 视频列表，失败返回null
     */
    public static List<BiliVideoV2> getRanking(int rid) {
        String url = "https://api.bilibili.com/x/web-interface/ranking/v2?rid=" + rid + "&type=all";
        Log.i(TAG, "========== Request Details ==========");
        Log.i(TAG, "Request URL: " + url);
        Log.i(TAG, "Request Method: GET");
        Log.i(TAG, "Request Headers:");
        Log.i(TAG, "  User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36");
        Log.i(TAG, "  Referer: https://www.bilibili.com");
        Log.i(TAG, "  Accept: application/json, text/plain, */*");
        Log.i(TAG, "  Accept-Language: zh-CN,zh;q=0.9,en;q=0.8");

        Request request = new Request.Builder()
                .url(url)
                .get()
                .header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36")
                .header("Referer", "https://www.bilibili.com")
                .header("Accept", "application/json, text/plain, */*")
                .header("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8")
                .build();

        try (Response response = getClient().newCall(request).execute()) {
            if (!response.isSuccessful()) {
                Log.e(TAG, "Request failed: " + response.code());
                return null;
            }

            ResponseBody body = response.body();
            if (body == null) {
                Log.e(TAG, "Response body is null");
                return null;
            }

            String responseString = body.string();
            Log.i(TAG, "========== Response Details ==========");
            Log.i(TAG, "Response Code: " + response.code());
            Log.i(TAG, "Response Message: " + response.message());
            Log.i(TAG, "Response Headers:");
            for (String name : response.headers().names()) {
                Log.i(TAG, "  " + name + ": " + response.header(name));
            }
            Log.i(TAG, "Response Body Length: " + responseString.length());
            Log.i(TAG, "Response Body (first 1000 chars): " + (responseString.length() > 1000 ? responseString.substring(0, 1000) + "..." : responseString));

            JSONObject json = JSON.parseObject(responseString);
            int code = json.getIntValue("code");
            String message = json.getString("message");

            Log.i(TAG, "API Response: code=" + code + ", message=" + message);

            if (code != 0) {
                Log.e(TAG, "API error: code=" + code + ", message=" + message);
                return null;
            }

            // 新API返回的数据结构: {"code":0,"data":{"list":[...]}}
            JSONObject data = json.getJSONObject("data");
            if (data == null) {
                Log.w(TAG, "Data is null");
                return new ArrayList<>();
            }

            // 解析视频列表
            JSONArray listArray = data.getJSONArray("list");
            if (listArray == null || listArray.isEmpty()) {
                Log.w(TAG, "List is empty");
                return new ArrayList<>();
            }

            List<BiliVideoV2> videos = new ArrayList<>();
            for (int i = 0; i < listArray.size(); i++) {
                try {
                    JSONObject item = listArray.getJSONObject(i);
                    BiliVideoV2 video = new BiliVideoV2();
                    
                    // 字段映射：新API -> BiliVideoV2
                    video.title = item.getString("title");
                    video.cover = item.getString("pic");  // pic -> cover
                    video.param = String.valueOf(item.getLongValue("aid"));  // aid -> param
                    
                    // 解析owner信息
                    JSONObject owner = item.getJSONObject("owner");
                    if (owner != null) {
                        video.name = owner.getString("name");  // owner.name -> name
                    }
                    
                    // 解析stat信息
                    JSONObject stat = item.getJSONObject("stat");
                    if (stat != null) {
                        video.play = stat.getIntValue("view");      // stat.view -> play
                        video.danmaku = stat.getIntValue("danmaku"); // stat.danmaku -> danmaku
                        video.reply = stat.getIntValue("reply");
                        video.favourite = stat.getIntValue("favorite");
                    }
                    
                    // 其他字段
                    video.duration = item.getIntValue("duration");
                    video.pubdate = item.getLongValue("pubdate");
                    video.uri = "bilibili://video/" + video.param;
                    video.jumpTo = "av";
                    
                    videos.add(video);
                } catch (Exception e) {
                    Log.e(TAG, "Error parsing video " + i + ": " + e.getMessage());
                }
            }
            
            Log.i(TAG, "Parsed " + videos.size() + " videos");

            return videos;

        } catch (Exception e) {
            Log.e(TAG, "Request error: " + e.getMessage(), e);
            return null;
        }
    }
}