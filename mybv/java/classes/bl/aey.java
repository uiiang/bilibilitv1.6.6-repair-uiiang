package bl;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.util.SparseArray;
import android.view.ViewGroup;

import com.bilibili.tv.ui.main.content.*;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class aey extends FragmentPagerAdapter {
    private Fragment a;
    private SparseArray<Fragment> mFragments;
    private int[] fragmentTypes;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aey(FragmentManager fm, Context context) {
        super(fm);
        bbi.b(fm, "fm");
        this.mFragments = new SparseArray<>(4);
        this.fragmentTypes = new int[8];
        
        int topTabConfig = abd.get_top_tab_config(context);
        int position = 0;
        
        if ((topTabConfig & abd.TAB_PERSONAL_RECOMMEND) != 0) {
            this.mFragments.put(position, MainRecommendFragment.Companion.a());
            this.fragmentTypes[position] = 1;
            position++;
        }
        if ((topTabConfig & abd.TAB_HOT_RECOMMEND) != 0) {
            this.mFragments.put(position, MainHotFragment.Companion.a());
            this.fragmentTypes[position] = 2;
            position++;
        }
        if ((topTabConfig & abd.TAB_AREA) != 0) {
            this.mFragments.put(position, afa.Companion.a());
            this.fragmentTypes[position] = 3;
            position++;
        }
        if ((topTabConfig & abd.TAB_BANGUMI) != 0) {
            this.mFragments.put(position, MainBangumiFragment.Companion.a());
            this.fragmentTypes[position] = 4;
            position++;
        }
        if ((topTabConfig & abd.TAB_PGC) != 0) {
            this.mFragments.put(position, MainPgcFragment.Companion.a());
            this.fragmentTypes[position] = 5;
            position++;
        }
        
        this.mFragments.put(position, MainMyFragment.Companion.a());
        this.fragmentTypes[position] = 6;
    }

    public final Fragment a() {
        return this.a;
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int position) {
        Fragment fragment = this.mFragments.get(position);
        bbi.a((Object) fragment, "mFragments!!.get(position)");
        return fragment;
    }

    @Override // bl.cy
    public int getCount() {
        return this.mFragments.size();
    }

    @Override // bl.cy
    public CharSequence getPageTitle(int position) {
        if (position >= 0 && position < fragmentTypes.length) {
            int type = fragmentTypes[position];
            switch (type) {
                case 1: return "推荐";
                case 2: return "热门";
                case 3: return "分区";
                case 4: return "番剧";
                case 5: return "影视";
                case 6: return "我的";
            }
        }
        return "";
    }

    @Override // android.support.v4.app.FragmentPagerAdapter, bl.cy
    public void setPrimaryItem(ViewGroup container, int i, Object obj) {
        bbi.b(container, "container");
        bbi.b(obj, "object");
        if (this.a != obj) {
            this.a = (Fragment) obj;
        }
        super.setPrimaryItem(container, i, obj);
    }
}
