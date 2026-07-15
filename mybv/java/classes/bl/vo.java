package bl;

import bl.wc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import retrofit2.Retrofit;

import retrofit2.http.BaseUrl;
import mybl.WbiSignInterceptor;
import mybl.ApiLogInterceptor;

/* compiled from: BL */
/* loaded from: classes.dex */
public class vo {
    public static wc.a a = new wd();
    public static a b = new a();
    private static volatile OkHttpClient c;
    private static volatile Retrofit d;

    static {
        b.d().add(new ApiLogInterceptor()); // 添加API日志拦截器
        b.d().add(new WbiSignInterceptor());
    }

    public static <T> T a(Class<T> service) {
        return (T) b(service).create(service);
    }

    public static OkHttpClient getOkHttpClient() {
        return b();
    }

    private static Retrofit b(Class<?> service) {
        //if (d == null) {
            synchronized (vo.class) {
                //if (d == null) {
                    OkHttpClient b2 = b();
                    d = new Retrofit.Builder().baseUrl(service.getAnnotation(BaseUrl.class).value()).addCallAdapterFactory(new vq(b2, jk.c())).addConverterFactory(vr.a).client(b2).build();
                //}
            }
        //}
        return d;
    }

    private static OkHttpClient b() {
        if (c == null) {
            synchronized (vo.class) {
                if (c == null) {
                    OkHttpClient.Builder b2 = us.b();
                    b2.connectTimeout(b.a(), TimeUnit.MILLISECONDS);
                    b2.readTimeout(b.b(), TimeUnit.MILLISECONDS);
                    b2.writeTimeout(b.c(), TimeUnit.MILLISECONDS);
                    b2.interceptors().addAll(b.d());
                    b2.networkInterceptors().addAll(b.e());
                    b2.protocols(Collections.singletonList(Protocol.HTTP_1_1));
                    c = b2.build();
                }
            }
        }
        return c;
    }

    /* compiled from: BL */
    public static class a {
        private long a = 6000;
        private long b = 6000;
        private long c = 6000;
        private List<Interceptor> d = new ArrayList(5);
        private List<Interceptor> e = new ArrayList(5);

        public long a() {
            return this.a;
        }

        public long b() {
            return this.b;
        }

        public long c() {
            return this.c;
        }

        public List<Interceptor> d() {
            return this.d;
        }

        public List<Interceptor> e() {
            return this.e;
        }
    }
}