package bl;

import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import bl.adc;
import bl.abd;
import bl.vo;
import com.alibaba.fastjson.JSONObject;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import bl.bbi;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.category.CategoryManager;
import com.bilibili.tv.api.category.CategoryMeta;
import com.bilibili.tv.api.search.BiliSearchApi;
import com.bilibili.tv.api.search.BiliSearchResultAllNew;
import com.bilibili.tv.api.search.BiliSearchResultNew;
import com.bilibili.tv.api.search.BiliSearchResultPgc;
import com.bilibili.tv.api.search.BiliSearchResultUper;
import com.bilibili.tv.ui.auth.AuthSpaceActivity;
import com.bilibili.tv.ui.bangumi.BangumiDetailActivity;
import com.bilibili.tv.ui.base.LoadingImageView;
import com.bilibili.tv.ui.search.SearchActivity;
import com.bilibili.tv.ui.search.SearchKeyboardView;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.widget.CategoryTextView;
import com.bilibili.tv.widget.DrawRelativeLayout;
import com.bilibili.tv.widget.FixLinearLayoutManager;
import com.bilibili.tv.widget.ScalableImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.TypeCastException;

import mybl.BiliLiveContent;
import mybl.BiliLiveContentEx2;
import mybl.MyBiliApiService;
import mybl.LogUtil;
import mybl.WbiSigner;
import com.alibaba.fastjson.*;
import com.bilibili.tv.ui.live.player.LivePlayerActivity;
import android.util.Log;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class afi extends adt {
    public static final e Companion = new e(null);
    private static final String t = "SearchResultFragment";

    /* renamed from: u, reason: collision with root package name */
    private static final String f17u = "com.bilibili.tv.ui.search.SearchResultFragment.EXTRA_TID";
    private LoadingImageView a;
    private RecyclerView b;
    private RecyclerView c;
    private f d;
    private c e;
    private LinearLayoutManager f;
    private LinearLayoutManager g;
    private g h;
    private j i;
    private h j;
    private i k;
    private ImageView n;
    private boolean q;
    private String r;
    private int s;
    private String l = SearchActivity.Companion.c()[0];
    private String m = SearchActivity.Companion.d()[0];
    public String live_order = SearchActivity.live_orders[0];
    private int o = 1;
    private boolean p = true;

    public final String a() {
        return this.l;
    }

    public final String b() {
        return this.m;
    }

    protected final ImageView c() {
        return this.n;
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class e {
        private e() {
        }

        public /* synthetic */ e(bbg bbgVar) {
            this();
        }

        public final String a() {
            return afi.t;
        }

        public final String b() {
            return afi.f17u;
        }

        public final afi a(int i) {
            Bundle bundle = new Bundle();
            bundle.putInt(b(), i);
            afi afiVar = new afi();
            afiVar.setArguments(bundle);
            return afiVar;
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        bbi.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_search_result, viewGroup, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        int i2;
        bbi.b(view, "view");
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.s = arguments.getInt(f17u);
        }
        this.b = (RecyclerView) a(view, R.id.result_container);
        this.c = (RecyclerView) a(view, R.id.category_container);
        this.n = (ImageView) a(view, R.id.category_more);
        this.b.setHasFixedSize(true);
        this.a = (LoadingImageView) a(view, R.id.loading_view);
        final FragmentActivity activity = getActivity();
        this.f = new FixLinearLayoutManager(activity) { // from class: com.bilibili.tv.ui.search.SearchResultFragment$onViewCreated$1
            @Override // android.support.v7.widget.RecyclerView.h
            public View d(View view2, int i3) {
                View m2;
                int d2 = d(view2);
                if (i3 == 17) {
                    FragmentActivity activity2 = afi.this.getActivity();
                    if (activity2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.bilibili.tv.ui.search.SearchActivity");
                    }
                    return ((SearchActivity) activity2).l();
                }
                if (i3 != 33) {
                    if (i3 == 66) {
                        m2 = afi.this.m();
                        return m2 != null ? m2 : view2;
                    }
                    if (i3 == 130 && d2 >= H() - 1) {
                        return view2;
                    }
                } else if (d2 <= 0) {
                    return view2;
                }
                return super.d(view2, i3);
            }
        };
        this.b.setLayoutManager(this.f);
        this.b.a(new o());
        this.d = new f();
        this.b.setAdapter(this.d);
        final FragmentActivity activity2 = getActivity();
        this.g = new FixLinearLayoutManager(activity2) { // from class: com.bilibili.tv.ui.search.SearchResultFragment$onViewCreated$3
            @Override // android.support.v7.widget.RecyclerView.h
            public View d(View view2, int i3) {
                int d2 = d(view2);
                if (i3 == 17) {
                    if (afi.this.q) {
                        return view2;
                    }
                    int o2 = afi.this.f.o();
                    afi.this.e.b(true);
                    return afi.this.f.c(o2);
                }
                if (i3 != 33) {
                    if (i3 == 66) {
                        return view2;
                    }
                    if (i3 == 130 && d2 >= H() - 1) {
                        return view2;
                    }
                } else if (d2 <= 0) {
                    return view2;
                }
                return super.d(view2, i3);
            }
        };
        this.c.setLayoutManager(this.g);
        List<CategoryMeta> p2 = p();
        if (p2 != null) {
            int size = p2.size();
            i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                if (p2.get(i3).mTid == this.s) {
                    i2 = i3;
                }
            }
        } else {
            i2 = 0;
        }
        this.e = new c(this, p2, i2);
        this.c.setAdapter(this.e);
        this.g.b(i2, 0);
        if (i2 >= 8) {
            this.g.a(true);
        }
        this.c.getViewTreeObserver().addOnGlobalFocusChangeListener(new p());
        this.h = new g();
        this.i = new j();
        this.j = new h();
        this.k = new i();
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public final class o extends RecyclerView.m {
        @Override // android.support.v7.widget.RecyclerView.m
        public void a(RecyclerView recyclerView, int i) {
            super.a(recyclerView, i);
            if (!afi.this.p || afi.this.q || afi.this.d == null) {
                return;
            }
            int p = afi.this.f.p();
            if (afi.this.f.x() > 0) {
                int i2 = p + 2;
                if (i2 >= afi.this.f.H() - 1) {
                    int H = afi.this.f.H();
                    if (H > afi.this.f.x()) {
                        afi.this.o++;
                        afi.this.a(afi.this.s);
                    }
                }
            }
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    final class p implements ViewTreeObserver.OnGlobalFocusChangeListener {
        p() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
        public final void onGlobalFocusChanged(View view, View view2) {
            FragmentActivity activity = afi.this.getActivity();
            if (view2 == null) {
                if (activity == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.bilibili.tv.ui.search.SearchActivity");
                }
                ((SearchActivity) activity).b(false);
            } else if (view2.getParent() == afi.this.c) {
                if (activity instanceof SearchActivity) {
                    ((SearchActivity) activity).b(true);
                }
            } else {
                if (activity == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.bilibili.tv.ui.search.SearchActivity");
                }
                ((SearchActivity) activity).b(false);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            this.s = 0;
            o();
            if (this.d != null) {
                this.d.c(true);
                if (this.d.h() != null) {
                    this.d.h().clear();
                }
            }
            View m2 = m();
            if (m2 != null) {
                m2.setSelected(false);
            }
            if (this.c != null) {
                this.c.a(0);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.d = (f) null;
    }

    public final void d() {
        if (this.b.getVisibility() == 0) {
            int o2 = this.f.o();
            View c2 = this.f.c(o2);
            if (c2 != null) {
                c2.requestFocus();
                return;
            }
            return;
        }
        View m2 = m();
        if (m2 != null) {
            m2.requestFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View m() {
        if (this.c == null) {
            return null;
        }
        int i2 = 0;
        int childCount = this.c.getChildCount() - 1;
        if (childCount >= 0) {
            while (true) {
                View childAt = this.c.getChildAt(i2);
                bbi.a((Object) childAt, "child");
                if (!childAt.isSelected()) {
                    if (i2 == childCount) {
                        break;
                    }
                    i2++;
                } else {
                    return childAt;
                }
            }
        }
        int o2 = this.g.o();
        return this.g.c(o2);
    }

    public final void a(String str) {
        android.util.Log.i("SearchFragment", "afi.a(String) called, keyword=" + str);
        bbi.b(str, "text");
        this.r = str;
        this.o = 1;
        this.l = SearchActivity.Companion.c()[0];
        this.m = SearchActivity.Companion.d()[0];
        this.live_order = SearchActivity.live_orders[0];
        ok.a("tv_search_result", "keyword", str);
        searchVideo();
    }

    public final void searchVideo() {
        this.q = true;
        adn.a(this.c, 0, 10L);
        if (this.e != null) {
            this.e.e(0);
        }
        if (this.o == 1) {
            this.a.a();
            this.b.setVisibility(View.INVISIBLE);
        }
        String access_key = mg.a(MainApplication.a()).e();
        WbiSigner wbi = WbiSigner.getInstance();
        java.util.TreeMap<String, String> params = new java.util.TreeMap<>();
        params.put("search_type", "video");
        params.put("keyword", this.r);
        params.put("order", this.l);
        params.put("page", String.valueOf(this.o));
        params.put("pagesize", "20");
        params.put("tids", String.valueOf(this.s));
        // params.put("access_key", access_key);
        String signedQuery = wbi.encWbiAndGetQuery(params);
        String url = "https://api.bilibili.com/x/web-interface/wbi/search/type?" + signedQuery;
        android.util.Log.i("SearchFragment", "SearchVideo URL: " + url);
        android.util.Log.i("SearchFragment", "SearchVideo method called, s=" + this.s + ", o=" + this.o + ", access_key=" + access_key);
        android.util.Log.i("SearchFragment", "SearchVideo start");
        final SearchVideoResponse searchResponse = new SearchVideoResponse();
        OkHttpClient client = vo.getOkHttpClient();
        Request request = new Request.Builder().url(url).get().build();
        android.util.Log.i("SearchFragment", "OkHttpClient created, executing request...");
        client.newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, final IOException e) {
                android.util.Log.e("SearchFragment", "OkHttp onFailure: " + e.getMessage());
                android.util.Log.e("SearchFragment", "Posting error to main thread...");
                android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                mainHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        android.util.Log.e("SearchFragment", "Calling searchResponse.onError on main thread...");
                        searchResponse.onError(e);
                    }
                });
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                android.util.Log.d("SearchFragment", "OkHttp onResponse, code=" + response.code());
                try {
                    ResponseBody body = response.body();
                    if (body != null) {
                        String jsonStr = body.string();
                        android.util.Log.d("SearchFragment", "OkHttp response body length=" + jsonStr.length());
                        final com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(jsonStr);
                        final int code = json.getIntValue("code");
                        final String message = json.getString("message");
                        android.util.Log.d("SearchFragment", "API response code=" + code + ", message=" + message);
                        android.util.Log.d("SearchFragment", "Posting response to main thread...");
                        android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                        mainHandler.post(new Runnable() {
                            @Override
                            public void run() {
                                if (code == 0) {
                                    android.util.Log.d("SearchFragment", "API success, passing full json to response handler on main thread");
                                    searchResponse.a(json);
                                } else {
                                    android.util.Log.e("SearchFragment", "API error: code=" + code + ", message=" + message);
                                    com.bilibili.api.BiliApiException ex = new com.bilibili.api.BiliApiException(code, message);
                                    searchResponse.onError(ex);
                                }
                            }
                        });
                    }
                } catch (final Exception e) {
                    android.util.Log.e("SearchFragment", "OkHttp parse error", e);
                    android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            searchResponse.onError(e);
                        }
                    });
                }
            }
        });
        android.util.Log.i("SearchFragment", "SearchVideo request sent");
    }

    public final void searchBangumi() {
        this.q = true;
        if (this.o == 1) {
            this.a.a();
            this.b.setVisibility(View.INVISIBLE);
        }
        String access_key = mg.a(MainApplication.a()).e();
        WbiSigner wbi = WbiSigner.getInstance();
        java.util.TreeMap<String, String> params = new java.util.TreeMap<>();
        params.put("search_type", "media_bangumi");
        params.put("keyword", this.r);
        params.put("order", this.l);
        params.put("page", String.valueOf(this.o));
        params.put("pagesize", "20");
        params.put("access_key", access_key);
        String signedQuery = wbi.encWbiAndGetQuery(params);
        String url = "https://api.bilibili.com/x/web-interface/wbi/search/type?" + signedQuery;
        android.util.Log.i("SearchFragment", "SearchBangumi URL: " + url);
        android.util.Log.i("SearchFragment", "SearchBangumi method called, s=" + this.s);
        android.util.Log.i("SearchFragment", "SearchBangumi start");
        final SearchBangumiResponse searchResponse = new SearchBangumiResponse();
        OkHttpClient client = vo.getOkHttpClient();
        Request request = new Request.Builder().url(url).get().build();
        android.util.Log.i("SearchFragment", "OkHttpClient created, executing request...");
        client.newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, final IOException e) {
                android.util.Log.e("SearchFragment", "OkHttp onFailure: " + e.getMessage());
                android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                mainHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        searchResponse.onError(e);
                    }
                });
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                android.util.Log.d("SearchFragment", "OkHttp onResponse, code=" + response.code());
                try {
                    ResponseBody body = response.body();
                    if (body != null) {
                        String jsonStr = body.string();
                        android.util.Log.d("SearchFragment", "OkHttp response body length=" + jsonStr.length());
                        final com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(jsonStr);
                        final int code = json.getIntValue("code");
                        final String message = json.getString("message");
                        android.util.Log.d("SearchFragment", "API response code=" + code + ", message=" + message);
                        android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                        mainHandler.post(new Runnable() {
                            @Override
                            public void run() {
                                if (code == 0) {
                                    searchResponse.a(json);
                                } else {
                                    com.bilibili.api.BiliApiException ex = new com.bilibili.api.BiliApiException(code, message);
                                    searchResponse.onError(ex);
                                }
                            }
                        });
                    }
                } catch (final Exception e) {
                    android.util.Log.e("SearchFragment", "OkHttp parse error", e);
                    android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            searchResponse.onError(e);
                        }
                    });
                }
            }
        });
    }

    public final void searchMediaFt() {
        this.q = true;
        if (this.o == 1) {
            this.a.a();
            this.b.setVisibility(View.INVISIBLE);
        }
        String access_key = mg.a(MainApplication.a()).e();
        WbiSigner wbi = WbiSigner.getInstance();
        java.util.TreeMap<String, String> params = new java.util.TreeMap<>();
        params.put("search_type", "media_ft");
        params.put("keyword", this.r);
        params.put("order", this.l);
        params.put("page", String.valueOf(this.o));
        params.put("pagesize", "20");
        params.put("access_key", access_key);
        String signedQuery = wbi.encWbiAndGetQuery(params);
        String url = "https://api.bilibili.com/x/web-interface/wbi/search/type?" + signedQuery;
        android.util.Log.i("SearchFragment", "SearchMediaFt URL: " + url);
        final SearchMediaFtResponse searchResponse = new SearchMediaFtResponse();
        OkHttpClient client = vo.getOkHttpClient();
        Request request = new Request.Builder().url(url).get().build();
        client.newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, final IOException e) {
                android.util.Log.e("SearchFragment", "OkHttp onFailure: " + e.getMessage());
                android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                mainHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        searchResponse.onError(e);
                    }
                });
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                try {
                    ResponseBody body = response.body();
                    if (body != null) {
                        String jsonStr = body.string();
                        final com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(jsonStr);
                        final int code = json.getIntValue("code");
                        final String message = json.getString("message");
                        android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                        mainHandler.post(new Runnable() {
                            @Override
                            public void run() {
                                if (code == 0) {
                                    searchResponse.a(json);
                                } else {
                                    com.bilibili.api.BiliApiException ex = new com.bilibili.api.BiliApiException(code, message);
                                    searchResponse.onError(ex);
                                }
                            }
                        });
                    }
                } catch (final Exception e) {
                    android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            searchResponse.onError(e);
                        }
                    });
                }
            }
        });
    }

    public final void searchLiveRoom() {
        this.q = true;
        if (this.o == 1) {
            this.a.a();
            this.b.setVisibility(View.INVISIBLE);
        }
        String access_key = mg.a(MainApplication.a()).e();
        WbiSigner wbi = WbiSigner.getInstance();
        java.util.TreeMap<String, String> params = new java.util.TreeMap<>();
        params.put("search_type", "live_room");
        params.put("keyword", this.r);
        params.put("order", this.live_order);
        params.put("page", String.valueOf(this.o));
        params.put("pagesize", "20");
        params.put("access_key", access_key);
        String signedQuery = wbi.encWbiAndGetQuery(params);
        String url = "https://api.bilibili.com/x/web-interface/wbi/search/type?" + signedQuery;
        android.util.Log.i("SearchFragment", "SearchLiveRoom URL: " + url);
        final SearchLiveRoomResponse searchResponse = new SearchLiveRoomResponse();
        OkHttpClient client = vo.getOkHttpClient();
        Request request = new Request.Builder().url(url).get().build();
        client.newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, final IOException e) {
                android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                mainHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        searchResponse.onError(e);
                    }
                });
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                try {
                    ResponseBody body = response.body();
                    if (body != null) {
                        String jsonStr = body.string();
                        final com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(jsonStr);
                        final int code = json.getIntValue("code");
                        final String message = json.getString("message");
                        android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                        mainHandler.post(new Runnable() {
                            @Override
                            public void run() {
                                if (code == 0) {
                                    searchResponse.a(json);
                                } else {
                                    com.bilibili.api.BiliApiException ex = new com.bilibili.api.BiliApiException(code, message);
                                    searchResponse.onError(ex);
                                }
                            }
                        });
                    }
                } catch (final Exception e) {
                    android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            searchResponse.onError(e);
                        }
                    });
                }
            }
        });
    }

    public final void searchUser() {
        this.q = true;
        if (this.o == 1) {
            this.a.a();
            this.b.setVisibility(View.INVISIBLE);
        }
        String access_key = mg.a(MainApplication.a()).e();
        WbiSigner wbi = WbiSigner.getInstance();
        java.util.TreeMap<String, String> params = new java.util.TreeMap<>();
        params.put("search_type", "bili_user");
        params.put("keyword", this.r);
        params.put("order", this.m);
        params.put("page", String.valueOf(this.o));
        params.put("pagesize", "20");
        params.put("access_key", access_key);
        String signedQuery = wbi.encWbiAndGetQuery(params);
        String url = "https://api.bilibili.com/x/web-interface/wbi/search/type?" + signedQuery;
        android.util.Log.i("SearchFragment", "SearchUser URL: " + url);
        final SearchUserResponse searchResponse = new SearchUserResponse();
        OkHttpClient client = vo.getOkHttpClient();
        Request request = new Request.Builder().url(url).get().build();
        client.newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, final IOException e) {
                android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                mainHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        searchResponse.onError(e);
                    }
                });
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                try {
                    ResponseBody body = response.body();
                    if (body != null) {
                        String jsonStr = body.string();
                        final com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(jsonStr);
                        final int code = json.getIntValue("code");
                        final String message = json.getString("message");
                        android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                        mainHandler.post(new Runnable() {
                            @Override
                            public void run() {
                                if (code == 0) {
                                    searchResponse.a(json);
                                } else {
                                    com.bilibili.api.BiliApiException ex = new com.bilibili.api.BiliApiException(code, message);
                                    searchResponse.onError(ex);
                                }
                            }
                        });
                    }
                } catch (final Exception e) {
                    android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            searchResponse.onError(e);
                        }
                    });
                }
            }
        });
    }

    public final boolean i() {
        return this.s == 4;
    }

    public final boolean j() {
        return this.s == 0;
    }

    public final boolean is_live() {
        return this.s == 3;
    }

    public final void b(String str) {
        LogUtil.i(t, "b(String) called, order=" + str);
        bbi.b(str, "order");
        boolean equals = TextUtils.equals(str, this.l);
        this.l = str;
        if (equals) {
            return;
        }
        View m2 = m();
        if (m2 != null) {
            m2.requestFocus();
        }
        if (this.d != null) {
            o();
            a(this.s);
        }
    }

    public final void c(String order) {
        LogUtil.i(t, "c(String) called, order=" + order);
        bbi.b(order, "order");
        boolean equals = TextUtils.equals(order, this.m);
        this.m = order;
        if (equals) {
            return;
        }
        View m2 = m();
        if (m2 != null) {
            m2.requestFocus();
        }
        if (this.d != null) {
            o();
            a(this.s);
        }
    }


    public final void cc(String order) {
        LogUtil.i(t, "cc(String) called, order=" + order);
        if(TextUtils.equals(order, this.live_order))return;
        this.live_order = order;
        View m2 = m();
        if (m2 != null) {
            m2.requestFocus();
        }
        if (this.d != null) {
            o();
            a(this.s);
        }
    }


    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        this.o = 1;
        this.p = true;
        if (this.d != null) {
            this.d.i();
        }
        this.b.setVisibility(4);
        this.b.a(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public final class g extends vn<BiliSearchResultAllNew> {
        public g() {
        }

        @Override // bl.vm
        public boolean isCancel() {
            return afi.this.d == null;
        }

        @Override // bl.vm
        public void onError(Throwable th) {
            SearchKeyboardView h;
            bbi.b(th, "t");
            if (afi.this.d == null) {
                return;
            }
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                afi.this.q = false;
                afi.this.b.setVisibility(4);
                afi.this.a.setRefreshError(false);
                if (searchActivity.h() != null) {
                    searchActivity.i().setFocusable(false);
                    if (searchActivity.j() && (h = searchActivity.h()) != null) {
                        h.j(37);
                    }
                }
                searchActivity.a(false);
            }
        }

        @Override // bl.vn
        public void a(BiliSearchResultAllNew biliSearchResultAllNew) {
            SearchKeyboardView h;
            LogUtil.json(afi.t, biliSearchResultAllNew);
            if (afi.this.d == null || biliSearchResultAllNew == null || !afi.this.isVisible()) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (biliSearchResultAllNew.isEmpty()) {
                    if (searchActivity.h() != null) {
                        if (afi.this.o == 1) {
                            afi.this.b.setVisibility(4);
                            afi.this.a.c();
                        }
                        if (searchActivity.j() && (h = searchActivity.h()) != null) {
                            h.j(37);
                        }
                        searchActivity.i().setFocusable(false);
                    }
                    afi.this.p = false;
                    return;
                }
                searchActivity.a(false);
                afi.this.a.b();
                if (afi.this.b.getVisibility() == 4) {
                    afi.this.b.setVisibility(0);
                }
                if ((afi.this.s == 13 || afi.this.s == 0) && biliSearchResultAllNew.items.season != null && !biliSearchResultAllNew.items.season.isEmpty()) {
                    ArrayList<BiliSearchResultNew.Bangumi> arrayList = biliSearchResultAllNew.items.season;
                    bbi.a((Object) arrayList, "response.items.season");
                    afi.this.d.a(arrayList);
                }
                if (biliSearchResultAllNew.items.archive != null && !biliSearchResultAllNew.items.archive.isEmpty()) {
                    ArrayList<BiliSearchResultNew.Video> arrayList2 = biliSearchResultAllNew.items.archive;
                    bbi.a((Object) arrayList2, "response.items.archive");
                    afi.this.d.b(arrayList2);
                }
                RecyclerView recyclerView4 = afi.this.b;
                if (recyclerView4 != null) {
                    recyclerView4.postDelayed(new a(), 300L);
                }
                ok.a("tv_search_result", "keyword", afi.this.r);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: BL */
        /* loaded from: classes.dex */
        public final class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                adn.a(afi.this.b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public final class h extends vn<BiliSearchResultPgc> {
        public h() {
        }

        @Override // bl.vm
        public boolean isCancel() {
            return afi.this.d == null;
        }

        @Override // bl.vn
        public void a(BiliSearchResultPgc response) {
            SearchKeyboardView h;
            if (afi.this.d == null || response == null || !afi.this.isVisible()) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (response.isEmpty()) {
                    if (searchActivity.h() != null) {
                        if (afi.this.o == 1) {
                            afi.this.b.setVisibility(View.INVISIBLE);
                            afi.this.a.c();
                        }
                        if (searchActivity.j() && (h = searchActivity.h()) != null) {
                            h.j(37);
                        }
                        searchActivity.i().setFocusable(false);
                    }
                    afi.this.p = false;
                    return;
                }
                if(response.items.size()<20)afi.this.p = false;
                searchActivity.a(false);
                afi.this.a.b();
                if (afi.this.b.getVisibility() == View.INVISIBLE) {
                    afi.this.b.setVisibility(View.VISIBLE);
                }
                if (response.items != null) {
                    ArrayList<BiliSearchResultNew.Bangumi> arrayList = response.items;
                    bbi.a((Object) arrayList, "response.items");
                    afi.this.d.a(arrayList);
                }
            }
        }

        @Override // bl.vm
        public void onError(Throwable th) {
            SearchKeyboardView h;
            bbi.b(th, "t");
            if (afi.this.d == null) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (searchActivity.h() != null) {
                    searchActivity.i().setFocusable(false);
                    if (afi.this.o == 1) {
                        afi.this.b.setVisibility(4);
                        afi.this.a.setRefreshError(false);
                    }
                    if (searchActivity.j() && (h = searchActivity.h()) != null) {
                        h.j(37);
                    }
                }
                searchActivity.a(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public final class i extends vn<List<BiliSearchResultUper>> {
        @Override // bl.vm
        public boolean isCancel() {
            return afi.this.d == null;
        }

        @Override // bl.vn
        public void a(List<BiliSearchResultUper> list) {
            SearchKeyboardView h;
            if (afi.this.d == null || list == null || !afi.this.isVisible()) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (list.isEmpty()) {
                    if (searchActivity.h() != null) {
                        if (afi.this.o == 1) {
                            afi.this.b.setVisibility(4);
                            afi.this.a.c();
                        }
                        if (searchActivity.j() && (h = searchActivity.h()) != null) {
                            h.j(37);
                        }
                        searchActivity.i().setFocusable(false);
                    }
                    afi.this.p = false;
                    return;
                }
                searchActivity.a(false);
                afi.this.a.b();
                if (afi.this.b.getVisibility() == 4) {
                    afi.this.b.setVisibility(0);
                }
                if (!list.isEmpty()) {
                    afi.this.d.c(list);
                }
            }
        }

        @Override // bl.vm
        public void onError(Throwable th) {
            SearchKeyboardView h;
            bbi.b(th, "t");
            if (afi.this.d == null) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (searchActivity.h() != null) {
                    searchActivity.i().setFocusable(false);
                    if (afi.this.o == 1) {
                        afi.this.b.setVisibility(4);
                        afi.this.a.setRefreshError(false);
                    }
                    if (searchActivity.j() && (h = searchActivity.h()) != null) {
                        h.j(37);
                    }
                }
                searchActivity.a(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public final class j extends vn<BiliSearchResultAllNew> {
        public j() {
        }

        @Override // bl.vm
        public boolean isCancel() {
            return afi.this.d == null;
        }

        @Override // bl.vn
        public void a(BiliSearchResultAllNew response) {
            SearchKeyboardView h;
            if (afi.this.d == null || response == null || !afi.this.isVisible()) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (response.isArchiveEmpty()) {
                    if (searchActivity.h() != null) {
                        if (afi.this.o == 1) {
                            afi.this.b.setVisibility(4);
                            afi.this.a.c();
                        }
                        if (searchActivity.j() && (h = searchActivity.h()) != null) {
                            h.j(37);
                        }
                        searchActivity.i().setFocusable(false);
                    }
                    afi.this.p = false;
                    return;
                }
                searchActivity.a(false);
                afi.this.a.b();
                if (afi.this.b.getVisibility() == 4) {
                    afi.this.b.setVisibility(0);
                }
                boolean z = afi.this.s == 13 || afi.this.s == 0;
                if (response.items.archive != null) {
                    ArrayList<BiliSearchResultNew.Video> arrayList = response.items.archive;
                    bbi.a((Object) arrayList, "response.items.archive");
                    afi.this.d.a(arrayList, z);
                }
            }
        }

        @Override // bl.vm
        public void onError(Throwable th) {
            SearchKeyboardView h;
            bbi.b(th, "t");
            if (afi.this.d == null) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (searchActivity.h() != null) {
                    searchActivity.i().setFocusable(false);
                    if (afi.this.o == 1) {
                        afi.this.b.setVisibility(4);
                        afi.this.a.setRefreshError(false);
                    }
                    if (searchActivity.j() && (h = searchActivity.h()) != null) {
                        h.j(37);
                    }
                }
                searchActivity.a(false);
            }
        }
    }


    public final class SearchVideoResponse extends vn<JSONObject> {

        @Override
        public boolean isCancel() {
            return afi.this.d == null;
        }

        @Override
        public void a(JSONObject response) {
            android.util.Log.d("SearchFragment", "SearchVideoResponse.a() called");
            android.util.Log.d("SearchFragment", "SearchVideoResponse.a(), response=" + (response != null ? response.toJSONString().substring(0, Math.min(500, response.toJSONString().length())) : "null"));
            LogUtil.json(afi.t + "_SearchVideo", response);
            SearchKeyboardView h;
            JSONObject result = response.getJSONObject("data");
            android.util.Log.d("SearchFragment", "SearchVideoResponse.a(), result from data=" + (result != null ? "not null, size=" + result.size() : "null"));
            if (result == null) {
                android.util.Log.w("SearchFragment", "SearchVideoResponse.a(), data field is null, trying to use root as data");
                result = response;
            }
            android.util.Log.d("SearchFragment", "SearchVideoResponse.a(), result keys=" + (result != null ? result.keySet() : "null"));
            JSONArray archives = result.getJSONArray("result");
            android.util.Log.d("SearchFragment", "SearchVideoResponse.a(), archives=" + (archives != null ? archives.size() : "null") + ", isVisible=" + afi.this.isVisible() + ", d=" + (afi.this.d != null));
            if (afi.this.d == null || archives == null || !afi.this.isVisible()) {
                android.util.Log.e("SearchFragment", "SearchVideoResponse.a(), early return: d=" + (afi.this.d != null) + ", archives=" + (archives != null) + ", isVisible=" + afi.this.isVisible());
                return;
            }
            afi.this.q = false;
            android.util.Log.d("SearchFragment", "SearchVideoResponse.a(), q set to false");
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (archives.isEmpty()) {
                    if (searchActivity.h() != null) {
                        if (afi.this.o == 1) {
                            afi.this.b.setVisibility(4);
                            afi.this.a.c();
                        }
                        if (searchActivity.j() && (h = searchActivity.h()) != null) {
                            h.j(37);
                        }
                        searchActivity.i().setFocusable(false);
                    }
                    afi.this.p = false;
                    return;
                }
                searchActivity.a(false);
                afi.this.a.b();
                if (afi.this.b.getVisibility() == 4) {
                    afi.this.b.setVisibility(0);
                }
                ArrayList<BiliSearchResultNew.Video> videos = new ArrayList<>();
                for (int i = 0; i < archives.size(); i++) {
                    JSONObject item = archives.getJSONObject(i);
                    BiliSearchResultNew.Video video = new BiliSearchResultNew.Video();
                    String title = item.getString("title");
                    video.title = android.text.Html.fromHtml(title).toString();
                    video.author = item.getString("author");
                    video.play = String.valueOf(item.getInteger("play"));
                    video.danmaku = String.valueOf(item.getInteger("video_review"));
                    video.cover = item.getString("pic");
                    video.param = String.valueOf(item.getLong("aid"));
                    if (item.containsKey("pubdate")) {
                        long pubdate = item.getLong("pubdate");
                        video.pubdateFormatted = com.bilibili.tv.util.DateHelper.formatDate(pubdate);
                    }
                    videos.add(video);
                }
                if (!videos.isEmpty()) {
                    afi.this.d.b(videos);
                }
            }
        }

        @Override
        public void onError(Throwable th) {
            android.util.Log.e("SearchFragment", "SearchVideo onError: " + th.getMessage());
            SearchKeyboardView h;
            bbi.b(th, "t");
            if (afi.this.d == null) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                Toast.makeText(searchActivity, "搜索失败: " + th.getMessage(), Toast.LENGTH_SHORT).show();
                if (searchActivity.h() != null) {
                    searchActivity.i().setFocusable(false);
                    if (afi.this.o == 1) {
                        afi.this.b.setVisibility(4);
                        afi.this.a.setRefreshError(false);
                    }
                    if (searchActivity.j() && (h = searchActivity.h()) != null) {
                        h.j(37);
                    }
                }
                searchActivity.a(false);
            }
        }
    }


    public final class SearchBangumiResponse extends vn<JSONObject> {

        @Override
        public boolean isCancel() {
            return afi.this.d == null;
        }

        @Override
        public void a(JSONObject response) {
            LogUtil.json(afi.t + "_SearchBangumi", response);
            SearchKeyboardView h;
            JSONObject result = response.getJSONObject("data");
            if (result == null) {
                return;
            }
            JSONArray seasons = result.getJSONArray("result");
            if (afi.this.d == null || seasons == null || !afi.this.isVisible()) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (seasons.isEmpty()) {
                    if (searchActivity.h() != null) {
                        if (afi.this.o == 1) {
                            afi.this.b.setVisibility(4);
                            afi.this.a.c();
                        }
                        if (searchActivity.j() && (h = searchActivity.h()) != null) {
                            h.j(37);
                        }
                        searchActivity.i().setFocusable(false);
                    }
                    afi.this.p = false;
                    return;
                }
                searchActivity.a(false);
                afi.this.a.b();
                if (afi.this.b.getVisibility() == 4) {
                    afi.this.b.setVisibility(0);
                }
                ArrayList<BiliSearchResultNew.Bangumi> bangumis = new ArrayList<>();
                for (int i = 0; i < seasons.size(); i++) {
                    JSONObject item = seasons.getJSONObject(i);
                    BiliSearchResultNew.Bangumi bangumi = new BiliSearchResultNew.Bangumi();
                    String title = item.getString("title");
                    bangumi.title = android.text.Html.fromHtml(title).toString();
                    bangumi.cover = item.getString("cover");
                    bangumi.param = String.valueOf(item.getLong("season_id"));
                    if (item.containsKey("index_show")) {
                        bangumi.indexShow = item.getString("index_show");
                    }
                    if (item.containsKey("season_type_name")) {
                        bangumi.seasonTypeName = item.getString("season_type_name");
                    }
                    if (item.containsKey("areas")) {
                        bangumi.areas = item.getString("areas");
                    }
                    bangumis.add(bangumi);
                }
                if (!bangumis.isEmpty()) {
                    afi.this.d.a(bangumis);
                }
            }
        }

        @Override
        public void onError(Throwable th) {
            SearchKeyboardView h;
            bbi.b(th, "t");
            if (afi.this.d == null) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (searchActivity.h() != null) {
                    searchActivity.i().setFocusable(false);
                    if (afi.this.o == 1) {
                        afi.this.b.setVisibility(4);
                        afi.this.a.setRefreshError(false);
                    }
                    if (searchActivity.j() && (h = searchActivity.h()) != null) {
                        h.j(37);
                    }
                }
                searchActivity.a(false);
            }
        }
    }


    public final class SearchMediaFtResponse extends vn<JSONObject> {

        @Override
        public boolean isCancel() {
            return afi.this.d == null;
        }

        @Override
        public void a(JSONObject response) {
            LogUtil.json(afi.t + "_SearchMediaFt", response);
            SearchKeyboardView h;
            JSONObject result = response.getJSONObject("data");
            if (result == null) {
                return;
            }
            JSONArray movies = result.getJSONArray("result");
            if (afi.this.d == null || movies == null || !afi.this.isVisible()) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (movies.isEmpty()) {
                    if (searchActivity.h() != null) {
                        if (afi.this.o == 1) {
                            afi.this.b.setVisibility(4);
                            afi.this.a.c();
                        }
                        if (searchActivity.j() && (h = searchActivity.h()) != null) {
                            h.j(37);
                        }
                        searchActivity.i().setFocusable(false);
                    }
                    afi.this.p = false;
                    return;
                }
                searchActivity.a(false);
                afi.this.a.b();
                if (afi.this.b.getVisibility() == 4) {
                    afi.this.b.setVisibility(0);
                }
                ArrayList<BiliSearchResultNew.Bangumi> mediaList = new ArrayList<>();
                for (int i = 0; i < movies.size(); i++) {
                    JSONObject item = movies.getJSONObject(i);
                    BiliSearchResultNew.Bangumi media = new BiliSearchResultNew.Bangumi();
                    String title = item.getString("title");
                    media.title = android.text.Html.fromHtml(title).toString();
                    media.cover = item.getString("cover");
                    media.param = String.valueOf(item.getLong("season_id"));
                    if (item.containsKey("index_show")) {
                        media.indexShow = item.getString("index_show");
                    }
                    if (item.containsKey("season_type_name")) {
                        media.seasonTypeName = item.getString("season_type_name");
                    }
                    if (item.containsKey("areas")) {
                        media.areas = item.getString("areas");
                    }
                    if (item.containsKey("styles")) {
                        String styles = item.getString("styles");
                        if (media.indexShow != null && styles != null) {
                            media.indexShow = media.indexShow + " | " + styles;
                        } else if (styles != null) {
                            media.indexShow = styles;
                        }
                    }
                    mediaList.add(media);
                }
                if (!mediaList.isEmpty()) {
                    afi.this.d.a(mediaList);
                }
            }
        }

        @Override
        public void onError(Throwable th) {
            android.util.Log.e("SearchFragment", "SearchMediaFt onError: " + th.getMessage());
            SearchKeyboardView h;
            bbi.b(th, "t");
            if (afi.this.d == null) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                Toast.makeText(searchActivity, "搜索失败: " + th.getMessage(), Toast.LENGTH_SHORT).show();
                if (searchActivity.h() != null) {
                    searchActivity.i().setFocusable(false);
                    if (afi.this.o == 1) {
                        afi.this.b.setVisibility(4);
                        afi.this.a.setRefreshError(false);
                    }
                    if (searchActivity.j() && (h = searchActivity.h()) != null) {
                        h.j(37);
                    }
                }
                searchActivity.a(false);
            }
        }
    }


    public final class SearchLiveRoomResponse extends vn<JSONObject> {

        @Override
        public boolean isCancel() {
            return afi.this.d == null;
        }

        @Override
        public void a(JSONObject response) {
            LogUtil.json(afi.t + "_SearchLiveRoom", response);
            SearchKeyboardView h;
            JSONObject result = response.getJSONObject("data");
            if (result == null) {
                return;
            }
            JSONArray liveRooms = result.getJSONArray("result");
            if (afi.this.d == null || liveRooms == null || !afi.this.isVisible()) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (liveRooms.isEmpty()) {
                    if (searchActivity.h() != null) {
                        if (afi.this.o == 1) {
                            afi.this.b.setVisibility(4);
                            afi.this.a.c();
                        }
                        if (searchActivity.j() && (h = searchActivity.h()) != null) {
                            h.j(37);
                        }
                        searchActivity.i().setFocusable(false);
                    }
                    afi.this.p = false;
                    return;
                }
                searchActivity.a(false);
                afi.this.a.b();
                if (afi.this.b.getVisibility() == 4) {
                    afi.this.b.setVisibility(0);
                }
                List<BiliLiveContent> rooms = new ArrayList<>(JSON.parseArray(liveRooms.toString(), BiliLiveContentEx2.class));
                if (!rooms.isEmpty()) {
                    afi.this.d.addRooms(rooms);
                }
            }
        }

        @Override
        public void onError(Throwable th) {
            android.util.Log.e("SearchFragment", "SearchLiveRoom onError: " + th.getMessage());
            SearchKeyboardView h;
            bbi.b(th, "t");
            if (afi.this.d == null) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                Toast.makeText(searchActivity, "搜索失败: " + th.getMessage(), Toast.LENGTH_SHORT).show();
                if (searchActivity.h() != null) {
                    searchActivity.i().setFocusable(false);
                    if (afi.this.o == 1) {
                        afi.this.b.setVisibility(4);
                        afi.this.a.setRefreshError(false);
                    }
                    if (searchActivity.j() && (h = searchActivity.h()) != null) {
                        h.j(37);
                    }
                }
                searchActivity.a(false);
            }
        }
    }

    public final class SearchUserResponse extends vn<JSONObject> {

        @Override
        public boolean isCancel() {
            return afi.this.d == null;
        }

        @Override
        public void a(JSONObject response) {
            LogUtil.json(afi.t + "_SearchUser", response);
            SearchKeyboardView h;
            JSONObject result = response.getJSONObject("data");
            if (result == null) {
                return;
            }
            JSONArray users = result.getJSONArray("result");
            if (afi.this.d == null || users == null || !afi.this.isVisible()) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (users.isEmpty()) {
                    if (searchActivity.h() != null) {
                        if (afi.this.o == 1) {
                            afi.this.b.setVisibility(4);
                            afi.this.a.c();
                        }
                        if (searchActivity.j() && (h = searchActivity.h()) != null) {
                            h.j(37);
                        }
                        searchActivity.i().setFocusable(false);
                    }
                    afi.this.p = false;
                    return;
                }
                searchActivity.a(false);
                afi.this.a.b();
                if (afi.this.b.getVisibility() == 4) {
                    afi.this.b.setVisibility(0);
                }
                ArrayList<BiliSearchResultUper> upers = new ArrayList<>();
                for (int i = 0; i < users.size(); i++) {
                    JSONObject item = users.getJSONObject(i);
                    BiliSearchResultUper uper = new BiliSearchResultUper();
                    uper.uname = item.getString("uname");
                    uper.upic = item.getString("upic");
                    uper.usign = item.getString("usign");
                    uper.mid = item.getLong("mid");
                    uper.fans = item.getIntValue("fans");
                    uper.videos = item.getIntValue("videos");
                    upers.add(uper);
                }
                if (!upers.isEmpty()) {
                    afi.this.d.c(upers);
                }
            }
        }

        @Override
        public void onError(Throwable th) {
            SearchKeyboardView h;
            bbi.b(th, "t");
            if (afi.this.d == null) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                Toast.makeText(searchActivity, "搜索失败: " + th.getMessage(), Toast.LENGTH_SHORT).show();
                if (searchActivity.h() != null) {
                    searchActivity.i().setFocusable(false);
                    if (afi.this.o == 1) {
                        afi.this.b.setVisibility(4);
                        afi.this.a.setRefreshError(false);
                    }
                    if (searchActivity.j() && (h = searchActivity.h()) != null) {
                        h.j(37);
                    }
                }
                searchActivity.a(false);
            }
        }
    }


    public final class OldSearchLiveResponse extends vn<JSONObject> {

        @Override
        public boolean isCancel() {
            return afi.this.d == null;
        }

        @Override
        public void a(JSONObject response) {
            SearchKeyboardView h;
            List<BiliLiveContent> rooms = new ArrayList<BiliLiveContent>(JSON.parseArray(response.getJSONObject("result").getJSONArray("live_room").toString(), BiliLiveContentEx2.class));
    
            if (afi.this.d == null || rooms == null || !afi.this.isVisible()) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                if (rooms.isEmpty()) {
                    if (searchActivity.h() != null) {
                        if (afi.this.o == 1) {
                            afi.this.b.setVisibility(4);
                            afi.this.a.c();
                        }
                        if (searchActivity.j() && (h = searchActivity.h()) != null) {
                            h.j(37);
                        }
                        searchActivity.i().setFocusable(false);
                    }
                    afi.this.p = false;
                    return;
                }
                searchActivity.a(false);
                afi.this.a.b();
                if (afi.this.b.getVisibility() == 4) {
                    afi.this.b.setVisibility(0);
                }
                if (!rooms.isEmpty()) {
                    afi.this.d.addRooms(rooms);
                }
            }
        }

        @Override // bl.vm
        public void onError(Throwable th) {
            android.util.Log.e("SearchFragment", "OldSearchLive onError: " + th.getMessage());
            SearchKeyboardView h;
            bbi.b(th, "t");
            if (afi.this.d == null) {
                return;
            }
            afi.this.q = false;
            FragmentActivity activity = afi.this.getActivity();
            if (!(activity instanceof SearchActivity)) {
                activity = null;
            }
            SearchActivity searchActivity = (SearchActivity) activity;
            if (searchActivity != null) {
                Toast.makeText(searchActivity, "搜索失败: " + th.getMessage(), Toast.LENGTH_SHORT).show();
                if (searchActivity.h() != null) {
                    searchActivity.i().setFocusable(false);
                    if (afi.this.o == 1) {
                        afi.this.b.setVisibility(4);
                        afi.this.a.setRefreshError(false);
                    }
                    if (searchActivity.j() && (h = searchActivity.h()) != null) {
                        h.j(37);
                    }
                }
                searchActivity.a(false);
            }
        }
    }


    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class f extends adc<adc.a> {
        public static final a Companion = new a(null);
        private afi.b a;
        private n b;
        private k c;
        private kk cc;
        private boolean d = true;
        private final ArrayList<BiliSearchResultNew.Bangumi> e = new ArrayList<>();

        public final void c(boolean z) {
            this.d = z;
        }

        public final ArrayList<BiliSearchResultNew.Bangumi> h() {
            return this.e;
        }

        /* compiled from: BL */
        /* loaded from: classes.dex */
        public static final class b extends adc.a {
            final /* synthetic */ ViewGroup n;

            @Override // bl.adc.a
            public void b(Object obj) {
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(ViewGroup viewGroup, View view) {
                super(view);
                this.n = viewGroup;
            }
        }

        @Override // android.support.v7.widget.RecyclerView.a
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public adc.a a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            switch (i) {
                case 1:
                    return ((m)null).Companion.a(viewGroup);
                case 2:
                    return ((afi.a)null).Companion.a(viewGroup);
                case 3:
                    return ((l)null).Companion.a(viewGroup);
                case 4:
                    return ((LiveRoomView)null).Companion.a(viewGroup);
                default:
                    return new b(viewGroup, new View(viewGroup.getContext()));
            }
        }

        @Override // android.support.v7.widget.RecyclerView.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void c(adc.a aVar) {
            bbi.b(aVar, "holder");
            super.c(aVar);
            if (this.d && aVar.f() == 0) {
                aVar.a.post(new c(aVar));
                this.d = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: BL */
        /* loaded from: classes.dex */
        public static final class c implements Runnable {
            final /* synthetic */ adc.a a;

            c(adc.a aVar) {
                this.a = aVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.a.a.requestFocus();
            }
        }

        public final void a(List<BiliSearchResultNew.Bangumi> list) {
            bbi.b(list, "list");
            this.e.clear();
            this.e.addAll(list);
            if (this.a == null) {
                this.a = new afi.b(list);
                a(this.a);
                e();
                return;
            }
            this.a.a(list);
            b(false);
        }

        public final void b(List<BiliSearchResultNew.Video> list) {
            bbi.b(list, "list");
            if (this.b == null) {
                this.b = new n(list);
            }
            a(this.b);
            e();
        }

        public final void c(List<BiliSearchResultUper> list) {
            bbi.b(list, "list");
            if (this.c == null) {
                this.c = new k(baf.b((Collection) list));
                a(this.c);
                e();
                return;
            }
            this.c.a(list);
            b(false);
        }

        public final void a(List<BiliSearchResultNew.Video> list, boolean z) {
            bbi.b(list, "list");
            if (this.b == null) {
                if (z && this.e.size() > 0) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(this.e);
                    this.a = new afi.b(arrayList);
                    a(this.a);
                }
                this.b = new n(list);
                a(this.b);
                e();
                return;
            }
            this.b.a(list);
            b(false);
        }

        public final void addRooms(List<BiliLiveContent> list) {
            bbi.b(list, "list");
            if (this.cc == null) {
                this.cc = new kk(baf.b((Collection) list));
                a(this.cc);
                e();
                return;
            }
            this.cc.a(list);
            b(false);
        }

        public final void i() {
            g();
            b(this.a);
            b(this.b);
            b(this.c);
            if (this.a != null) {
                this.a.b().clear();
                this.a = (afi.b) null;
            }
            if (this.b != null) {
                this.b.b().clear();
                this.b = (n) null;
            }
            if (this.c != null) {
                this.c.b().clear();
                this.c = (k) null;
            }
            if (this.cc != null) {
                this.cc.b().clear();
                this.cc = (kk) null;
            }
        }

        /* compiled from: BL */
        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(bbg bbgVar) {
                this();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class b extends adb {
        private ArrayList<BiliSearchResultNew.Bangumi> a;

        @Override // bl.ade
        public int c(int i) {return 2;}
        public b(List<BiliSearchResultNew.Bangumi> list) {this.a = (ArrayList) list;}
        public final ArrayList<BiliSearchResultNew.Bangumi> b() {return this.a;}

        @Override // bl.ade
        public Object b(int i) {
            BiliSearchResultNew.Bangumi bangumi = this.a.get(e(i));
            bbi.a((Object) bangumi, "mContents[offsetPosition]");
            return bangumi;
        }

        @Override // bl.ade
        public int a() {return this.a.size();}
        @Override // bl.adb, bl.ade
        public long a(int i) {return (c(i) << 32) + i;}
        public final void a(List<BiliSearchResultNew.Bangumi> list) {this.a.addAll(list);}
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class n extends adb {
        private List<BiliSearchResultNew.Video> a;

        @Override // bl.ade
        public int c(int i) {return 1;}
        public n(List<BiliSearchResultNew.Video> list) {this.a = list;}
        public final List<BiliSearchResultNew.Video> b() {return this.a;}

        @Override // bl.ade
        public Object b(int i) {
            int e = e(i);
            if (e < this.a.size() && e >= 0) {
                return this.a.get(e);
            }
            return null;
        }
        @Override // bl.ade
        public int a() {return this.a.size();}
        @Override // bl.adb, bl.ade
        public long a(int i) {return (c(i) << 32) + i;}
        public final void a(List<BiliSearchResultNew.Video> list) {this.a.addAll(list);}
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class k extends adb {
        private List<BiliSearchResultUper> a;

        @Override // bl.ade
        public int c(int i) {return 3;}
        public k(List<BiliSearchResultUper> list) {this.a = list;}
        public final List<BiliSearchResultUper> b() {return this.a;}

        @Override // bl.ade
        public Object b(int i) {
            int e = e(i);
            if (e < this.a.size() && e >= 0) {
                return this.a.get(e);
            }
            return null;
        }

        @Override // bl.ade
        public int a() {return this.a.size();}
        @Override // bl.adb, bl.ade
        public long a(int i) {return (c(i) << 32) + i;}
        public final void a(List<BiliSearchResultUper> list) {this.a.addAll(list);}
    }


    public static final class kk extends adb {
        private List<BiliLiveContent> a;

        @Override // bl.ade
        public int c(int i) {return 4;}
        public kk(List<BiliLiveContent> list) {this.a = list;}
        public final List<BiliLiveContent> b() {return this.a;}

        @Override // bl.ade
        public Object b(int i) {
            int e = e(i);
            if (e < this.a.size() && e >= 0) {
                return this.a.get(e);
            }
            return null;
        }

        @Override // bl.ade
        public int a() {return this.a.size();}
        @Override // bl.adb, bl.ade
        public long a(int i) {return (c(i) << 32) + i;}
        public final void a(List<BiliLiveContent> list) {this.a.addAll(list);}
    }


    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class m extends adc.a implements View.OnClickListener, View.OnFocusChangeListener {
        public static final a Companion = new a(null);
        private ScalableImageView n;
        private TextView o;
        private TextView p;
        private TextView q;
        private TextView r;
        private TextView u;
        private final DrawRelativeLayout s;
        private final RecyclerView t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(View itemView, ViewGroup parent) {
            super(itemView);
            bbi.b(itemView, "itemView");
            bbi.b(parent, "parent");
            this.n = (ScalableImageView) a(itemView, R.id.img);
            this.o = (TextView) a(itemView, R.id.title);
            this.p = (TextView) a(itemView, R.id.up);
            this.q = (TextView) a(itemView, R.id.play);
            this.r = (TextView) a(itemView, R.id.danmaku);
            this.u = (TextView) a(itemView, R.id.pubdate);
            this.s = (DrawRelativeLayout) itemView;
            this.t = (RecyclerView) parent;
            this.s.setUpDrawable(R.drawable.shadow_white_rect);
            Drawable c = adl.a.c(R.drawable.ic_video_info_up);
            Drawable c2 = adl.a.c(R.drawable.ic_video_info_play);
            Drawable c3 = adl.a.c(R.drawable.ic_video_info_danmaku);
            int b = adl.b(R.dimen.px_34);
            c.setBounds(0, 0, b, b);
            c2.setBounds(0, 0, b, b);
            c3.setBounds(0, 0, b, b);
            int d = adl.d(R.color.white_50);
            c.setColorFilter(d, PorterDuff.Mode.MULTIPLY);
            c2.setColorFilter(d, PorterDuff.Mode.MULTIPLY);
            c3.setColorFilter(d, PorterDuff.Mode.MULTIPLY);
            this.p.setCompoundDrawables(c, null, null, null);
            this.q.setCompoundDrawables(c2, null, null, null);
            this.r.setCompoundDrawables(c3, null, null, null);
            Object context = itemView.getContext();
            if (context instanceof View.OnLongClickListener) {
                itemView.setOnLongClickListener((View.OnLongClickListener) context);
            }
            itemView.setOnClickListener(this);
            itemView.setOnFocusChangeListener(this);
        }

        @Override // bl.adc.a
        public void b(Object obj) {
            if (obj instanceof BiliSearchResultNew.Video) {
                BiliSearchResultNew.Video video = (BiliSearchResultNew.Video) obj;
                if (video.title != null) {
                    this.o.setText(video.title);
                }
                if (video.author != null) {
                    this.p.setText(video.author);
                }
                if (video.play != null) {
                    this.q.setText(adh.a(video.play));
                }
                if (video.danmaku != null) {
                    this.r.setText(adh.a(video.danmaku));
                }
                if (video.cover != null) {
                    String coverUrl = video.cover;
                    if (!coverUrl.startsWith("http")) {
                        coverUrl = "https:" + coverUrl;
                    }
                    String processedUrl = abd.get_thumb_url_c(MainApplication.a(), coverUrl);
                    android.util.Log.i("SearchFragment", "Video binding cover: " + video.cover + " -> " + processedUrl);
                    nv.a().a(processedUrl, this.n);
                } else {
                    android.util.Log.w("SearchFragment", "Video cover is null");
                }
                if (video.pubdateFormatted != null) {
                    this.u.setText(video.pubdateFormatted);
                    android.util.Log.d("SearchFragment", "Video pubdate: " + video.pubdateFormatted);
                }
                View itemView = this.a;
                bbi.a((Object) itemView, "itemView");
                itemView.setTag(obj);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            bbi.b(view, "v");
            Object tag = view.getTag();
            Context context = view.getContext();
            bbi.a((Object) context, "v.context");
            Activity a2 = adl.a(context);
            if (!(tag instanceof BiliSearchResultNew.Video) || a2 == null) {
                return;
            }
            ok.a("tv_search_result_click", "row", String.valueOf(this.t.g(view)));
            VideoDetailActivity.a aVar = VideoDetailActivity.Companion;
            Activity activity = a2;
            Long valueOf = Long.valueOf(((BiliSearchResultNew.Video) tag).param);
            a2.startActivity(aVar.a((Context) activity, valueOf.longValue()));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View v, boolean z) {
            bbi.b(v, "v");
            if (v instanceof afz) {
                ((afz) v).setUpEnabled(z);
            }
        }

        /* compiled from: BL */
        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(bbg bbgVar) {
                this();
            }

            public final m a(ViewGroup parent) {
                bbi.b(parent, "parent");
                View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_item_video_info, parent, false);
                bbi.a((Object) view, "view");
                return new m(view, parent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class a extends adc.a implements View.OnClickListener, View.OnFocusChangeListener {
        public static final C0010a Companion = new C0010a(null);
        private ScalableImageView n;
        private TextView o;
        private TextView p;
        private TextView q;
        private TextView r;
        private DrawRelativeLayout s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (ScalableImageView) a(view, R.id.img);
            this.o = (TextView) a(view, R.id.title);
            this.p = (TextView) a(view, R.id.type);
            this.q = (TextView) a(view, R.id.num);
            this.r = (TextView) a(view, R.id.count);
            this.s = (DrawRelativeLayout) view;
            this.s.setUpDrawable(R.drawable.shadow_white_rect);
            Object context = view.getContext();
            if (context instanceof View.OnLongClickListener) {
                view.setOnLongClickListener((View.OnLongClickListener) context);
            }
            view.setOnClickListener(this);
            view.setOnFocusChangeListener(this);
        }

        @Override // bl.adc.a
        public void b(Object obj) {
            if (obj instanceof BiliSearchResultNew.Bangumi) {
                BiliSearchResultNew.Bangumi bangumi = (BiliSearchResultNew.Bangumi) obj;
                if (bangumi.title != null) {
                    this.o.setText(bangumi.title);
                }
                String typeText = bangumi.indexShow != null ? bangumi.indexShow : (ads.a(bangumi.seasonType) + " | " + bangumi.area);
                this.p.setText(typeText);
                android.util.Log.d("SearchFragment", "Bangumi indexShow: " + bangumi.indexShow + ", seasonTypeName: " + bangumi.seasonTypeName + ", areas: " + bangumi.areas);
                String numText = bangumi.seasonTypeName != null ? bangumi.seasonTypeName : "";
                this.q.setText(numText);
                String countText = bangumi.areas != null ? bangumi.areas : "";
                this.r.setText(countText);
                if (bangumi.cover != null) {
                    String coverUrl = bangumi.cover;
                    if (!coverUrl.startsWith("http")) {
                        coverUrl = "https:" + coverUrl;
                    }
                    nv.a().a(abd.get_thumb_url_b(MainApplication.a(), coverUrl), this.n);
                }
                View view = this.a;
                bbi.a((Object) view, "itemView");
                view.setTag(obj);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            bbi.b(view, "v");
            Object tag = view.getTag();
            Context context = view.getContext();
            bbi.a((Object) context, "v.context");
            Activity a = adl.a(context);
            if (!(tag instanceof BiliSearchResultNew.Bangumi) || a == null) {
                return;
            }
            a.startActivity(BangumiDetailActivity.Companion.a(a, String.valueOf(((BiliSearchResultNew.Bangumi) tag).param)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            bbi.b(view, "v");
            if (view instanceof afz) {
                ((afz) view).setUpEnabled(z);
            }
        }

        /* compiled from: BL */
        /* renamed from: bl.afi$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0010a {
            private C0010a() {
            }

            public /* synthetic */ C0010a(bbg bbgVar) {
                this();
            }

            public final a a(ViewGroup viewGroup) {
                bbi.b(viewGroup, "parent");
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_search_bangumi_info, viewGroup, false);
                bbi.a((Object) inflate, "view");
                return new a(inflate);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class l extends adc.a implements View.OnClickListener, View.OnFocusChangeListener {
        public static final a Companion = new a(null);
        private ScalableImageView n;
        private TextView o;
        private TextView p;
        private TextView q;
        private TextView r;
        private ImageView s;
        private DrawRelativeLayout t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (ScalableImageView) a(view, R.id.img);
            this.o = (TextView) a(view, R.id.title);
            this.p = (TextView) a(view, R.id.fans);
            this.q = (TextView) a(view, R.id.archives);
            this.r = (TextView) a(view, R.id.describe);
            this.s = (ImageView) a(view, R.id.up_verify);
            this.t = (DrawRelativeLayout) view;
            this.t.setUpDrawable(R.drawable.shadow_white_rect);
            Object context = view.getContext();
            if (context instanceof View.OnLongClickListener) {
                view.setOnLongClickListener((View.OnLongClickListener) context);
            }
            view.setOnClickListener(this);
            view.setOnFocusChangeListener(this);
        }

        @Override // bl.adc.a
        public void b(Object obj) {
            if (obj instanceof BiliSearchResultUper) {
                BiliSearchResultUper biliSearchResultUper = (BiliSearchResultUper) obj;
                if (biliSearchResultUper.uname != null) {
                    this.o.setText(biliSearchResultUper.uname);
                }
                if (biliSearchResultUper.fans > 0) {
                    this.p.setText(adh.a(biliSearchResultUper.fans) + "粉丝");
                }
                if (biliSearchResultUper.videos > 0) {
                    this.q.setText(biliSearchResultUper.videos + "个视频");
                }
                if (!TextUtils.isEmpty(biliSearchResultUper.upic)) {
                    String upicUrl = biliSearchResultUper.upic;
                    if (!upicUrl.startsWith("http")) {
                        upicUrl = "https:" + upicUrl;
                    }
                    nv.a().a(abd.get_thumb_url_b(MainApplication.a(), upicUrl), this.n);
                }
                this.s.setVisibility(8);
                View view = this.a;
                bbi.a((Object) view, "itemView");
                view.setTag(obj);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            bbi.b(view, "v");
            Object tag = view.getTag();
            Context context = view.getContext();
            bbi.a((Object) context, "v.context");
            Activity a2 = adl.a(context);
            if (!(tag instanceof BiliSearchResultUper) || a2 == null) {
                return;
            }
            BiliSearchResultUper obj = (BiliSearchResultUper) tag;
            AuthSpaceActivity.Companion.a(a2, obj.uname, obj.mid);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            bbi.b(view, "v");
            if (view instanceof afz) {
                ((afz) view).setUpEnabled(z);
            }
        }

        /* compiled from: BL */
        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(bbg bbgVar) {
                this();
            }

            public final l a(ViewGroup viewGroup) {
                bbi.b(viewGroup, "parent");
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_search_uper, viewGroup, false);
                bbi.a((Object) inflate, "view");
                return new l(inflate);
            }
        }
    }


    public static final class LiveRoomView extends adc.a implements View.OnClickListener, View.OnFocusChangeListener {
        public static final a Companion = new a(null);
        public ScalableImageView n;
        public TextView o;
        public TextView p;
        public TextView u;
        public DrawRelativeLayout q;
        private DrawRelativeLayout t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LiveRoomView(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (ScalableImageView) a(view, R.id.img);
            this.o = (TextView) a(view, R.id.title);
            this.p = (TextView) a(view, R.id.up);
            this.u = (TextView) a(view, R.id.pubdate);
            this.q = (DrawRelativeLayout) a(view, R.id.draw);
            this.t = (DrawRelativeLayout) view;
            this.t.setUpDrawable(R.drawable.shadow_white_rect);
            Drawable c = adl.a.c(R.drawable.ic_video_info_up);
            int b = adl.b(R.dimen.px_34);
            c.setBounds(0, 0, b, b);
            int d = adl.d(R.color.white_50);
            c.setColorFilter(d, PorterDuff.Mode.MULTIPLY);
            this.p.setCompoundDrawables(c, null, null, null);
            Object context = view.getContext();
            if (context instanceof View.OnLongClickListener) {
                view.setOnLongClickListener((View.OnLongClickListener) context);
            }
            view.setOnClickListener(this);
            view.setOnFocusChangeListener(this);
        }

        @Override // bl.adc.a
        public void b(Object obj) {
            if (obj instanceof BiliLiveContent) {
                BiliLiveContent biliLive = (BiliLiveContent) obj;
                if (biliLive.mTitle != null) {
                    this.o.setText(biliLive.mTitle);
                }
                if (biliLive.mUname != null) {
                    this.p.setText(biliLive.mUname);
                }
                if (biliLive.mOnline > 0) {
                    this.u.setText("在线人数 " + adh.a(biliLive.mOnline));
                }
                if (!TextUtils.isEmpty(biliLive.mCover)) {
                    String coverUrl = biliLive.mCover;
                    if (!coverUrl.startsWith("http")) {
                        coverUrl = "https:" + coverUrl;
                    }
                    nv.a().a(abd.get_thumb_url_c(MainApplication.a(), coverUrl), this.n);
                }
                if (this.n.getParent() instanceof ViewGroup) {
                    ViewGroup frameLayout = (ViewGroup) this.n.getParent();
                    for (int i = 0; i < frameLayout.getChildCount(); i++) {
                        View child = frameLayout.getChildAt(i);
                        if (child instanceof LinearLayout) {
                            LinearLayout ll = (LinearLayout) child;
                            if (ll.getChildCount() > 0 && ll.getChildAt(0) instanceof LinearLayout) {
                                ll.setVisibility(View.GONE);
                                break;
                            }
                        }
                    }
                }
                this.a.setTag(obj);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            Object tag = v.getTag();
            Activity a = adl.a(v.getContext());
            if (!(tag instanceof BiliLiveContent) || a == null) {
                return;
            }
            LivePlayerActivity.lives = new ArrayList<BiliLiveContent>();
            LivePlayerActivity.lives.add((BiliLiveContent) tag);
            LivePlayerActivity.live_index = 0;
            a.startActivity(LivePlayerActivity.a(a, (BiliLiveContent) tag));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View v, boolean z) {
            if (v instanceof afz) {
                ((afz) v).setUpEnabled(z);
            }
        }

        /* compiled from: BL */
        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(bbg bbgVar) {
                this();
            }

            public final LiveRoomView a(ViewGroup parent) {
                return new LiveRoomView(LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_item_video_info, parent, false));
            }
        }
    }


    private final List<CategoryMeta> p() {
        ArrayList arrayList = new ArrayList(5);
        arrayList.add(0, new CategoryMeta(0, "视频", 0));
        arrayList.add(1, new CategoryMeta(1, "番剧", 0));
        arrayList.add(2, new CategoryMeta(2, "影视", 0));
        arrayList.add(3, new CategoryMeta(3, "直播", 0));
        arrayList.add(4, new CategoryMeta(4, "用户", 0));
        return arrayList;
    }

    public final void a(int i2) {
        LogUtil.i(t, "a(int) called with i2=" + i2);
        if (i2 == 0) {
            searchVideo();
            return;
        }
        switch (i2) {
            case 1:
                searchBangumi();
                return;
            case 2:
                searchMediaFt();
                return;
            case 3:
                searchLiveRoom();
                return;
            case 4:
                searchUser();
                return;
            default:
                searchVideo();
                return;
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class c extends RecyclerView.a<RecyclerView.v> implements View.OnFocusChangeListener, Runnable {
        private boolean a;
        private boolean b;
        private final WeakReference<afi> c;
        private long d;
        private int e;
        private final List<CategoryMeta> f;
        private final int g;

        /* JADX WARN: Multi-variable type inference failed */
        public c(afi afiVar, List<CategoryMeta> list, int i) {
            bbi.b(afiVar, "fragment");
            this.f = list;
            this.g = i;
            this.a = true;
            this.c = new WeakReference<>(afiVar);
        }

        public final void e(int i) {
            this.e = i;
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public RecyclerView.v a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            return ((d)null).Companion.a(viewGroup);
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public void a(RecyclerView.v vVar, int i) {
            bbi.b(vVar, "holder");
            d dVar = (d) vVar;
            String str = this.f.get(i).mTypeName;
            bbi.a((Object) str, "mCategoryMetas!![position].mTypeName");
            dVar.a(str);
            dVar.a.setTag(R.id.tag, Integer.valueOf(i));
            View view = dVar.a;
            bbi.a((Object) view, "categoryHolder.itemView");
            view.setOnFocusChangeListener(this);
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public int a() {
            List<CategoryMeta> list = this.f;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public void c(RecyclerView.v vVar) {
            bbi.b(vVar, "holder");
            if (this.a && vVar.f() == this.g) {
                this.b = false;
                this.e = this.g;
                vVar.a.post(new a(vVar));
                this.a = false;
            }
        }

        /* compiled from: BL */
        /* loaded from: classes.dex */
        static final class a implements Runnable {
            final /* synthetic */ RecyclerView.v a;

            a(RecyclerView.v vVar) {
                this.a = vVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (this.a.a instanceof TextView) {
                    View view = this.a.a;
                    bbi.a((Object) view, "holder.itemView");
                    view.setSelected(true);
                }
            }
        }

        public final void b(boolean z) {
            this.b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            LogUtil.i(t, "Category run() called");
            afi afiVar = this.c.get();
            if (afiVar != null) {
                CategoryMeta categoryMeta = this.f.get(this.e);
                LogUtil.i(t, "Category run, position=" + this.e + ", mTid=" + categoryMeta.mTid + ", mTypeName=" + categoryMeta.mTypeName);
                afiVar.s = categoryMeta.mTid;
                afiVar.o();
                afiVar.a(categoryMeta.mTid);
                ok.a("tv_search_index_category_click", "category_name", categoryMeta.mTypeName);
            }
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            bbi.b(view, "v");
            if (z) {
                Object tag = view.getTag(R.id.tag);
                int intValue = tag != null ? ((Integer) tag).intValue() : 0;
                afi afiVar = this.c.get();
                if (afiVar != null) {
                    bbi.a((Object) afiVar, "mWeakReference.get() ?: return");
                    if (intValue != this.e) {
                        View c = afiVar.g.c(this.e);
                        if (c != null) {
                            c.setSelected(false);
                        }
                    }
                    this.b = false;
                    view.setSelected(true);
                    if (intValue == a() - 1) {
                        ImageView c2 = afiVar.c();
                        if (c2 != null) {
                            c2.setVisibility(4);
                        }
                    } else {
                        ImageView c3 = afiVar.c();
                        if (c3 != null) {
                            c3.setVisibility(0);
                        }
                    }
                    if (this.e == intValue) {
                        return;
                    }
                    this.e = intValue;
                    afiVar.q = true;
                    if (System.currentTimeMillis() - this.d < 300) {
                        view.removeCallbacks(this);
                    }
                    view.postDelayed(this, 300L);
                    this.d = System.currentTimeMillis();
                    return;
                }
                return;
            }
            if (this.b) {
                if (!(view instanceof CategoryTextView)) {
                    view = null;
                }
                CategoryTextView categoryTextView = (CategoryTextView) view;
                if (categoryTextView != null) {
                    categoryTextView.d();
                    return;
                }
                return;
            }
            view.setSelected(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class d extends RecyclerView.v {
        public static final a Companion = new a(null);
        private TextView n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(View view) {
            super(view);
            bbi.b(view, "itemView");
        }

        public final void a(String str) {
            bbi.b(str, "category");
            View view = this.a;
            if (view == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.n = (TextView) view;
            this.n.setText(str);
            Object context = this.a.getContext();
            if (context instanceof View.OnLongClickListener) {
                this.a.setOnLongClickListener((View.OnLongClickListener) context);
            }
        }

        /* compiled from: BL */
        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(bbg bbgVar) {
                this();
            }

            public final d a(ViewGroup viewGroup) {
                bbi.b(viewGroup, "parent");
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_search_category, viewGroup, false);
                bbi.a((Object) inflate, "view");
                return new d(inflate);
            }
        }
    }
}