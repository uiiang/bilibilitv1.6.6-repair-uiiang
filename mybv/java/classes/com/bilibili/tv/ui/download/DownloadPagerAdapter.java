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
                // 下载中：一级列表直接显示所有下载任务（不分P分组）
                return new DownloadingFragment();
            case 1:
                // 已下载：第一级视频分组列表（多P分组/单P直显）
                return GroupedDownloadFragment.newInstance(true);
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