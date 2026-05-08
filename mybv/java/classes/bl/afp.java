package bl;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.bilibili.tv.R;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class afp extends adx {
    @Override // bl.adx
    public int a() {
        return 6;
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
            default:
                return "";
        }
    }
}
