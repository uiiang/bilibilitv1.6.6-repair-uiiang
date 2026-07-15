package mybl;

import android.util.Log;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/**
 * API日志拦截器，用于记录请求和响应的详细信息
 */
public class ApiLogInterceptor implements Interceptor {
    private static final String TAG = "ApiLog";

    @Override
    public Response intercept(Chain chain) throws IOException {
        Request request = chain.request();
        String url = request.url().toString();

        // 只记录分区相关的请求
        if (url.contains("region") || url.contains("ranking")) {
            Log.i(TAG, "=== API Request ===");
            Log.i(TAG, "URL: " + url);
            Log.i(TAG, "Method: " + request.method());

            long startTime = System.currentTimeMillis();
            Response response;
            try {
                response = chain.proceed(request);
            } catch (Exception e) {
                Log.e(TAG, "Request failed: " + e.getMessage(), e);
                throw e;
            }
            long endTime = System.currentTimeMillis();

            Log.i(TAG, "=== API Response ===");
            Log.i(TAG, "URL: " + url);
            Log.i(TAG, "Code: " + response.code());
            Log.i(TAG, "Time: " + (endTime - startTime) + "ms");

            // 读取响应体
            ResponseBody responseBody = response.body();
            if (responseBody != null) {
                String responseString = responseBody.string();
                int maxLength = 1000;
                if (responseString.length() > maxLength) {
                    Log.i(TAG, "Body (truncated): " + responseString.substring(0, maxLength) + "...");
                    Log.i(TAG, "Body length: " + responseString.length());
                } else {
                    Log.i(TAG, "Body: " + responseString);
                }

                // 重新创建响应体，因为string()只能调用一次
                ResponseBody newBody = ResponseBody.create(responseBody.contentType(), responseString);
                return response.newBuilder().body(newBody).build();
            }

            return response;
        }

        return chain.proceed(request);
    }
}