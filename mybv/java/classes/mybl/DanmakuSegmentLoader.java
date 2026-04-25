package mybl;

import android.content.Context;
import android.util.Log;

import com.bilibili.api.danmaku.protobuf.DmSegMobileReply;
import com.bilibili.tv.MainApplication;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

import bl.mg;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import tv.danmaku.videoplayer.core.danmaku.DanmakuLoadException;

public class DanmakuSegmentLoader {
    private static final String TAG = "DanmakuLoad";
    private static final int SEGMENT_SIZE_MS = 6 * 60 * 1000;
    private static OkHttpClient okHttpClient = null;

    private static synchronized OkHttpClient getOkHttpClient() {
        if (okHttpClient == null) {
            okHttpClient = new OkHttpClient.Builder()
                .connectTimeout(30, TimeUnit.SECONDS)
                .readTimeout(30, TimeUnit.SECONDS)
                .writeTimeout(10, TimeUnit.SECONDS)
                .build();
        }
        return okHttpClient;
    }

    public static int calculateSegmentIndex(long timeMs) {
        int index = (int)(timeMs / SEGMENT_SIZE_MS) + 1;
        Log.i(TAG, "[计算索引] timeMs=" + timeMs + " segmentIndex=" + index);
        return index;
    }

    public static String getSegmentDanmakuUrl(String aid, String cid, int segmentIndex) {
        return "https://api.bilibili.com/x/v2/dm/web/seg.so?type=1&oid=" + cid + "&pid=" + aid + "&segment_index=" + segmentIndex;
    }

    public static byte[] loadSegmentDanmakuBytes(Context context, String aid, String cid, int segmentIndex) throws DanmakuLoadException {
        String url = getSegmentDanmakuUrl(aid, cid, segmentIndex);
        Log.i(TAG, "[分段请求] aid=" + aid + " cid=" + cid + " segment=" + segmentIndex + " url=" + url);
        
        try {
            mg biliAccount = mg.a(MainApplication.a());
            String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
            
            Request request = new Request.Builder()
                .url(url)
                .addHeader("Accept", "*/*")
                .addHeader("Accept-Encoding", "gzip, deflate")
                .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36")
                .addHeader("Connection", "keep-alive")
                .addHeader("Cookie", cookie)
                .build();
            
            Response response = getOkHttpClient().newCall(request).execute();
            if (!response.isSuccessful()) {
                throw new DanmakuLoadException(new IOException("Unexpected response code: " + response.code()));
            }
            
            InputStream inputStream = response.body().byteStream();
            String encoding = response.header("Content-Encoding", "");
            if ("gzip".equalsIgnoreCase(encoding)) {
                inputStream = new GZIPInputStream(inputStream, 1024);
            } else if ("deflate".equalsIgnoreCase(encoding)) {
                inputStream = new InflaterInputStream(inputStream, new Inflater(true), 1024);
            }
            
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int len;
            while ((len = inputStream.read(buffer)) != -1) {
                baos.write(buffer, 0, len);
            }
            inputStream.close();
            response.close();
            
            byte[] data = baos.toByteArray();
            Log.i(TAG, "[请求成功] segment=" + segmentIndex + " bytes=" + data.length);
            return data;
            
        } catch (Exception e) {
            Log.e(TAG, "[请求失败] segment=" + segmentIndex + " error=" + e.getMessage());
            throw new DanmakuLoadException(e);
        }
    }

    public static InputStream loadSegmentDanmakuStream(Context context, String aid, String cid, int segmentIndex) throws DanmakuLoadException {
        byte[] data = loadSegmentDanmakuBytes(context, aid, cid, segmentIndex);
        
        int minTime = (segmentIndex - 1) * SEGMENT_SIZE_MS;
        int maxTime = segmentIndex * SEGMENT_SIZE_MS;
        Log.i(TAG, "[数据返回] segment=" + segmentIndex + " bytes=" + data.length + 
              " timeRange=" + minTime + "-" + maxTime + "ms");
        
        return new ByteArrayInputStream(data);
    }
}
