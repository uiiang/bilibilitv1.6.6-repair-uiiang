package com.bilibili.tv.ui.main.content;

import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.content.UriMatcher;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.main.MainRecommendEx;
import com.bilibili.tv.ui.main.MainActivity;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.util.DateHelper;
import com.bilibili.tv.widget.DrawFrameLayout;
import com.bilibili.tv.widget.DrawLinearLayout;
import com.bilibili.tv.widget.DrawRelativeLayout;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.TypeCastException;
import tv.danmaku.android.log.BLog;

import bl.*;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import mybl.MyBiliApiService;
import tv.danmaku.ijk.media.player.IjkMediaCodecInfo;

public final class MainHotFragment extends adu implements aez, wf {
    public static final b Companion = new b(null);
    private c a;
    private BorderGridLayoutManager b;
    private int c;
    private boolean isLoadingMore = false;
    private boolean hasMoreData = true;
    private int popularPage = 1;

    public static MainHotFragment _this;

    @Override
    public String a() {
        return "ott-platform.home.0.0.pv";
    }

    @Override
    public boolean a_() {
        return wg.a(this);
    }

    @Override
    public Bundle b() {
        return null;
    }

    public static final class b {
        private b() {
        }

        public b(bbg bbgVar) {
            this();
        }

        public final MainHotFragment a() {
            MainHotFragment._this = new MainHotFragment();
            return _this;
        }
    }

    @Override
    public void a(RecyclerView recyclerView, Bundle bundle) {
        bbi.b(recyclerView, "recyclerView");
        super.a(recyclerView, bundle);
        ok.a("tv_home_hot_pageview", new String[0]);
        int b2 = adl.b(R.dimen.px_10);
        int b3 = adl.b(R.dimen.px_50);
        recyclerView.setPadding(b3, b2, b3, b2);
        final int columnCount = abd.get_home_column(getActivity());
        this.b = new BorderGridLayoutManager(getActivity(), columnCount, 1, false) {
            @Override
            public View d(View view, int i) {
                if (view == null) {
                    bbi.a();
                }
                
                if (MainHotFragment.this.isLoadingMore) {
                    return view;
                }
                
                int d2 = d(view);
                int row = d2 / columnCount;
                
                if (i == 33 && row == 0) {
                    FragmentActivity activity2 = MainHotFragment.this.getActivity();
                    if (activity2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.bilibili.tv.ui.main.MainActivity");
                    }
                    MainActivity mainActivity = (MainActivity) activity2;
                    mainActivity.a(false);
                    mainActivity.b(false);
                    return mainActivity.j();
                }
                
                return super.d(view, i);
            }
        };
        this.a = new c(this);
        recyclerView.setLayoutManager(this.b);
        BorderGridLayoutManager borderGridLayoutManager = this.b;
        if (borderGridLayoutManager == null) {
            bbi.a();
        }
        borderGridLayoutManager.a(new f());
        recyclerView.a(new ItemDecoration(b2, columnCount));
        recyclerView.setFocusable(false);
        recyclerView.setAdapter(this.a);
        getHotVideos();

        recyclerView.a(new g());
    }
    
    public final class g extends RecyclerView.m {
        @Override
        public void a(RecyclerView recyclerView, int i) {
            super.a(recyclerView, i);
            if (MainHotFragment.this.isLoadingMore || !MainHotFragment.this.hasMoreData || MainHotFragment.this.a == null) {
                return;
            }
            BorderGridLayoutManager borderGridLayoutManager = MainHotFragment.this.b;
            if (borderGridLayoutManager == null) {
                return;
            }
            int p = borderGridLayoutManager.p();
            if (borderGridLayoutManager.x() > 0) {
                int i2 = p + 20;
                if (i2 >= borderGridLayoutManager.H() - 1) {
                    int H = borderGridLayoutManager.H();
                    if (H > borderGridLayoutManager.x()) {
                        MainHotFragment.this.loadMoreData();
                    }
                }
            }
        }
    }

    public void getHotVideos(){
        this.popularPage = 1;
        this.hasMoreData = true;
        ((MyBiliApiService) vo.a(MyBiliApiService.class)).getPopular(this.popularPage, 20).a(new PopularResponse(false));
    }
    
    public void loadMoreData(){
        if (this.isLoadingMore || !this.hasMoreData) {
            return;
        }
        this.isLoadingMore = true;
        this.popularPage++;
        ((MyBiliApiService) vo.a(MyBiliApiService.class)).getPopular(this.popularPage, 20).a(new PopularResponse(true));
    }

