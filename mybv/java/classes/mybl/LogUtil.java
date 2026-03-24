package mybl;

import android.util.Log;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONArray;

public final class LogUtil {
    private static final int MAX_LOG_LENGTH = 2000;

    private LogUtil() {
    }

    public static void d(String tag, String msg) {
        printLog(Log.DEBUG, tag, msg);
    }

    public static void i(String tag, String msg) {
        printLog(Log.INFO, tag, msg);
    }

    public static void w(String tag, String msg) {
        printLog(Log.WARN, tag, msg);
    }

    public static void e(String tag, String msg) {
        printLog(Log.ERROR, tag, msg);
    }

    public static void json(String tag, Object obj) {
        if (obj == null) {
            Log.i(tag, "json: null");
            return;
        }
        String jsonStr;
        if (obj instanceof JSONObject) {
            jsonStr = ((JSONObject) obj).toJSONString();
        } else if (obj instanceof JSONArray) {
            jsonStr = ((JSONArray) obj).toJSONString();
        } else {
            jsonStr = JSONObject.toJSONString(obj);
        }
        printFullLog(tag, jsonStr);
    }

    public static void json(String tag, String jsonStr) {
        if (jsonStr == null || jsonStr.isEmpty()) {
            Log.i(tag, "json: null or empty");
            return;
        }
        printFullLog(tag, jsonStr);
    }

    private static void printFullLog(String tag, String msg) {
        if (msg == null || msg.isEmpty()) {
            Log.i(tag, "message is null or empty");
            return;
        }
        int length = msg.length();
        int chunkCount = (length + MAX_LOG_LENGTH - 1) / MAX_LOG_LENGTH;
        Log.i(tag, "========== Start (" + length + " chars, " + chunkCount + " chunks) ==========");
        for (int i = 0; i < length; i += MAX_LOG_LENGTH) {
            int end = Math.min(i + MAX_LOG_LENGTH, length);
            String chunk = msg.substring(i, end);
            Log.i(tag, chunk);
        }
        Log.i(tag, "========== End ==========");
    }

    private static void printLog(int priority, String tag, String msg) {
        if (msg == null || msg.isEmpty()) {
            Log.println(priority, tag, "message is null or empty");
            return;
        }
        int length = msg.length();
        for (int i = 0; i < length; i += MAX_LOG_LENGTH) {
            int end = Math.min(i + MAX_LOG_LENGTH, length);
            String chunk = msg.substring(i, end);
            Log.println(priority, tag, chunk);
        }
    }
}
