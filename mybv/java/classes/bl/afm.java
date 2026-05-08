package bl;

import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkInfo;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;

import org.json.JSONObject;

import java.net.InetAddress;
import java.util.List;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

import kotlin.TypeCastException;
import tv.danmaku.android.log.BLog;
import tv.danmaku.videoplayer.core.android.utils.CpuInfo;

public final class afm extends adt {
    public static final a Companion = new a(null);
    private GLSurfaceView a;
    private b b;
    private TextView c;
    private TextView d;

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        bbi.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_machine_info, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        bbi.b(view, "view");
        super.onViewCreated(view, bundle);
        View findViewById = view.findViewById(R.id.glsurface_container);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.FrameLayout");
        }
        this.c = (TextView) a(view, R.id.machine_info);
        this.d = (TextView) a(view, R.id.network_info);
        try {
            renderMachineInfo();
            renderNetworkInfo();
        } catch (Throwable th2) {
            att.a(th2);
            BLog.e(azy.a.toString());
            lr.b(MainApplication.a(), "HOHO");
        }
    }

    private void renderMachineInfo() {
        if (this.c == null || !isAdded()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getString(R.string.setting_machine_model)).append(" ").append(Build.MODEL);
        sb.append("\n");
        sb.append(getString(R.string.setting_machine_sys)).append(" Android ").append(Build.VERSION.RELEASE).append(" API ").append(Build.VERSION.SDK_INT);
        sb.append("\n");
        sb.append(getString(R.string.setting_machine_resolution)).append(" ");
        Resources.getSystem().getDisplayMetrics();
        sb.append(Resources.getSystem().getDisplayMetrics().widthPixels).append(" x ").append(Resources.getSystem().getDisplayMetrics().heightPixels);
        sb.append("\n");
        CpuInfo cpuInfo = CpuInfo.parseCpuInfo();
        String hardware = "N/A";
        if (cpuInfo != null && cpuInfo.mRawInfoMap != null) {
            TreeMap<String, String> map = cpuInfo.mRawInfoMap;
            if (map.containsKey("Hardware")) {
                hardware = map.get("Hardware");
            } else if (map.containsKey("hardware")) {
                hardware = map.get("hardware");
            }
        }
        if (hardware == null || hardware.isEmpty()) {
            hardware = "N/A";
        }
        sb.append("CPU: ").append(hardware);
        sb.append("\n");
        String gpu = "N/A";
        if (this.b != null) {
            gpu = this.b.a();
        }
        sb.append("GPU: ").append(gpu);
        this.c.setText(sb.toString());
    }

    private void renderNetworkInfo() {
        if (this.d == null || !isAdded()) {
            return;
        }
        ExecutorService threadPool = Executors.newSingleThreadExecutor();
        Future<JSONObject> future = threadPool.submit(new Callable<JSONObject>() {
            @Override
            public JSONObject call() {
                afm2.Response response = (afm2.Response) pz.a(new qa.a(afm2.Response.class).a("https://api.bilibili.com/x/resource/ip").a(true).a(new qb()).a(), "GET");
                return response.e();
            }
        });
        try {
            JSONObject data = future.get();
            if (data == null) {
                this.d.setText("网络信息: 获取失败");
                return;
            }
            String addr = data.optString("addr");
            String zone = data.optString("country") + " " + data.optString("province") + " " + data.optString("city");
            String isp = data.optString("isp");
            StringBuilder dnsSb = new StringBuilder();
            if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) {
                Class<?> SystemProperties = Class.forName("android.os.SystemProperties");
                java.lang.reflect.Method method = SystemProperties.getMethod("get", new Class[]{String.class});
                for (String name : new String[]{"net.dns1", "net.dns2", "net.dns3", "net.dns4"}) {
                    String value = (String) method.invoke(null, name);
                    if (value != null && !"".equals(value) && !dnsSb.toString().contains(value)) {
                        if (dnsSb.length() > 0) dnsSb.append(", ");
                        dnsSb.append(value);
                    }
                }
            } else {
                ConnectivityManager connectivityManager = (ConnectivityManager) MainApplication.a().getSystemService(Context.CONNECTIVITY_SERVICE);
                if (connectivityManager != null) {
                    for (Network network : connectivityManager.getAllNetworks()) {
                        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(network);
                        if (networkInfo.isConnected()) {
                            LinkProperties linkProperties = connectivityManager.getLinkProperties(network);
                            List<InetAddress> dnsServers = linkProperties.getDnsServers();
                            for (InetAddress dnsServer : dnsServers) {
                                if (dnsSb.length() > 0) dnsSb.append(", ");
                                dnsSb.append(dnsServer.getHostAddress());
                            }
                        }
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("IP: ").append(addr);
            sb.append("\n").append("归属地: ").append(zone);
            sb.append("\n").append("运营商: ").append(isp);
            sb.append("\n").append("DNS: ").append(dnsSb.toString());
            this.d.setText(sb.toString());
        } catch (Exception e) {
            e.printStackTrace();
            this.d.setText("网络信息: 获取失败");
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.a != null) {
            this.a.onResume();
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        if (this.a != null) {
            this.a.onPause();
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.b = null;
        this.a = null;
    }

    public static final class a {
        private a() {
        }

        public a(bbg bbgVar) {
            this();
        }

        public final afm a() {
            return new afm();
        }
    }

    public static final class b implements GLSurfaceView.Renderer {
        private String a = "N/A";

        public b(afm afmVar) {
        }

        @Override
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            this.a = gl10.glGetString(7936);
        }

        @Override
        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        }

        @Override
        public void onDrawFrame(GL10 gl10) {
        }

        public final String a() {
            return this.a;
        }
    }
}