    public static final class f extends GridLayoutManager.c {
        f() {
        }

        @Override
        public int a(int i) {
            return 1;
        }
    }

    public static final class ItemDecoration extends RecyclerView.g {
        final int space;
        final int columnCount;

        ItemDecoration(int space, int columnCount) {
            this.space = space;
            this.columnCount = columnCount;
        }

        @Override
        public void a(Rect outRect, View view, RecyclerView parent, RecyclerView.s state) {
            bbi.b(outRect, "outRect");
            bbi.b(view, "view");
            bbi.b(parent, "parent");
            
            int itemSpace = this.space;
            if (this.columnCount == 3 || this.columnCount == 4) {
                itemSpace = this.space * 2;
            }
            
            outRect.left = itemSpace;
            outRect.right = itemSpace;
            outRect.top = itemSpace;
            outRect.bottom = itemSpace;
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.a = null;
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (!z || getActivity() == null) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        MainActivity mainActivity = (MainActivity) activity;
        RecyclerView d2 = d();
        if (d2 != null) {
            d2.a(this.c);
        }
        RecyclerView d3 = d();
        if (d3 == null) {
            bbi.a();
        }
        View c2 = d3.getLayoutManager().c(this.c);
        if (c2 == null || !mainActivity.h()) {
            return;
        }
        c2.requestFocus();
    }

    public boolean isLoading() {
        return this.isLoadingMore;
    }

    @Override
    public View e_() {
        if (this.a != null) {
            c cVar = this.a;
            if (cVar == null) {
                bbi.a();
            }
            if (cVar.a() == 0) {
                return null;
            }
            if (this.b == null) {
                bbi.a();
                return null;
            }
            View view;
            view=this.b.c(this.c);
            if(view != null && !view.isFocusable()){
                this.c=1;
                view=this.b.c(this.c);
            }
            return view;
        }
        return null;
    }

    final class PopularResponse extends vn<JSONObject> {
        private boolean isAppendMode;

        public PopularResponse() {
            this.isAppendMode = false;
        }

        public PopularResponse(boolean isAppendMode) {
            this.isAppendMode = isAppendMode;
        }

        @Override
        public void a(JSONObject data) {
            if (MainHotFragment.this.a == null || data == null) {
                MainHotFragment.this.isLoadingMore = false;
                return;
            }
            JSONArray list = data.getJSONArray("list");
            if (list == null || list.isEmpty()) {
                MainHotFragment.this.hasMoreData = false;
                MainHotFragment.this.isLoadingMore = false;
                return;
            }
            
            boolean noMore = data.getBooleanValue("no_more");
            MainHotFragment.this.hasMoreData = !noMore;
            
            MainRecommendEx.Content[] contents = {null, null, null, null, null};
            ArrayList arrayList = new ArrayList<MainRecommendEx.Content>(Arrays.asList(contents));
            ArrayList arrayList2 = new ArrayList<MainRecommendEx.Content>(20);
            
            for (int i = 0; i < list.size(); i++) {
                JSONObject item = list.getJSONObject(i);
                MainRecommendEx.Content content = new MainRecommendEx.Content();
                content.setCardType("small_popular_ugc");
                content.setCardGoto("av");
                content.setJumpId(item.getLongValue("aid"));
                content.setCover(item.getString("pic"));
                content.setTitle(item.getString("title"));
                content.setPubdate(item.getLongValue("pubdate"));
                content.setUri("bilibili_yst://video/" + item.getLongValue("aid"));
                content.setDuration(item.getIntValue("duration"));
                JSONObject owner = item.getJSONObject("owner");
                if (owner != null) {
                    content.setOwnerName(owner.getString("name"));
                }
                JSONObject stat = item.getJSONObject("stat");
                if (stat != null) {
                    content.setPlay(stat.getIntValue("view"));
                    content.setDanmaku(stat.getIntValue("danmaku"));
                }
                arrayList2.add(content);
            }
            
            if (this.isAppendMode) {
                MainHotFragment.this.a.appendData(arrayList, arrayList2);
            } else {
                MainHotFragment.this.a.a(arrayList, arrayList2);
            }
            
            MainHotFragment.this.isLoadingMore = false;
        }

        @Override
        public void onError(Throwable th) {
            bbi.b(th, "t");
            BLog.e("HotRecommend", th.getMessage());
            MainHotFragment.this.isLoadingMore = false;
        }
    }

