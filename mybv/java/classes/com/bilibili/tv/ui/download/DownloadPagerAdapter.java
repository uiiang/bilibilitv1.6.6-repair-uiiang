package com.bilibili.tv.ui.download;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import bl.adx;
import bl.bbi;
import com.bilibili.tv.R;
import bl.adl;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class DownloadPagerAdapter extends adx {
    @Override // bl.adx
    public int a() {
        return 2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadPagerAdapter(FragmentManager fragmentManager, int i) {
        super(fragmentManager, i);
        bbi.b(fragmentManager, "fragmentManager");
    }

    @Override
    public Fragment a(int i) {
        switch (i) {
            case 0:
                return new DownloadingFragment();
            case 1:
                return new DownloadedFragment();
        }
        return null;
    }

    public CharSequence b(int i) {
        switch (i) {
            case 0:
                return adl.e(R.string.downloading);
            case 1:
                return adl.e(R.string.downloaded);
            default:
                return "";
        }
    }
}