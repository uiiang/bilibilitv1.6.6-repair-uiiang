package com.bilibili.tv.ui.favorite;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.LinearLayout;

import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;
import bl.adl;
import bl.ady;
import bl.abd;
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
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.ui.bangumi.BangumiDetailActivity;
import com.bilibili.tv.util.DateHelper;
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
    private boolean e;
    private int f = 1;
    private boolean g = true;
    private boolean h;
    private long folderId;
    private int folderType;
    private long mid;
    
    private LinearLayout headerLayout;
    private TextView headerTitle;
    private TextView headerCount;
    private TextView hintSort;
    private String sortOrder = "mtime";
    // 合集全量medias缓存（已客户端倒序），fav/season/list一次返回全部数据，本地分页
    private JSONArray collectionMediasCache;
    private String collectionTitle;
    // 合集数据源标记：true=fav/season/list失败已回退到fav/resource/list（订阅的收藏夹型条目），
    // 翻页时直接走回退接口，避免重新请求fav/season/list再次失败
    private boolean collectionUseResourceList;

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

    public static FavoriteVideoFragment newInstance(long folderId, int folderType, long mid) {
        FavoriteVideoFragment fragment = new FavoriteVideoFragment();
        fragment.folderId = folderId;
        fragment.folderType = folderType;
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
            // loadVideoFavoriteVideos();
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
        this.collectionMediasCache = null;
        this.collectionUseResourceList = false;
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
        int paddingBottom = adl.b(R.dimen.px_306);
        recyclerView.setPadding(iB3, iB3, iB3, paddingBottom);
        recyclerView.a(new f(iB2, iB));
        recyclerView.a(new g(sideRightGridLayoutManger));
        this.c = new c();
        recyclerView.setAdapter(this.c);
        i();
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
        // 重置加载状态：避免视图重建后b()的加载守卫因残留的h=true而跳过加载
        this.h = false;
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
        // 防止重复加载：onCreateView(a)与d_()会接连触发b()，导致同一合集请求两次
        if (this.h) {
            return;
        }
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
                String cookie = mybl.CookieUtil.getFullCookieWithDevice(account);
                String url = "https://api.bilibili.com/x/v3/fav/resource/list?media_id=" + folderId 
                        + "&pn=" + f + "&ps=40&keyword=&order=" + sortOrder + "&type=0&platform=web";
                Log.i("FavoriteVideoFragment", "=== FavoriteVideo URL ===\n" + url);
                api.getFavoriteResourceList(folderId, f, 40, "", sortOrder, 0, 0, "web", "333.1387", referer, cookie)
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
        // 改用 /x/space/fav/season/list（与BT参考项目一致）：
        // 1. medias自带upper(UP主名)/cnt_info.danmaku/pubtime，修复seasons_archives_list的archives
        //    无owner字段导致卡片UP主名字不显示的问题
        // 2. 该接口一次返回全量数据，客户端倒序（最新在前）后本地分页
        // 3. 部分条目实为"订阅的收藏夹"型（该接口返回-404"啥都木有"），失败时回退/x/v3/fav/resource/list
        if (collectionUseResourceList) {
            loadCollectionVideosFromResource();
            return;
        }
        if (collectionMediasCache != null) {
            applyCollectionMediasPage();
            return;
        }
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        Log.i("FavoriteVideoFragment", "loadCollectionVideos fav/season/list: season_id=" + folderId + ", page=" + f);
        ((MyBiliApiService) vo.a(MyBiliApiService.class))
                .getFavoriteUserSeason(folderId, 1, 30)
                .a(new vn<JSONObject>() {
                    @Override
                    public boolean isCancel() {
                        return getActivity() == null || c == null;
                    }

                    @Override
                    public void onError(Throwable th) {
                        Log.i("FavoriteVideoFragment", "loadCollectionVideos fav/season/list error: " + th.getMessage()
                                + ", fallback to resource/list");
                        if (c == null) {
                            return;
                        }
                        h = false;
                        if (f == 1) {
                            loadCollectionVideosFromResource();
                        } else {
                            k();
                        }
                    }

                    @Override
                    public void a(JSONObject resp) {
                        if (c == null) {
                            return;
                        }
                        j();
                        h = false;
                        JSONArray medias = resp != null ? resp.getJSONArray("medias") : null;
                        if (medias == null || medias.isEmpty()) {
                            if (f == 1) {
                                loadCollectionVideosFromResource();
                            } else {
                                g = false;
                            }
                            return;
                        }
                        JSONObject info = resp.getJSONObject("info");
                        collectionTitle = info != null ? info.getString("title") : null;
                        // 客户端倒序：接口按UP自定义顺序返回，倒序后最新视频在前
                        JSONArray reversed = new JSONArray();
                        for (int i = medias.size() - 1; i >= 0; i--) {
                            reversed.add(medias.getJSONObject(i));
                        }
                        collectionMediasCache = reversed;
                        applyCollectionMediasPage();
                    }
                });
    }

    private void loadCollectionVideosFromResource() {
        // 回退接口：/x/v3/fav/resource/list，用于加载"订阅的收藏夹"型条目
        // medias同样自带upper/cnt_info/pubtime；order=mtime按收藏时间倒序（最新在前），服务端分页
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        collectionUseResourceList = true;
        h = true;
        mg account = mg.a(activity);
        String cookie = account != null ? mybl.CookieUtil.getFullCookieWithDevice(account) : "";
        String referer = "https://space.bilibili.com/" + mid + "/favlist?fid=" + folderId;
        Log.i("FavoriteVideoFragment", "loadCollectionVideosFromResource: media_id=" + folderId + ", page=" + f);
        ((MyBiliApiService) vo.a(MyBiliApiService.class))
                .getFavoriteResourceList(folderId, f, 30, "", "mtime", 0, 0, "web", "333.1387", referer, cookie)
                .a(new vn<JSONObject>() {
                    @Override
                    public boolean isCancel() {
                        return getActivity() == null || c == null;
                    }

                    @Override
                    public void onError(Throwable th) {
                        Log.i("FavoriteVideoFragment", "loadCollectionVideosFromResource error: " + th.getMessage());
                        adl.a.a(th, getActivity());
                        if (c == null) {
                            return;
                        }
                        h = false;
                        if (f == 1) {
                            k();
                        }
                    }

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
                                // 回退路径为服务端分页，标题仅本页使用，无需写入字段
                                String title = info != null ? info.getString("title") : null;
                                if (f == 1) {
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
                });
    }

    private void applyCollectionMediasPage() {
        // 从全量缓存中切出当前页展示（页大小30，与原分页逻辑一致）
        if (c == null) {
            return;
        }
        j();
        h = false;
        int pageSize = 30;
        int total = collectionMediasCache.size();
        int start = (f - 1) * pageSize;
        JSONArray pageMedias = new JSONArray();
        for (int i = start; i < total && i < start + pageSize; i++) {
            pageMedias.add(collectionMediasCache.getJSONObject(i));
        }
        if (pageMedias.isEmpty()) {
            g = false;
            if (f == 1) {
                l();
                FavoriteVideoFragment.this.a(R.string.nothing_show);
            }
            return;
        }
        if (f == 1) {
            c.a(pageMedias, collectionTitle);
            updateHeaderInfo(collectionTitle, total);
        } else {
            c.c(pageMedias);
        }
        if (start + pageSize >= total) {
            g = false;
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
                        nv.a().a(abd.get_thumb_url_c(MainApplication.a(), item.getString("cover")), ((d) advVar).z());
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
                        int danmaku = cntInfo.getIntValue("danmaku");
                        if (danmaku > 0) {
                            ((d) advVar).danmakuInImage.setText(bl.adh.a(danmaku));
                            ((d) advVar).danmakuInImage.setVisibility(View.VISIBLE);
                        } else {
                            ((d) advVar).danmakuInImage.setVisibility(View.GONE);
                        }
                    }
                    // 合集模式medias含pubtime（发布时间），收藏夹模式用fav_time（收藏时间）
                    long pubdate = item.getLongValue("pubtime");
                    if (pubdate <= 0) {
                        pubdate = item.getLongValue("fav_time");
                    }
                    if (pubdate > 0) {
                        ((d) advVar).D().setText(DateHelper.formatDate(pubdate));
                        ((d) advVar).D().setVisibility(View.VISIBLE);
                    } else {
                        ((d) advVar).D().setVisibility(View.GONE);
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
                        nv.a().a(abd.get_thumb_url_c(MainApplication.a(), item.getString("cover")), ((d) advVar).z());
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
                        nv.a().a(abd.get_thumb_url_c(MainApplication.a(), biliVideoDetail.mCover), ((d) advVar).z());
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
                    BiliVideoDetail detail = (BiliVideoDetail) tag;
                    activityA.startActivity(
                            VideoDetailActivity.Companion.a((Context) activityA, detail.mAvid, detail.mCover));
                } else if (tag instanceof JSONObject) {
                    JSONObject item = (JSONObject) tag;
                    if (isFavoriteVideoMode) {
                        int type = item.getIntValue("type");
                        JSONObject ogv = item.getJSONObject("ogv");
                        long id = item.getLongValue("id");
                        String title = item.getString("title");
                        String cover = item.getString("cover");
                        Log.i("FavoriteClick", "=== Favorite Item Click ===");
                        Log.i("FavoriteClick", "id=" + id + ", type=" + type + ", title=" + title);
                        Log.i("FavoriteClick", "ogv=" + (ogv != null ? ogv.toJSONString() : "null"));
                        
                        boolean isPgc = (type == 24);
                        if (!isPgc && ogv != null) {
                            int typeId = ogv.getIntValue("type_id");
                            isPgc = typeId >= 1 && typeId <= 5 || typeId == 7;
                            Log.i("FavoriteClick", "ogv.type_id=" + typeId + ", isPgc=" + isPgc);
                        }
                        
                        Log.i("FavoriteClick", "final isPgc=" + isPgc);
                        
                        if (isPgc) {
                            String seasonId = ogv != null ? ogv.getString("season_id") : null;
                            Log.i("FavoriteClick", "Starting PGC with seasonId=" + seasonId);
                            activityA.startActivity(VideoDetailActivity.Companion.a((Context) activityA, seasonId, cover));
                        } else {
                            Log.i("FavoriteClick", "Starting UGC with avid=" + id);
                            activityA.startActivity(VideoDetailActivity.Companion.a((Context) activityA, id, cover));
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
        private TextView danmakuInImage;
        private DrawRelativeLayout s;

        public d(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (ScalableImageView) a(view, R.id.img);
            this.o = (TextView) a(view, R.id.title);
            this.p = (TextView) a(view, R.id.up);
            this.q = (TextView) a(view, R.id.play);
            this.r = (TextView) a(view, R.id.pubdate);
            this.duration = (TextView) a(view, R.id.duration);
            this.danmakuInImage = (TextView) a(view, R.id.danmaku);
            this.s = (DrawRelativeLayout) a(view, R.id.draw);
            android.graphics.drawable.Drawable c = bl.adl.a.c(R.drawable.ic_video_info_up);
            android.graphics.drawable.Drawable c2 = bl.adl.a.c(R.drawable.ic_video_info_play);
            android.graphics.drawable.Drawable c3 = bl.adl.a.c(R.drawable.ic_video_info_danmaku);
            int b = bl.adl.b(R.dimen.px_26);
            c.setBounds(0, 0, b, b);
            c2.setBounds(0, 0, b, b);
            c3.setBounds(0, 0, b, b);
            int danmakuColor = bl.adl.d(R.color.white);
            c.setColorFilter(danmakuColor, android.graphics.PorterDuff.Mode.MULTIPLY);
            c2.setColorFilter(danmakuColor, android.graphics.PorterDuff.Mode.MULTIPLY);
            c3.setColorFilter(danmakuColor, android.graphics.PorterDuff.Mode.MULTIPLY);
            this.p.setCompoundDrawables(c, null, null, null);
            this.q.setCompoundDrawables(c2, null, null, null);
            this.danmakuInImage.setCompoundDrawables(c3, null, null, null);
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