    static final class c extends RecyclerView.a<adv> {
        public static final aa Companion = new aa(null);
        public static List<MainRecommendEx.Content> ugcList;
        public static List<MainRecommendEx.Content> ogvList;
        private final WeakReference<MainHotFragment> c;
        private final UriMatcher d;
        private final int e;
        private final int f;
        private int columnCount = 2;

        @Override
        public int a() {
            return ugcList != null ? ugcList.size() : 0;
        }

        public c(MainHotFragment fragment) {
            bbi.b(fragment, "fragment");
            this.ugcList = new ArrayList(20);
            this.ogvList = new ArrayList(5);
            this.c = new WeakReference<>(fragment);
            this.d = new UriMatcher(-1);
            this.e = adl.b(R.dimen.px_512);
            this.f = adl.b(R.dimen.px_335);
            this.columnCount = abd.get_home_column(fragment.getActivity());
        }

        @Override
        public adv a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            if (i == 1) {
                return ((a)null).Companion.a(viewGroup, this.c);
            }
            if (this.columnCount == 3 || this.columnCount == 4) {
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_main_recommend_compact, viewGroup, false);
                bbi.a((Object) inflate, "view");
                return new e(inflate, this.c);
            }
            return MainHotFragment.e.Companion.a(viewGroup, this.c);
        }

        @Override
        public void a(adv advVar, int i) {
            if (advVar instanceof e) {
                advVar.a.setTag(R.id.position, Integer.valueOf(i));
                if (this.ugcList.size() < i + 1) {
                    ((e) advVar).B().setVisibility(View.INVISIBLE);
                    return;
                }
                e eVar = (e) advVar;
                eVar.B().setVisibility(0);
                MainRecommendEx.Content content = this.ugcList.get(i);
                if (content == null) {
                    advVar.a.setFocusable(false);
                    advVar.a.setVisibility(View.GONE);
                    ViewGroup.LayoutParams params = advVar.a.getLayoutParams();
                    if (params != null) {
                        params.width = 0;
                    }
                    return;
                }
                advVar.a.setFocusable(true);
                advVar.a.setVisibility(View.VISIBLE);
                
                if (this.columnCount == 3 || this.columnCount == 4) {
                    int screenWidth = advVar.a.getResources().getDisplayMetrics().widthPixels;
                    int horizontalPadding = adl.b(R.dimen.px_50) * 2 + adl.b(R.dimen.px_20) + adl.b(R.dimen.px_10);
                    int itemWidth = (screenWidth - horizontalPadding) / this.columnCount;
                    int imageHeight = (int) (itemWidth * 0.56f);
                    ViewGroup.LayoutParams imgParams = eVar.A().getLayoutParams();
                    if (imgParams != null) {
                        imgParams.height = imageHeight;
                    }
                    ViewGroup.LayoutParams itemParams = advVar.a.getLayoutParams();
                    if (itemParams == null) {
                        itemParams = new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                    }
                    advVar.a.setLayoutParams(itemParams);
                }
                
                if (!TextUtils.isEmpty(content.getTitle())) {
                    eVar.z().setText(content.getTitle());
                }
                if (!TextUtils.isEmpty(content.getCover())) {
                    nv a4 = nv.a();
                    MainApplication a5 = MainApplication.a();
                    a4.a(abd.get_thumb_url_with_size(a5.getApplicationContext(), content.getCover(), this.e, this.f), eVar.A());
                }
                if (!TextUtils.isEmpty(content.getUri())) {
                    View view2 = advVar.a;
                    view2.setTag(content.getUri());
                }
                if (!TextUtils.isEmpty(content.getOwnerName())) {
                     eVar.B().setText(content.getOwnerName());
                     eVar.B().setVisibility(View.VISIBLE);
                 } else {
                     eVar.B().setVisibility(View.GONE);
                 }
                 eVar.C().setText(adh.a(content.getPlay()));
                 int danmaku = content.getDanmaku();
                 if (danmaku > 0) {
                     eVar.D().setText(adh.a(danmaku));
                     eVar.D().setVisibility(View.VISIBLE);
                 } else {
                     eVar.D().setVisibility(View.GONE);
                 }
                 long pubdate = content.getPubdate();
                 if (eVar.F() != null) {
                     if (pubdate > 0) {
                         eVar.F().setText(DateHelper.formatDate(pubdate));
                         eVar.F().setVisibility(View.VISIBLE);
                     } else {
                         eVar.F().setVisibility(View.GONE);
                     }
                 }
                int duration = content.getDuration();
                if (duration >= 3600) {
                    eVar.E().setText(String.format("%d:%02d:%02d", duration / 3600, (duration % 3600) / 60, duration % 60));
                } else {
                    eVar.E().setText(String.format("%02d:%02d", duration / 60, duration % 60));
                }
                advVar.a.setTag(R.id.report_position, Integer.valueOf(i + 1));
            }
        }

