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
import bl.xg;
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
    private long fid;
    private long mid;

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

    public static FavoriteVideoFragment newInstance(long folderId, int folderType, long fid, long mid) {
        FavoriteVideoFragment fragment = new FavoriteVideoFragment();
        fragment.folderId = folderId;
        fragment.folderType = folderType;
        fragment.fid = fid;
        fragment.mid = mid;
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
        if (fid != 0 && mid != 0) {
            // 使用 fid 和 mid 调用 getFavoriteSearchedVideoList
            Log.d("FavoriteVideoFragment", "Collection with fid: fid=" + fid + ", mid=" + mid + ", page=" + f);
            ((BiliFavoriteVideoApiService) vo.a(BiliFavoriteVideoApiService.class))
                .getFavoriteSearchedVideoList(mg.a(getActivity()).e(), new BiliFavoriteVideoApiService.FavParamsMap(mid, fid, 0L, null, null, f))
                .a(new vn<com.bilibili.tv.api.favorite.BiliSearchFavoriteBox>() {
                    @Override
                    public void a(com.bilibili.tv.api.favorite.BiliSearchFavoriteBox result) {
                        Log.d("FavoriteVideoFragment", "Collection result: fid=" + fid + ", videos count=" + (result != null && result.videos != null ? result.videos.size() : 0));
                        if (c == null) {
                            return;
                        }
                        j();
                        h = false;
                        if (result != null && result.videos != null && !result.videos.isEmpty()) {
                            if (f == 1) {
                                c.a(result.videos);
                            } else {
                                c.b(result.videos);
                            }
                            if (f >= result.mPageCount) {
                                g = false;
                            }
                            return;
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
                        Log.d("FavoriteVideoFragment", "Collection error: " + th.getMessage());
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
        } else {
            // 使用 season_id 调用 getFavoriteUserSeason
            Log.d("FavoriteVideoFragment", "Collection with season_id: season_id=" + folderId + ", page=" + f);
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
                            JSONArray medias = result.getJSONArray("medias");
                            if (medias != null && !medias.isEmpty()) {
                                List<BiliVideoDetail> videos = new ArrayList<>();
                                for (int i = 0; i < medias.size(); i++) {
                                    JSONObject item = medias.getJSONObject(i);
                                    BiliVideoDetail video = new BiliVideoDetail();
                                    video.mAvid = item.getLong("id");
                                    video.mCover = item.getString("cover");
                                    video.mTitle = item.getString("title");
                                    video.mTypeName = "番剧";
                                    videos.add(video);
                                }
                                if (f == 1) {
                                    c.a(videos);
                                } else {
                                    c.b(videos);
                                }
                                // 检查是否还有更多数据
                                if (result.getJSONObject("info") != null) {
                                    int totalCount = result.getJSONObject("info").getIntValue("media_count");
                                    if (c.a() >= totalCount) {
                                        g = false;
                                    }
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
    }
    
    private void loadCourseVideos() {
        Log.d("FavoriteVideoFragment", "Course videos: season_id=" + folderId);
        ((MyBiliApiService) vo.a(MyBiliApiService.class))
            .getPugvSeason(folderId)
            .a(new vn<JSONObject>() {
                @Override
                public void a(JSONObject result) {
                    Log.d("FavoriteVideoFragment", "Course videos result: " + (result != null ? result.toJSONString() : "null"));
                    if (c == null) {
                        return;
                    }
                    j();
                    h = false;
                    if (result != null) {
                        JSONArray eps = result.getJSONArray("episodes");
                        Log.d("FavoriteVideoFragment", "Episodes: " + (eps != null ? eps.toJSONString() : "null"));
                        if (eps != null && !eps.isEmpty()) {
                            Log.d("FavoriteVideoFragment", "Episodes size: " + eps.size());
                            // 直接使用 JSONArray，不转换为 List<BiliVideoDetail>
                            if (f == 1) {
                                c.a(eps, result);
                            } else {
                                c.b(eps);
                            }
                            g = false;
                            return;
                        }
                    }
                    g = false;
                    l();
                    FavoriteVideoFragment.this.a(R.string.nothing_show);
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
                    k();
                }
            });
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
        private JSONArray b = new JSONArray();
        private JSONObject cheeseInfo = null;
        private boolean isCourseMode = false;

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
                if (isCourseMode) {
                    // 课程模式：使用 JSONArray
                    JSONObject item = this.b.getJSONObject(i);
                    if (item.containsKey("cover")) {
                        nv.a().a(ach.c(MainApplication.a(), item.getString("cover")), ((d) advVar).z());
                    }
                    if (item.containsKey("title")) {
                        ((d) advVar).A().setText(item.getString("title"));
                    }
                    ((d) advVar).B().setText(adl.e(R.string.type_name) + "课程");
                    View view = advVar.a;
                    bbi.a((Object) view, "viewHolder.itemView");
                    view.setTag(item);
                } else {
                    // 正常模式：使用 List<BiliVideoDetail>
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
                }
                advVar.a.setTag(R.id.position, Integer.valueOf(i));
                advVar.a.setOnClickListener(this);
            }
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public int a() {
            return isCourseMode ? this.b.size() : this.a.size();
        }

        public final void a(List<BiliVideoDetail> list) {
            bbi.b(list, "list");
            isCourseMode = false;
            this.a.addAll(list);
            d();
        }

        public final void b(List<BiliVideoDetail> list) {
            bbi.b(list, "list");
            isCourseMode = false;
            int size = this.a.size();
            this.a.addAll(list);
            d(size);
        }

        public final void a(JSONArray list, JSONObject cheeseInfo) {
            bbi.b(list, "list");
            isCourseMode = true;
            this.cheeseInfo = cheeseInfo;
            this.b.addAll(list);
            d();
        }

        public final void b(JSONArray list) {
            bbi.b(list, "list");
            isCourseMode = true;
            int size = this.b.size();
            this.b.addAll(list);
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
                } else if (tag instanceof JSONObject) {
                    // 课程模式：使用 xg.playCheese2 播放
                    JSONObject item = (JSONObject) tag;
                    xg.playCheese2(context, this.cheeseInfo, item);
                    ok.a("tv_myfavourite_fold_video_click", new String[0]);
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
