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
import android.widget.LinearLayout;
import android.text.TextUtils;
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
import com.bilibili.tv.ui.bangumi.BangumiDetailActivity;
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
    
    private LinearLayout headerLayout;
    private TextView headerTitle;
    private TextView headerCount;
    private TextView hintSort;
    private String sortOrder = "mtime";

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

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_favorite_video, container, false);
        this.headerLayout = (LinearLayout) rootView.findViewById(R.id.space_header_layout);
        this.headerTitle = (TextView) rootView.findViewById(R.id.header_title);
        this.headerCount = (TextView) rootView.findViewById(R.id.header_count);
        this.hintSort = (TextView) rootView.findViewById(R.id.hint_sort);
        RecyclerView recyclerView = (RecyclerView) rootView.findViewById(R.id.recycler_view);
        a(recyclerView, savedInstanceState);
        return rootView;
    }
    
    public void updateHeaderInfo(String title, int mediaCount) {
        if (headerTitle != null && title != null) {
            headerTitle.setText(title);
        }
        if (headerCount != null && mediaCount > 0) {
            headerCount.setText(mediaCount + "个视频");
        }
        if (hintSort != null) {
            hintSort.setVisibility(isVideoFavoriteMode() ? View.VISIBLE : View.GONE);
        }
    }
    
    public void setSortOrder(String order) {
        if (TextUtils.equals(order, this.sortOrder)) {
            return;
        }
        this.sortOrder = order;
        if (this.c != null) {
            d_();
            loadVideoFavoriteVideos();
        }
    }
    
    public String getSortOrder() {
        return this.sortOrder;
    }
    
    public boolean isVideoFavoriteMode() {
        return this.folderType == 1;
    }
    
    public long getFolderId() {
        return this.folderId;
    }
    
    public void clearData() {
        this.f = 1;
        this.g = true;
    }

    @Override // bl.ady
    public void a(RecyclerView recyclerView, Bundle bundle) {
        bbi.b(recyclerView, "recyclerView");
        super.a(recyclerView, bundle);
        SideRightGridLayoutManger sideRightGridLayoutManger = new SideRightGridLayoutManger(getActivity(), j);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            throw new TypeCastException(
                    "null cannot be cast to non-null type com.bilibili.tv.ui.favorite.FavoriteSideActivity");
        }
        sideRightGridLayoutManger.a(new e((FavoriteSideActivity) activity));
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(sideRightGridLayoutManger);
        int iB = adl.b(R.dimen.px_4);
        int iB2 = adl.b(R.dimen.px_10);
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
            MyBiliApiService api = (MyBiliApiService) vo.a(MyBiliApiService.class);
            mg account = mg.a(activity);
            if (api != null && account != null) {
                String referer = "https://space.bilibili.com/" + account.d() + "/favlist?fid=" + folderId
                        + "&ftype=create";
                api.getFavoriteResourceList(folderId, f, 40, "", sortOrder, 0, 0, "web", "333.1387", account.e(), referer)
                        .a(new vn<JSONObject>() {
                            @Override
                            public void a(JSONObject data) {
                                if (c == null) {
                                    return;
                                }
                                j();
                                h = false;
                                if (data != null) {
                                    JSONArray medias = data.getJSONArray("medias");
                                    JSONObject info = data.getJSONObject("info");
                                    boolean hasMore = data.getBooleanValue("has_more");

                                    if (medias != null && !medias.isEmpty()) {
                                        if (f == 1) {
                                            String title = info != null ? info.getString("title") : null;
                                            int mediaCount = info != null ? info.getIntValue("media_count") : 0;
                                            c.a(medias, title);
                                            updateHeaderInfo(title, mediaCount);
                                        } else {
                                            c.c(medias);
                                        }
                                        if (!hasMore) {
                                            g = false;
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
    }

    private void loadCollectionVideos() {
        if (fid != 0 && mid != 0) {
            ((BiliFavoriteVideoApiService) vo.a(BiliFavoriteVideoApiService.class))
                    .getFavoriteSearchedVideoList(mg.a(getActivity()).e(),
                            new BiliFavoriteVideoApiService.FavParamsMap(mid, fid, 0L, null, null, f))
                    .a(new vn<com.bilibili.tv.api.favorite.BiliSearchFavoriteBox>() {
                        @Override
                        public void a(com.bilibili.tv.api.favorite.BiliSearchFavoriteBox result) {
                            if (c == null) {
                                return;
                            }
                            j();
                            h = false;
                            if (result != null && result.videos != null && !result.videos.isEmpty()) {
                                if (f == 1) {
                                    c.a(result.videos);
                                    updateHeaderInfo(result.mName, result.videos.size());
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
            ((MyBiliApiService) vo.a(MyBiliApiService.class))
                    .getFavoriteUserSeason(folderId, f, 20)
                    .a(new vn<JSONObject>() {
                        @Override
                        public void a(JSONObject result) {
                            if (c == null) {
                                return;
                            }
                            j();
                            h = false;
                            if (result != null) {
                                JSONArray medias = result.getJSONArray("medias");
                                JSONObject info = result.getJSONObject("info");
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
                                        if (info != null) {
                                            String title = info.getString("title");
                                            int mediaCount = info.getIntValue("media_count");
                                            updateHeaderInfo(title, mediaCount);
                                        }
                                    } else {
                                        c.b(videos);
                                    }
                                    // 检查是否还有更多数据
                                    if (info != null) {
                                        int totalCount = info.getIntValue("media_count");
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
        ((MyBiliApiService) vo.a(MyBiliApiService.class))
                .getPugvSeason(folderId)
                .a(new vn<JSONObject>() {
                    @Override
                    public void a(JSONObject result) {
                        if (c == null) {
                            return;
                        }
                        j();
                        h = false;
                        if (result != null) {
                            JSONArray eps = result.getJSONArray("episodes");
                            if (eps != null && !eps.isEmpty()) {
                                if (f == 1) {
                                    c.a(eps, result);
                                    String title = result.getString("title");
                                    int mediaCount = eps.size();
                                    if (result.containsKey("media_count")) {
                                        mediaCount = result.getIntValue("media_count");
                                    }
                                    updateHeaderInfo(title, mediaCount);
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

    public boolean isLoading() {
        return this.h;
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
        private boolean isFavoriteVideoMode = false;
        private String folderTitle = null;

        @Override // android.support.v7.widget.RecyclerView.a
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public adv a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            return ((d) null).Companion.a(viewGroup);
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public void a(adv advVar, int i) {
            bbi.b(advVar, "viewHolder");
            if (advVar instanceof d) {
                if (isFavoriteVideoMode) {
                    JSONObject item = this.b.getJSONObject(i);
                    if (item.containsKey("cover")) {
                        nv.a().a(ach.c(MainApplication.a(), item.getString("cover")), ((d) advVar).z());
                    }
                    if (item.containsKey("title")) {
                        ((d) advVar).A().setText(item.getString("title"));
                    }
                    JSONObject upper = item.getJSONObject("upper");
                    String upName = null;
                    if (upper != null && upper.containsKey("name") && !TextUtils.isEmpty(upper.getString("name"))) {
                        upName = upper.getString("name");
                    } else {
                        JSONObject ogv = item.getJSONObject("ogv");
                        if (ogv != null && ogv.containsKey("type_name")) {
                            upName = ogv.getString("type_name");
                        }
                    }
                    if (upName != null) {
                        ((d) advVar).B().setText(upName);
                    }
                    JSONObject cntInfo = item.getJSONObject("cnt_info");
                    if (cntInfo != null) {
                        ((d) advVar).C().setText(bl.adh.a(cntInfo.getLongValue("play")));
                        ((d) advVar).D().setText(bl.adh.a(cntInfo.getLongValue("danmaku")));
                    }
                    int durationVal = item.getIntValue("duration");
                    if (durationVal >= 3600) {
                        ((d) advVar).E().setText(String.format("%d:%02d:%02d", durationVal / 3600, (durationVal % 3600) / 60, durationVal % 60));
                    } else {
                        ((d) advVar).E().setText(String.format("%02d:%02d", durationVal / 60, durationVal % 60));
                    }
                    View view = advVar.a;
                    bbi.a((Object) view, "viewHolder.itemView");
                    view.setTag(item);
                } else if (isCourseMode) {
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
                    int durationVal = biliVideoDetail.mDuration;
                    if (durationVal >= 3600) {
                        ((d) advVar).E().setText(String.format("%d:%02d:%02d", durationVal / 3600, (durationVal % 3600) / 60, durationVal % 60));
                    } else {
                        ((d) advVar).E().setText(String.format("%02d:%02d", durationVal / 60, durationVal % 60));
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
            return (isCourseMode || isFavoriteVideoMode) ? this.b.size() : this.a.size();
        }

        public final void a(List<BiliVideoDetail> list) {
            bbi.b(list, "list");
            isCourseMode = false;
            isFavoriteVideoMode = false;
            this.a.addAll(list);
            d();
        }

        public final void b(List<BiliVideoDetail> list) {
            bbi.b(list, "list");
            isCourseMode = false;
            isFavoriteVideoMode = false;
            int size = this.a.size();
            this.a.addAll(list);
            d(size);
        }

        public final void a(JSONArray list, JSONObject cheeseInfo) {
            bbi.b(list, "list");
            isCourseMode = true;
            isFavoriteVideoMode = false;
            this.cheeseInfo = cheeseInfo;
            this.b.addAll(list);
            d();
        }

        public final void b(JSONArray list) {
            bbi.b(list, "list");
            isCourseMode = true;
            isFavoriteVideoMode = false;
            int size = this.b.size();
            this.b.addAll(list);
            d(size);
        }

        public final void a(JSONArray list, String title) {
            bbi.b(list, "list");
            isCourseMode = false;
            isFavoriteVideoMode = true;
            this.folderTitle = title;
            this.b.clear();
            this.b.addAll(list);
            d();
        }

        public final void c(JSONArray list) {
            bbi.b(list, "list");
            isCourseMode = false;
            isFavoriteVideoMode = true;
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
                    activityA.startActivity(
                            VideoDetailActivity.Companion.a((Context) activityA, ((BiliVideoDetail) tag).mAvid));
                } else if (tag instanceof JSONObject) {
                    JSONObject item = (JSONObject) tag;
                    if (isFavoriteVideoMode) {
                        JSONObject ogv = item.getJSONObject("ogv");
                        boolean isPgc = false;
                        if (ogv != null) {
                            int typeId = ogv.getIntValue("type_id");
                            isPgc = typeId >= 1 && typeId <= 5 || typeId == 7;
                        }
                        if (isPgc) {
                            String seasonId = ogv.getString("season_id");
                            activityA.startActivity(BangumiDetailActivity.Companion.a((Context) activityA, seasonId));
                        } else {
                            long id = item.getLongValue("id");
                            activityA.startActivity(VideoDetailActivity.Companion.a((Context) activityA, id));
                        }
                    } else {
                        xg.playCheese2(context, this.cheeseInfo, item);
                        ok.a("tv_myfavourite_fold_video_click", new String[0]);
                    }
                }
                if (view.getTag(R.id.position) != null) {
                    ok.a("tv_myfavourite_video_click", "row",
                            String.valueOf(((int) Math
                                    .floor(((Integer) view.getTag(R.id.position)).intValue() / FavoriteVideoFragment.j))
                                    + 1));
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
        private TextView q;
        private TextView r;
        private TextView duration;
        private DrawRelativeLayout s;

        public d(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (ScalableImageView) a(view, R.id.img);
            this.o = (TextView) a(view, R.id.title);
            this.p = (TextView) a(view, R.id.up);
            this.q = (TextView) a(view, R.id.play);
            this.r = (TextView) a(view, R.id.danmaku);
            this.duration = (TextView) a(view, R.id.duration);
            this.s = (DrawRelativeLayout) a(view, R.id.draw);
            android.graphics.drawable.Drawable c = bl.adl.a.c(R.drawable.ic_video_info_up);
            android.graphics.drawable.Drawable c2 = bl.adl.a.c(R.drawable.ic_video_info_play);
            android.graphics.drawable.Drawable c3 = bl.adl.a.c(R.drawable.ic_video_info_danmaku);
            int b = bl.adl.b(R.dimen.px_34);
            c.setBounds(0, 0, b, b);
            c2.setBounds(0, 0, b, b);
            c3.setBounds(0, 0, b, b);
            int d = bl.adl.d(R.color.white_50);
            c.setColorFilter(d, android.graphics.PorterDuff.Mode.MULTIPLY);
            c2.setColorFilter(d, android.graphics.PorterDuff.Mode.MULTIPLY);
            c3.setColorFilter(d, android.graphics.PorterDuff.Mode.MULTIPLY);
            this.p.setCompoundDrawables(c, null, null, null);
            this.q.setCompoundDrawables(c2, null, null, null);
            this.r.setCompoundDrawables(c3, null, null, null);
            Object context = view.getContext();
            if (context instanceof View.OnLongClickListener) {
                view.setOnLongClickListener((View.OnLongClickListener) context);
            }
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

        public final TextView C() {
            return this.q;
        }

        public final TextView D() {
            return this.r;
        }

        public final TextView E() {
            return this.duration;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            bbi.b(view, "v");
            this.s.setUpEnabled(z);
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
                View viewInflate = LayoutInflater.from(viewGroup.getContext())
                        .inflate(R.layout.recycler_view_item_video_info, viewGroup, false);
                bbi.a((Object) viewInflate, "view");
                return new d(viewInflate);
            }
        }
    }
}