        @Override
        public int a(int i) {
            return 2;
        }

        public final boolean a(List<MainRecommendEx.Content> ogvList, List<MainRecommendEx.Content> ugcList) {
            bbi.b(ogvList, "ogvList");
            bbi.b(ugcList, "ugcList");
            
            ArrayList<MainRecommendEx.Content> allList = new ArrayList<>();
            
            for (MainRecommendEx.Content content : ogvList) {
                if (content != null) {
                    allList.add(content);
                }
            }
            
            for (MainRecommendEx.Content content : ugcList) {
                if (content != null) {
                    allList.add(content);
                }
            }
            
            this.ugcList = allList;
            this.ogvList = ogvList;
            
            MainHotFragment fragment = this.c.get();
            if (fragment != null) {
                fragment.c = 0;
                RecyclerView recyclerView = fragment.d();
                if (recyclerView != null) {
                    recyclerView.a(0);
                }
            }
            
            d();
            return true;
        }
        
        public final void appendData(List<MainRecommendEx.Content> ogvList, List<MainRecommendEx.Content> ugcList) {
            bbi.b(ogvList, "ogvList");
            bbi.b(ugcList, "ugcList");
            
            ArrayList<MainRecommendEx.Content> newItems = new ArrayList<>();
            
            for (MainRecommendEx.Content content : ugcList) {
                if (content != null) {
                    newItems.add(content);
                }
            }
            
            int oldSize = this.ugcList.size();
            this.ugcList.addAll(newItems);
            this.ogvList = ogvList;
            
            d(oldSize);
        }

        public static final class aa {
            private aa() {
            }

