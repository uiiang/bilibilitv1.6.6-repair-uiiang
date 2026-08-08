package bl;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.bilibili.tv.R;
import com.bilibili.tv.MainApplication;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class afp extends adx {
    // 隐藏功能开关：启用后才显示"下载设置"页面
    private boolean e() {
        return abd.b(MainApplication.a().getApplicationContext());
    }

    @Override // bl.adx
    public int a() {
        // 未启用隐藏功能时返回6（不含下载设置），启用后返回7
        return e() ? 7 : 6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public afp(FragmentManager fragmentManager, int i) {
        super(fragmentManager, i);
        bbi.b(fragmentManager, "fragmentManager");
    }

    @Override // bl.adx
    public Fragment a(int i) {
        switch (i) {
            case 0:
                return afq.Companion.a();
            case 1:
                return afn.Companion.a();
            case 2:
                return afk.Companion.a();
            case 3:
                return afm.Companion.a();
            case 4:
                return afm3.Companion.a();
            case 5:
                return afm4.Companion.a();
            case 6:
                return e() ? afm5.Companion.a() : null; // 下载设置，仅隐藏功能启用时显示
            default:
                return null;
        }
    }

    public CharSequence b(int i) {
        switch (i) {
            case 0:
                return adl.e(R.string.setting_update);
            case 1:
                return "播放设置";
            case 2:
                return "缓存设置";
            case 3:
                return adl.e(R.string.setting_machine_info);
            case 4:
                return "实验室";
            case 5:
                return "个性化";
            case 6:
                return e() ? "下载设置" : ""; // 下载设置，仅隐藏功能启用时显示
            default:
                return "";
        }
    }
}
