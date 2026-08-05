package com.bilibili.tv.ui.download;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import bl.adl;
import bl.adz;
import bl.bbg;
import bl.bbi;
import bl.cj;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.base.BaseUpViewActivity;
import com.bilibili.tv.ui.ranking.RankingLeftLinearLayoutManger;
import java.lang.ref.WeakReference;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class DownloadManagerActivity extends BaseUpViewActivity {
    public static final a Companion = new a(null);
    private static final String e = "fromType";
    private RecyclerView a;
    private b b;
    private Integer c = 0;
    private DownloadPagerAdapter d;

    @Override // com.bilibili.tv.ui.base.BaseUpViewActivity
    public void a(bl.agd agdVar) {
    }

    @Override // com.bilibili.tv.ui.base.BaseActivity
    public int g() {
        return R.layout.activity_download_manager;
    }

    @Override // com.bilibili.tv.ui.base.BaseActivity
    public void a(Bundle bundle) {
        this.a = (RecyclerView) d(R.id.recycler_view);
        ((TextView) d(R.id.content_name)).setText(adl.e(R.string.download_manager));
        Intent intent = getIntent();
        this.c = intent != null ? Integer.valueOf(intent.getIntExtra(e, 0)) : null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        bbi.a((Object) supportFragmentManager, "supportFragmentManager");
        this.d = new DownloadPagerAdapter(supportFragmentManager, R.id.fragment_container);

        DownloadPagerAdapter downloadPagerAdapter = this.d;
        if (downloadPagerAdapter == null) {
            bbi.a();
        }
        int a2 = downloadPagerAdapter.a();
        cj cjVar = new cj();
        int i3 = a2 - 1;
        if (i3 >= 0) {
            int i4 = 0;
            while (true) {
                DownloadPagerAdapter downloadPagerAdapter2 = this.d;
                if (downloadPagerAdapter2 == null) {
                    bbi.a();
                }
                cjVar.b(i4, downloadPagerAdapter2.b(i4).toString());
                if (i4 == i3) {
                    break;
                } else {
                    i4++;
                }
            }
        }
        this.b = new b(this, cjVar);
        RankingLeftLinearLayoutManger rankingLeftLinearLayoutManger = new RankingLeftLinearLayoutManger(this, 1, false);
        RecyclerView recyclerView = this.a;
        if (recyclerView == null) {
            bbi.a();
        }
        recyclerView.setLayoutManager(rankingLeftLinearLayoutManger);
        RecyclerView recyclerView2 = this.a;
        if (recyclerView2 == null) {
            bbi.a();
        }
        recyclerView2.setFocusable(false);
        RecyclerView recyclerView3 = this.a;
        if (recyclerView3 == null) {
            bbi.a();
        }
        recyclerView3.setHasFixedSize(true);
        RecyclerView recyclerView4 = this.a;
        if (recyclerView4 == null) {
            bbi.a();
        }
        recyclerView4.setAdapter(this.b);

        // 默认显示第一个Fragment（下载中）
        this.d.c(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bilibili.tv.ui.base.BaseUpViewActivity, com.bilibili.tv.ui.base.BaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.b = (b) null;
        this.d = (DownloadPagerAdapter) null;
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(bbg bbgVar) {
            this();
        }

        public final void a(Context context, int i) {
            bbi.b(context, "context");
            Intent intent = new Intent(context, DownloadManagerActivity.class);
            intent.putExtra(DownloadManagerActivity.e, i);
            context.startActivity(intent);
        }

        public final int b() {
            return 1;
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class b extends adz<c> {
        private int a;
        private final WeakReference<DownloadManagerActivity> b;
        private final cj<String> c;

        @Override // bl.adz
        public int e() {
            return 1;
        }

        public b(DownloadManagerActivity downloadManagerActivity, cj<String> cjVar) {
            bbi.b(downloadManagerActivity, "activity");
            bbi.b(cjVar, "titles");
            this.b = new WeakReference<>(downloadManagerActivity);
            this.c = cjVar;
        }

        public final void e(int i) {
            this.a = i;
        }

        public final int f() {
            return this.a;
        }

        @Override // android.support.v7.widget.RecyclerView.a
        /* renamed from: c */
        public c a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            View inflate = android.view.LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_sider_left_title, viewGroup, false);
            bbi.a((Object) inflate, "view");
            return new c(inflate);
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public void a(c cVar, int i) {
            bbi.b(cVar, "viewHolder");
            TextView textView = cVar.z();
            if (textView != null) {
                cj<String> cjVar = this.c;
                textView.setText(cjVar != null ? (CharSequence) cjVar.a(i) : null);
            }
            cVar.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z) {
                    bbi.b(view, "v");
                    if (z) {
                        b.this.e(i);
                        view.setSelected(true);
                        // 切换右侧对应的Fragment（下载中/已下载）
                        DownloadManagerActivity activity = b.this.b.get();
                        if (activity != null && activity.d != null) {
                            activity.d.c(i);
                        }
                    } else {
                        view.setSelected(false);
                    }
                }
            });
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public int a() {
            cj<String> cjVar = this.c;
            return cjVar != null ? cjVar.b() : 0;
        }

        @Override // bl.adz, android.support.v7.widget.RecyclerView.a
        public int a(int i) {
            return 1;
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class c extends bl.adv {
        public static final a Companion = new a(null);
        private final TextView n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (TextView) a(view, R.id.title);
        }

        public final TextView z() {
            return this.n;
        }

        /* compiled from: BL */
        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(bbg bbgVar) {
                this();
            }

            public final c a(ViewGroup viewGroup) {
                bbi.b(viewGroup, "parent");
                View inflate = android.view.LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_sider_left_title, viewGroup, false);
                bbi.a((Object) inflate, "view");
                return new c(inflate);
            }
        }
    }
}