            public aa(bbg bbgVar) {
                this();
            }
        }
    }

    static final class a extends adv implements View.OnClickListener, View.OnFocusChangeListener {
        public static final aa Companion = new aa(null);
        private final TextView n;
        private final ScalableImageView o;
        private final ScalableImageView p;
        public final DrawFrameLayout q;
        private final WeakReference<MainHotFragment> r;

        public a(View view, WeakReference<MainHotFragment> weakReference) {
            super(view);
            this.r = weakReference;
            this.n = (TextView) a(view, R.id.title);
            this.o = (ScalableImageView) a(view, R.id.img);
            this.p = (ScalableImageView) a(view, R.id.black_img);
            this.q = (DrawFrameLayout) view;
            this.q.setUpDrawable(R.drawable.shadow_item_main);
            view.setOnClickListener(this);
            view.setOnFocusChangeListener(this);
        }

        public final TextView z() {
            return this.n;
        }

        public final ScalableImageView A() {
            return this.o;
        }

        public final ScalableImageView B() {
            return this.p;
        }

        public static final class aa {
            private aa() {
            }

            public aa(bbg bbgVar) {
                this();
            }

            public final a a(ViewGroup viewGroup, WeakReference<MainHotFragment> weakReference) {
                bbi.b(viewGroup, "parent");
                bbi.b(weakReference, "weakReference");
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_main_recommend_big, viewGroup, false);
                bbi.a((Object) inflate, "view");
                return new a(inflate, weakReference);
            }
        }

        @Override
        public void onClick(View view) {
            bbi.b(view, "v");
            abl.a.a("ott-platform.home.hot.0.click");
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            MainHotFragment fragment = this.r.get();
            if (fragment == null) {
                return;
            }
            Object tag = view.getTag(R.id.position);
            if (tag != null) {
                fragment.c = ((Integer) tag).intValue();
            }
            adj.a(view, z);
        }
    }

    static final class e extends adv implements View.OnClickListener, View.OnFocusChangeListener {
        public static final a Companion = new a(null);
        private final TextView n;
        private final ScalableImageView o;
        private final TextView p;
        private final TextView q;
        private final TextView r;
        private final TextView u;
        private final TextView v;
        private final View s;
        private final WeakReference<MainHotFragment> t;

        public e(View view, WeakReference<MainHotFragment> weakReference) {
            super(view);
            this.t = weakReference;
            this.n = (TextView) view.findViewById(R.id.title);
            this.o = (ScalableImageView) view.findViewById(R.id.img);
            this.p = (TextView) view.findViewById(R.id.up);
            this.q = (TextView) view.findViewById(R.id.play);
            this.r = (TextView) view.findViewById(R.id.danmaku);
            this.u = (TextView) view.findViewById(R.id.duration);
            this.v = (TextView) view.findViewById(R.id.pubdate);
            this.s = view;
            if (view instanceof DrawRelativeLayout) {
                ((DrawRelativeLayout) view).setUpDrawable(R.drawable.shadow_white_rect);
            } else if (view instanceof DrawLinearLayout) {
                ((DrawLinearLayout) view).setUpDrawable(R.drawable.shadow_white_rect);
            }
            android.content.Context ctx = view.getContext();
            android.graphics.drawable.Drawable c = ctx.getResources().getDrawable(R.drawable.ic_video_info_up);
            android.graphics.drawable.Drawable c2 = ctx.getResources().getDrawable(R.drawable.ic_video_info_play);
            android.graphics.drawable.Drawable c3 = ctx.getResources().getDrawable(R.drawable.ic_video_info_danmaku);
            int b = ctx.getResources().getDimensionPixelSize(R.dimen.px_26);
            c.setBounds(0, 0, b, b);
            c2.setBounds(0, 0, b, b);
            c3.setBounds(0, 0, b, b);
            int d = ctx.getResources().getColor(R.color.white);
            c.setColorFilter(d, android.graphics.PorterDuff.Mode.MULTIPLY);
            c2.setColorFilter(d, android.graphics.PorterDuff.Mode.MULTIPLY);
            c3.setColorFilter(d, android.graphics.PorterDuff.Mode.MULTIPLY);
            this.p.setCompoundDrawables(c, null, null, null);
            this.q.setCompoundDrawables(c2, null, null, null);
            this.r.setCompoundDrawables(c3, null, null, null);
            view.setOnClickListener(this);
            view.setOnFocusChangeListener(this);
        }

        public final TextView z() {
            return this.n;
        }

        public final ScalableImageView A() {
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
            return this.u;
        }

        public final TextView F() {
            return this.v;
        }

        public static final class a {
            private a() {
            }

            public a(bbg bbgVar) {
                this();
            }

            public final e a(ViewGroup viewGroup, WeakReference<MainHotFragment> weakReference) {
                bbi.b(viewGroup, "parent");
                bbi.b(weakReference, "weakReference");
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_main_recommend_video, viewGroup, false);
                bbi.a((Object) inflate, "view");
                return new e(inflate, weakReference);
            }
        }

        @Override
        public void onClick(View view) {
            bbi.b(view, "v");
            abl.a.a("ott-platform.home.hot.0.click");
            Context context = view.getContext();
            bbi.a((Object) context, "v.context");
            Activity a2 = adl.a(context);
            Object tag = view.getTag();
            if (a2 == null) {
                return;
            }
            if (tag instanceof String) {
                String str = (String) tag;
                if (!bcl.b(str, "bilibili_yst://video", false) && !bcl.b(str, "bilibili://video", false)) {
                    return;
                }
                long avid = ContentUris.parseId(Uri.parse(str));
                String coverUrl = null;
                Object posTag = view.getTag(R.id.position);
                MainHotFragment fragment = this.t.get();
                if (posTag instanceof Integer && fragment != null && fragment.a != null) {
                    List<MainRecommendEx.Content> ugcList = fragment.a.ugcList;
                    if (ugcList != null) {
                        int pos = (Integer) posTag;
                        if (pos >= 0 && pos < ugcList.size()) {
                            MainRecommendEx.Content content = ugcList.get(pos);
                            if (content != null) {
                                coverUrl = content.getCover();
                            }
                        }
                    }
                }
                a2.startActivity(VideoDetailActivity.Companion.a(a2, avid, coverUrl));
            }
            Object tag2 = view.getTag(R.id.report_position);
            if (tag2 instanceof Integer) {
                ok.a("tv_home_hot_click", "type", "video", "position", tag2.toString());
            }
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            MainHotFragment fragment = this.t.get();
            if (fragment == null) {
                return;
            }
            Object tag = view.getTag(R.id.position);
            if (tag != null) {
                fragment.c = ((Integer) tag).intValue();
            }
            adj.a(view, z);
            if (this.s instanceof DrawRelativeLayout) {
                ((DrawRelativeLayout) this.s).setUpEnabled(z);
            } else if (this.s instanceof DrawLinearLayout) {
                ((DrawLinearLayout) this.s).setUpEnabled(z);
            }
            this.n.setSelected(z);
        }
    }

    @Override
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        wh.a().a(this, !z);
    }
}
