package com.bilibili.tv.ui.favorite;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import bl.adl;
import bl.ady;
import bl.aj;
import bl.agd;
import bl.bbi;
import bl.bbg;
import bl.adv;
import bl.mg;
import bl.nv;
import bl.ach;
import bl.vo;
import bl.vn;
import bl.ok;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.favorite.BiliFavVideoDetailList;
import com.bilibili.tv.api.favorite.BiliFavoriteVideoApiService;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.widget.DrawRelativeLayout;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import com.bilibili.tv.widget.side.SideRightGridLayoutManger;
import mybl.MyBiliApiService;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONArray;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class FavoriteVideoFragment extends ady {
    public static final a Companion = new a(null);
    private static final String i = "FavoriteVideoFragment";
    private static final int j = 2;
    private c c;
    private b d;
    private boolean e;
    private int f = 1;
    private boolean g = true;
    private boolean h;
    private long folderId;
    private int folderType;

    /* compiled from: BL */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(bbg bbgVar) {
            this();
        }

        public final FavoriteVideoFragment a() {
            return new FavoriteVideoFragment();
        }
    }

    public static FavoriteVideoFragment newInstance(long folderId, int folderType) {
        FavoriteVideoFragment fragment = new FavoriteVideoFragment();
        fragment.folderId = folderId;
        fragment.folderType = folderType;
        return fragment;
    }

    @Override // bl.ady
    public void a(RecyclerView recyclerView, Bundle bundle) {
        bbi.b(recyclerView, "recyclerView");
        super.a(recyclerView, bundle);
        SideRightGridLayoutManger sideRightGridLayoutManger = new SideRightGridLayoutManger(getActivity(), j);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.bilibili.tv.ui.favorite.FavoriteSideActivity");
        }
        sideRightGridLayoutManger.a(new e((FavoriteSideActivity) activity));
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(sideRightGridLayoutManger);
        int iB = adl.b(R.dimen.px_4);
        int iB2 = adl.b(R.dimen.px_20);
        int iB3 = adl.b(R.dimen.px_30);
        recyclerView.setPadding(iB3, iB3, iB3, iB3);
        recyclerView.a(new f(iB2, iB));
        recyclerView.a(new g(sideRightGridLayoutManger));
        this.c = new c();
        recyclerView.setAdapter(this.c);
        i();
        this.d = new b();
        b();
    }

    /* compiled from: BL */
    final class e implements BorderGridLayoutManager.a {
        final /* synthetic */ FavoriteSideActivity b;

        e(FavoriteSideActivity favoriteSideActivity) {
            this.b = favoriteSideActivity;
        }

        @Override // com.bilibili.tv.widget.border.BorderGridLayoutManager.a
        public final void a(View view, View view2, int i, int i2, int i3) {
            agd agdVarM = this.b.m();
            if (agdVarM == null || view == null) {
                return;
            }
            agdVarM.setUpRectDrawable(aj.a(this.b, R.drawable.shadow_white_rect));
            agdVarM.a(view, i2, i3, FavoriteVideoFragment.this.e);
            FavoriteVideoFragment.this.e = false;
        }
    }

    /* compiled from: BL */
    public static final class f extends RecyclerView.g {
        final /* synthetic */ int a;
        final /* synthetic */ int b;

        f(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        @Override // android.support.v7.widget.RecyclerView.g
        public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
            int i;
            int i2;
            bbi.b(rect, "outRect");
            bbi.b(view, "view");
            bbi.b(recyclerView, "parent");
            int iG = recyclerView.g(view);
            int i3 = iG > FavoriteVideoFragment.j + (-1) ? this.a : 0;
            if (iG % FavoriteVideoFragment.j == 0) {
                i2 = this.b;
                i = 0;
            } else {
                i = this.b;
                i2 = 0;
            }
            rect.set(i, i3, i2, 0);
        }
    }

    /* compiled from: BL */
    public final class g extends RecyclerView.m {
        final /* synthetic */ SideRightGridLayoutManger b;

        g(SideRightGridLayoutManger sideRightGridLayoutManger) {
            this.b = sideRightGridLayoutManger;
        }

        @Override // android.support.v7.widget.RecyclerView.m
        public void a(RecyclerView recyclerView, int i) {
            super.a(recyclerView, i);
            if (FavoriteVideoFragment.this.h || !FavoriteVideoFragment.this.g || FavoriteVideoFragment.this.c == null) {
                return;
            }
            int iP = this.b.p();
            if (this.b.x() <= 0 || iP + 10 < this.b.H() - 1 || this.b.H() <= this.b.x()) {
                return;
            }
            FavoriteVideoFragment.this.f++;
            FavoriteVideoFragment.this.b();
        }
    }

    @Override // bl.adw
    public boolean c() {
        if (isVisible() && this.c != null) {
            c cVar = this.c;
            if (cVar == null) {
                bbi.a();
            }
            if (cVar.a() > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        this.c = (c) null;
        this.d = (b) null;
        super.onDestroyView();
    }

    @Override // bl.ady, bl.aea
    public void d_() {
        super.d_();
        this.f = 1;
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        this.h = true;
        switch (folderType) {
            case 1:
                loadVideoFavoriteVideos();
                break;
            case 2:
                loadCollectionVideos();
                break;
            case 3:
                loadCourseVideos();
                break;
        }
    }
    
    private void loadVideoFavoriteVideos() {
        Activity activity = getActivity();
        if (activity != null) {
            BiliFavoriteVideoApiService api = (BiliFavoriteVideoApiService) vo.a(BiliFavoriteVideoApiService.class);
            mg account = mg.a(activity);
            if (account != null) {
                api.getFavoriteVideoListV2(
                    account.e(),
                    new BiliFavoriteVideoApiService.FavParamsMap(account.d(), folderId, f)
                ).a(this.d);
            }
        }
    }
    
    private void loadCollectionVideos() {
        Log.d("FavoriteVideoFragment", "Collection: page=" + f);
        ((MyBiliApiService) vo.a(MyBiliApiService.class))
            .getFavoriteUserSeason(folderId, f, 20)
            .a(new vn<JSONObject>() {
                @Override
                public void a(JSONObject result) {
                    Log.d("FavoriteVideoFragment", "Collection result: " + (result != null ? result.toJSONString() : "null"));
                    if (c == null) {
                        return;
                    }
                    j();
                    h = false;
                    if (result != null) {
                        JSONArray items = result.getJSONArray("items");
                        if (items != null && !items.isEmpty()) {
                            List<BiliVideoDetail> videos = new ArrayList<>();
                            for (int i = 0; i < items.size(); i++) {
                                JSONObject item = items.getJSONObject(i);
                                BiliVideoDetail video = new BiliVideoDetail();
                                video.mAvid = item.getLong("avid");
                                video.mCover = item.getString("pic");
                                video.mTitle = item.getString("title");
                                video.mTypeName = item.getString("typename");
                                videos.add(video);
                            }
                            if (f == 1) {
                                c.a(videos);
                            } else {
                                c.b(videos);
                            }
                            return;
                        }
                    }
                    g = false;
                    if (f == 1) {
                        l();
                        FavoriteVideoFragment.this.a(R.string.nothing_show);
                    }
                }
                
                @Override
                public boolean isCancel() {
                    return getActivity() == null || c == null;
                }
                
                @Override
                public void onError(Throwable th) {
                    adl.a.a(th, getActivity());
                    if (c == null) {
                        return;
                    }
                    h = false;
                    if (f == 1) {
                        k();
                    }
                }
            });
    }
    
    private void loadCourseVideos() {
        j();
        h = false;
        g = false;
        l();
        this.a(R.string.nothing_show);
    }

    /* compiled from: BL */
    final class b extends vn<BiliFavVideoDetailList> {
        public b() {
        }

        @Override // bl.vm
        public boolean isCancel() {
            return FavoriteVideoFragment.this.getActivity() == null || FavoriteVideoFragment.this.c == null;
        }

        @Override // bl.vm
        public void onError(Throwable th) {
            bbi.b(th, "error");
            adl.a.a(th, FavoriteVideoFragment.this.getActivity());
            if (FavoriteVideoFragment.this.c == null) {
                return;
            }
            FavoriteVideoFragment.this.h = false;
            if (FavoriteVideoFragment.this.f == 1) {
                FavoriteVideoFragment.this.k();
            }
        }

        @Override // bl.vn
        public void a(BiliFavVideoDetailList biliFavVideoDetailList) {
            Log.d("FavoriteVideoFragment", "VideoFavorite: page=" + FavoriteVideoFragment.this.f);
            if (biliFavVideoDetailList != null) {
                Log.d("FavoriteVideoFragment", "VideoFavorite: videos count=" + (biliFavVideoDetailList.getFavVideos() != null ? biliFavVideoDetailList.getFavVideos().size() : 0) + ", pages=" + biliFavVideoDetailList.getPages());
            }
            if (FavoriteVideoFragment.this.c == null) {
                return;
            }
            FavoriteVideoFragment.this.j();
            FavoriteVideoFragment.this.h = false;
            if (biliFavVideoDetailList == null) {
                bbi.a();
            }
            List<BiliVideoDetail> favVideos = biliFavVideoDetailList.getFavVideos();
            int pages = biliFavVideoDetailList.getPages();
            c cVar = FavoriteVideoFragment.this.c;
            if (cVar == null) {
                bbi.a();
            }
            if (cVar.a() != 0 || (favVideos != null && favVideos.size() != 0)) {
                if (FavoriteVideoFragment.this.f >= pages) {
                    FavoriteVideoFragment.this.g = false;
                }
                if (FavoriteVideoFragment.this.f == 1) {
                    c cVar2 = FavoriteVideoFragment.this.c;
                    if (cVar2 == null) {
                        bbi.a();
                    }
                    if (favVideos == null) {
                        bbi.a();
                    }
                    cVar2.a(favVideos);
                    return;
                }
                c cVar3 = FavoriteVideoFragment.this.c;
                if (cVar3 == null) {
                    bbi.a();
                }
                if (favVideos == null) {
                    bbi.a();
                }
                cVar3.b(favVideos);
                return;
            }
            if (FavoriteVideoFragment.this.f == 1) {
                FavoriteVideoFragment.this.l();
                FavoriteVideoFragment.this.a(R.string.nothing_show);
            }
        }
    }

    /* compiled from: BL */
    static final class c extends RecyclerView.a<adv> implements View.OnClickListener {
        private List<BiliVideoDetail> a = new ArrayList();

        @Override // android.support.v7.widget.RecyclerView.a
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public adv a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            return ((d)null).Companion.a(viewGroup);
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public void a(adv advVar, int i) {
            bbi.b(advVar, "viewHolder");
            if (advVar instanceof d) {
                BiliVideoDetail biliVideoDetail = this.a.get(i);
                if (biliVideoDetail.mCover != null) {
                    nv.a().a(ach.c(MainApplication.a(), biliVideoDetail.mCover), ((d) advVar).z());
                }
                if (biliVideoDetail.mTitle != null) {
                    ((d) advVar).A().setText(biliVideoDetail.mTitle);
                }
                if (biliVideoDetail.mTypeName != null) {
                    ((d) advVar).B().setText(adl.e(R.string.type_name) + biliVideoDetail.mTypeName);
                }
                View view = advVar.a;
                bbi.a((Object) view, "viewHolder.itemView");
                view.setTag(biliVideoDetail);
                advVar.a.setTag(R.id.position, Integer.valueOf(i));
                advVar.a.setOnClickListener(this);
            }
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public int a() {
            return this.a.size();
        }

        public final void a(List<BiliVideoDetail> list) {
            bbi.b(list, "list");
            this.a.addAll(list);
            d();
        }

        public final void b(List<BiliVideoDetail> list) {
            bbi.b(list, "list");
            int size = this.a.size();
            this.a.addAll(list);
            d(size);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            bbi.b(view, "v");
            Context context = view.getContext();
            bbi.a((Object) context, "v.context");
            Activity activityA = adl.a(context);
            if (activityA != null) {
                Object tag = view.getTag();
                if (tag instanceof BiliVideoDetail) {
                    activityA.startActivity(VideoDetailActivity.Companion.a((Context) activityA, ((BiliVideoDetail) tag).mAvid));
                }
                if (view.getTag(R.id.position) != null) {
                    ok.a("tv_myfavourite_video_click", "row", String.valueOf(((int) Math.floor(((Integer) view.getTag(R.id.position)).intValue() / FavoriteVideoFragment.j)) + 1));
                }
            }
        }
    }

    /* compiled from: BL */
    public static final class d extends adv implements View.OnFocusChangeListener {
        public static final a Companion = new a(null);
        private ScalableImageView n;
        private TextView o;
        private TextView p;
        private DrawRelativeLayout q;

        public d(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (ScalableImageView) a(view, R.id.img);
            this.o = (TextView) a(view, R.id.title);
            this.p = (TextView) a(view, R.id.sub_title);
            this.q = (DrawRelativeLayout) a(view, R.id.draw);
            view.setOnFocusChangeListener(this);
        }

        public final ScalableImageView z() {
            return this.n;
        }

        public final TextView A() {
            return this.o;
        }

        public final TextView B() {
            return this.p;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            bbi.b(view, "v");
            this.q.setUpEnabled(z);
        }

        /* compiled from: BL */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(bbg bbgVar) {
                this();
            }

            public final d a(ViewGroup viewGroup) {
                bbi.b(viewGroup, "parent");
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_video_history, viewGroup, false);
                bbi.a((Object) viewInflate, "view");
                return new d(viewInflate);
            }
        }
    }
}
