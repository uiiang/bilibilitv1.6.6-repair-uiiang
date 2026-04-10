package mybl;

import android.util.Log;
import java.io.IOException;
import java.util.TreeMap;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public class WbiSignInterceptor implements Interceptor {
    private static final String TAG = "WbiSignInterceptor";
    
    private static final String[] WBI_PATHS = {
        "/x/web-interface/popular/series/one",
        "/x/web-interface/popular/series/list",
        "/x/web-interface/popular/precious",
        // "/x/web-interface/wbi/search/type",
        // "/x/space/wbi/arc/search",
        "/x/web-interface/wbi/view"
    };
    
    @Override
    public Response intercept(Chain chain) throws IOException {
        Request originalRequest = chain.request();
        HttpUrl originalUrl = originalRequest.url();
        String path = originalUrl.encodedPath();
        
        if (needsWbiSign(path)) {
            TreeMap<String, String> params = extractParams(originalUrl);
            String signedQuery = WbiSigner.getInstance().encWbiAndGetQuery(params);
            
            if (signedQuery != null) {
                HttpUrl newUrl = originalUrl.newBuilder()
                        .query(signedQuery)
                        .build();
                
                Request newRequest = originalRequest.newBuilder()
                        .url(newUrl)
                        .build();
                
                Log.d(TAG, "Signed URL: " + newUrl.toString());
                return chain.proceed(newRequest);
            }
        }
        
        return chain.proceed(originalRequest);
    }
    
    private boolean needsWbiSign(String path) {
        for (String wbiPath : WBI_PATHS) {
            if (path.equals(wbiPath)) {
                return true;
            }
        }
        return false;
    }
    
    private TreeMap<String, String> extractParams(HttpUrl url) {
        TreeMap<String, String> params = new TreeMap<>();
        for (String name : url.queryParameterNames()) {
            String value = url.queryParameter(name);
            if (value != null) {
                params.put(name, value);
            }
        }
        return params;
    }
}
