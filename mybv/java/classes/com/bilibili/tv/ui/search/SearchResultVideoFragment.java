package com.bilibili.tv.ui.search;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import bl.ach;
import bl.abd;
import bl.adl;
import bl.adv;
import bl.ady;
import bl.bbi;
import bl.vo;
import bl.nv;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.search.BiliSearchResultUper;
import com.bilibili.tv.ui.auth.AuthSpaceSideActivity;
import com.bilibili.tv.ui.bangumi.BangumiDetailActivity;
import com.bilibili.tv.ui.base.LoadingImageView;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.widget.DrawRelativeLayout;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import com.bilibili.tv.widget.side.SideRightGridLayoutManger;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;
import mybl.BiliLiveContent;
import mybl.BiliLiveContentEx2;
import mybl.LogUtil;
import mybl.WbiSigner;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import android.util.Log;

public final class SearchResultVideoFragment extends ady {
    public static final String ARG_KEYWORD = "arg_keyword";
    public static final String ARG_TID = "arg_tid";
    private static final String TAG = "SearchResultVideoFrag";
    private static final int PAGE_SIZE = 20;
    private static final int COLUMN_COUNT = 2;
    
    private VideoAdapter adapter;
    private boolean isLoading = false;
    private boolean hasMore = true;
    
    private String keyword;
    private int tid = 0;
    private int currentPage = 1;
    private String order = "";
    private String userOrder = "";
    private int userOrderSort = 0;
    public String liveOrder = "online";
    private String pubtimeBegin = "";
    private String pubtimeEnd = "";
    private String duration = "";
    private String dateType = "";
    
    private LinearLayout headerLayout;
    private TextView headerTitle;
    private TextView headerCount;
    private TextView hintSort;
    private LoadingImageView loadingView;
    private RecyclerView recyclerView;
    private SideRightGridLayoutManger layoutManager;

    public static SearchResultVideoFragment newInstance(String keyword, int tid) {
        SearchResultVideoFragment fragment = new SearchResultVideoFragment();
        Bundle args = new Bundle();
        args.putString(ARG_KEYWORD, keyword);
        args.putInt(ARG_TID, tid);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            keyword = getArguments().getString(ARG_KEYWORD, "");
            tid = getArguments().getInt(ARG_TID, 0);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_search_result_video, container, false);
        headerLayout = (LinearLayout) rootView.findViewById(R.id.space_header_layout);
        headerTitle = (TextView) rootView.findViewById(R.id.header_title);
        headerCount = (TextView) rootView.findViewById(R.id.header_count);
        hintSort = (TextView) rootView.findViewById(R.id.hint_sort);
        recyclerView = (RecyclerView) rootView.findViewById(R.id.recycler_view);
        loadingView = (LoadingImageView) rootView.findViewById(R.id.loading_view);
        a(recyclerView, savedInstanceState);
        return rootView;
    }
    
    @Override
    public void a(RecyclerView recyclerView, Bundle bundle) {
        bbi.b(recyclerView, "recyclerView");
        super.a(recyclerView, bundle);
        
        layoutManager = new SideRightGridLayoutManger(getActivity(), COLUMN_COUNT);
        
        Activity activity = getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.bilibili.tv.ui.search.SearchResultSideActivity");
        }
        layoutManager.a(new BorderListener((SearchResultSideActivity) activity));
        
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(layoutManager);
        
        int spacing = adl.b(R.dimen.px_4);
        int margin = adl.b(R.dimen.px_10);
        int padding = adl.b(R.dimen.px_30);
        recyclerView.setPadding(padding, padding, padding, padding);
        recyclerView.a(new ItemDecoration(margin, spacing));
        recyclerView.a(new ScrollListener());
        
        this.adapter = new VideoAdapter();
        recyclerView.setAdapter(this.adapter);
        
        i();
        b();
    }
    
    final class BorderListener implements BorderGridLayoutManager.a {
        final SearchResultSideActivity b;
        
        BorderListener(SearchResultSideActivity activity) {
            this.b = activity;
        }
        
        @Override
        public void a(View view, View view2, int i, int i2, int i3) {
            bl.agd borderManager = this.b.m();
            if (borderManager == null || view == null) {
                return;
            }
            borderManager.setUpRectDrawable(bl.aj.a(this.b, R.drawable.shadow_white_rect));
            borderManager.a(view, i2, i3, false);
        }
    }
    
    public static final class ItemDecoration extends RecyclerView.g {
        final int a;
        final int b;
        
        ItemDecoration(int margin, int spacing) {
            this.a = margin;
            this.b = spacing;
        }
        
        @Override
        public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
            bbi.b(rect, "outRect");
            bbi.b(view, "view");
            bbi.b(recyclerView, "parent");
            int position = recyclerView.g(view);
            int topSpacing = position > COLUMN_COUNT - 1 ? this.a : 0;
            int leftMargin;
            int rightMargin;
            if (position % COLUMN_COUNT == 0) {
                leftMargin = this.b;
                rightMargin = 0;
            } else {
                leftMargin = 0;
                rightMargin = this.b;
            }
            rect.set(leftMargin, topSpacing, rightMargin, 0);
        }
    }
    
    public final class ScrollListener extends RecyclerView.m {
        @Override
        public void a(RecyclerView recyclerView, int state) {
            super.a(recyclerView, state);
            if (isLoading || !hasMore || adapter == null) {
                return;
            }
            int firstVisiblePosition = layoutManager.p();
            if (layoutManager.x() <= 0 || firstVisiblePosition + 10 < layoutManager.H() - 1 || layoutManager.H() <= layoutManager.x()) {
                return;
            }
            b();
        }
    }
    
    @Override
    public boolean c() {
        if (isVisible() && this.adapter != null) {
            if (this.adapter.a() > 0) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public void onDestroyView() {
        this.adapter = null;
        super.onDestroyView();
    }
    
    @Override
    public void d_() {
        super.d_();
        currentPage = 1;
        hasMore = true;
        b();
    }
    
    private final void b() {
        loadData();
    }
    
    private void loadData() {
        if (isLoading) {
            return;
        }
        
        if (TextUtils.isEmpty(keyword)) {
            return;
        }
        
        isLoading = true;
        
        if (currentPage == 1) {
            loadingView.a();
            recyclerView.setVisibility(View.INVISIBLE);
            if (headerLayout != null) {
                headerLayout.setVisibility(View.GONE);
            }
        }
        
        switch (tid) {
            case 0:
                searchVideo();
                break;
            case 1:
                searchBangumi();
                break;
            case 2:
                searchMediaFt();
                break;
            case 3:
                searchLiveRoom();
                break;
            case 4:
                searchUser();
                break;
            default:
                searchVideo();
                break;
        }
    }
    
    private void updateHeaderInfo() {
        if (headerTitle != null) {
            String typeName = getTypeName();
            headerTitle.setText("搜索\"" + keyword + "\" - " + typeName);
        }
        if (headerCount != null) {
            headerCount.setVisibility(View.GONE);
        }
        if (hintSort != null) {
            if (tid == 1 || tid == 2) {
                hintSort.setVisibility(View.GONE);
            } else {
                hintSort.setText("点击[菜单]键排序");
                hintSort.setVisibility(View.VISIBLE);
            }
        }
    }
    
    private String getTypeName() {
        switch (tid) {
            case 0: return "视频";
            case 1: return "番剧";
            case 2: return "影视";
            case 3: return "直播";
            case 4: return "用户";
            default: return "视频";
        }
    }
    
    public void searchVideo() {
        WbiSigner wbi = WbiSigner.getInstance();
        java.util.TreeMap<String, String> params = new java.util.TreeMap<>();
        params.put("search_type", "video");
        params.put("keyword", keyword);
        if (!TextUtils.isEmpty(order)) {
            params.put("order", order);
        }
        if (!TextUtils.isEmpty(pubtimeBegin)) {
            params.put("pubtime_begin_s", pubtimeBegin);
        }
        if (!TextUtils.isEmpty(pubtimeEnd)) {
            params.put("pubtime_end_s", pubtimeEnd);
        }
        if (!TextUtils.isEmpty(duration)) {
            params.put("duration", duration);
        }
        params.put("page", String.valueOf(currentPage));
        params.put("pagesize", "20");
        String signedQuery = wbi.encWbiAndGetQuery(params);
        String url = "https://api.bilibili.com/x/web-interface/wbi/search/type?" + signedQuery;
        LogUtil.d(TAG, "=== SearchVideo URL ===\n" + url);

        OkHttpClient client = vo.getOkHttpClient();
        Request request = new Request.Builder().url(url).get().build();
        client.newCall(request).enqueue(new SearchVideoResponse());
    }
    
    public void searchBangumi() {
        WbiSigner wbi = WbiSigner.getInstance();
        java.util.TreeMap<String, String> params = new java.util.TreeMap<>();
        params.put("search_type", "media_bangumi");
        params.put("keyword", keyword);
        params.put("order", order);
        params.put("page", String.valueOf(currentPage));
        params.put("pagesize", "20");
        String signedQuery = wbi.encWbiAndGetQuery(params);
        String url = "https://api.bilibili.com/x/web-interface/wbi/search/type?" + signedQuery;
        LogUtil.d(TAG, "=== SearchBangumi URL ===\n" + url);

        OkHttpClient client = vo.getOkHttpClient();
        Request request = new Request.Builder().url(url).get().build();
        client.newCall(request).enqueue(new SearchBangumiResponse());
    }
    
    public void searchMediaFt() {
        WbiSigner wbi = WbiSigner.getInstance();
        java.util.TreeMap<String, String> params = new java.util.TreeMap<>();
        params.put("search_type", "media_ft");
        params.put("keyword", keyword);
        params.put("order", order);
        params.put("page", String.valueOf(currentPage));
        params.put("pagesize", "20");
        String signedQuery = wbi.encWbiAndGetQuery(params);
        String url = "https://api.bilibili.com/x/web-interface/wbi/search/type?" + signedQuery;
        LogUtil.d(TAG, "=== SearchMediaFt URL ===\n" + url);

        OkHttpClient client = vo.getOkHttpClient();
        Request request = new Request.Builder().url(url).get().build();
        client.newCall(request).enqueue(new SearchBangumiResponse());
    }
    
    public void searchLiveRoom() {
        WbiSigner wbi = WbiSigner.getInstance();
        java.util.TreeMap<String, String> params = new java.util.TreeMap<>();
        params.put("search_type", "live_room");
        params.put("keyword", keyword);
        params.put("order", liveOrder);
        params.put("page", String.valueOf(currentPage));
        params.put("pagesize", "20");
        String signedQuery = wbi.encWbiAndGetQuery(params);
        String url = "https://api.bilibili.com/x/web-interface/wbi/search/type?" + signedQuery;
        LogUtil.d(TAG, "=== SearchLiveRoom URL ===\n" + url);

        OkHttpClient client = vo.getOkHttpClient();
        Request request = new Request.Builder().url(url).get().build();
        client.newCall(request).enqueue(new SearchLiveRoomResponse());
    }
    
    public void searchUser() {
        WbiSigner wbi = WbiSigner.getInstance();
        java.util.TreeMap<String, String> params = new java.util.TreeMap<>();
        params.put("search_type", "bili_user");
        params.put("keyword", keyword);
        if (!TextUtils.isEmpty(userOrder)) {
            params.put("order", userOrder);
            params.put("order_sort", String.valueOf(userOrderSort));
        }
        params.put("page", String.valueOf(currentPage));
        params.put("pagesize", "20");
        String signedQuery = wbi.encWbiAndGetQuery(params);
        String url = "https://api.bilibili.com/x/web-interface/wbi/search/type?" + signedQuery;
        LogUtil.d(TAG, "=== SearchUser URL ===\n" + url);

        OkHttpClient client = vo.getOkHttpClient();
        Request request = new Request.Builder().url(url).get().build();
        client.newCall(request).enqueue(new SearchUserResponse());
    }

    public void updateSearchParams(String newOrder, String newDateType, String newDuration) {
        boolean changed = false;
        
        if (!TextUtils.equals(newOrder, this.order)) {
            this.order = newOrder;
            changed = true;
        }
        
        String newPubtimeBegin = "";
        String newPubtimeEnd = "";
        if (!TextUtils.isEmpty(newDateType)) {
            try {
                int days = Integer.parseInt(newDateType);
                long endTime = System.currentTimeMillis() / 1000;
                long beginTime = endTime - (days * 24 * 60 * 60L);
                newPubtimeBegin = String.valueOf(beginTime);
                newPubtimeEnd = String.valueOf(endTime);
            } catch (NumberFormatException e) {
                Log.e(TAG, "Invalid dateType: " + newDateType);
            }
        }
        
        if (!TextUtils.equals(newPubtimeBegin, this.pubtimeBegin) ||
            !TextUtils.equals(newPubtimeEnd, this.pubtimeEnd) ||
            !TextUtils.equals(newDateType, this.dateType)) {
            this.pubtimeBegin = newPubtimeBegin;
            this.pubtimeEnd = newPubtimeEnd;
            this.dateType = newDateType;
            changed = true;
        }
        
        if (!TextUtils.equals(newDuration, this.duration)) {
            this.duration = newDuration;
            changed = true;
        }
        
        if (changed) {
            currentPage = 1;
            hasMore = true;
            if (adapter != null) {
                adapter.clear();
            }
            b();
        }
    }

    public void setOrder(String newOrder) {
        if (TextUtils.equals(newOrder, this.order)) {
            return;
        }
        this.order = newOrder;
        currentPage = 1;
        hasMore = true;
        if (adapter != null) {
            adapter.clear();
        }
        b();
    }
    
    public String getOrder() {
        return this.order;
    }
    
    public void setUserOrder(String newOrder) {
        if (TextUtils.isEmpty(newOrder)) {
            this.userOrder = "";
            this.userOrderSort = 0;
        } else if (newOrder.equals("fans")) {
            this.userOrder = "fans";
            this.userOrderSort = 0;
        } else if (newOrder.equals("fans_asc")) {
            this.userOrder = "fans";
            this.userOrderSort = 1;
        } else if (newOrder.equals("level")) {
            this.userOrder = "level";
            this.userOrderSort = 0;
        } else if (newOrder.equals("level_asc")) {
            this.userOrder = "level";
            this.userOrderSort = 1;
        } else {
            this.userOrder = newOrder;
            this.userOrderSort = 0;
        }
        currentPage = 1;
        hasMore = true;
        if (adapter != null) {
            adapter.clear();
        }
        b();
    }
    
    public String getUserOrder() {
        if (TextUtils.isEmpty(this.userOrder)) {
            return "";
        } else if (this.userOrder.equals("fans") && this.userOrderSort == 1) {
            return "fans_asc";
        } else if (this.userOrder.equals("level") && this.userOrderSort == 1) {
            return "level_asc";
        } else {
            return this.userOrder;
        }
    }
    
    public void setLiveOrder(String newOrder) {
        if (TextUtils.equals(newOrder, this.liveOrder)) {
            return;
        }
        this.liveOrder = newOrder;
        currentPage = 1;
        hasMore = true;
        if (adapter != null) {
            adapter.clear();
        }
        b();
    }
    
    public String getLiveOrder() {
        return this.liveOrder;
    }
    
    public void setPubtime(String begin, String end, String dateType) {
        this.pubtimeBegin = begin;
        this.pubtimeEnd = end;
        this.dateType = dateType;
        currentPage = 1;
        hasMore = true;
        if (adapter != null) {
            adapter.clear();
        }
        b();
    }
    
    public String getDateType() {
        return this.dateType;
    }
    
    public String getPubtimeBegin() {
        return this.pubtimeBegin;
    }
    
    public String getPubtimeEnd() {
        return this.pubtimeEnd;
    }
    
    public void setDuration(String duration) {
        this.duration = duration;
        currentPage = 1;
        hasMore = true;
        if (adapter != null) {
            adapter.clear();
        }
        b();
    }
    
    public String getDuration() {
        return this.duration;
    }
    
    public int getTid() {
        return tid;
    }
    
    public boolean isLoading() {
        return this.isLoading;
    }
    
    public class SearchVideoResponse implements Callback {
        @Override
        public void onFailure(Call call, IOException e) {
            Log.e(TAG, "SearchVideo onFailure: " + e.getMessage());
            android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
            mainHandler.post(new Runnable() {
                @Override
                public void run() {
                    isLoading = false;
                    loadingView.setRefreshError(false);
                    if (getActivity() != null) {
                        Toast.makeText(getActivity(), "搜索失败", Toast.LENGTH_SHORT).show();
                    }
                }
            });
        }

        @Override
        public void onResponse(Call call, Response response) throws IOException {
            try {
                ResponseBody body = response.body();
                if (body != null) {
                    String jsonStr = body.string();
                    final JSONObject json = JSONObject.parseObject(jsonStr);
                    LogUtil.json(TAG + "_SearchVideo_Response", json);
                    final int code = json.getIntValue("code");
                    android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            if (code == 0) {
                                handleVideoResponse(json);
                            } else {
                                isLoading = false;
                                loadingView.setRefreshError(false);
                            }
                        }
                    });
                }
            } catch (final Exception e) {
                android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                mainHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        isLoading = false;
                        loadingView.setRefreshError(false);
                    }
                });
            }
        }
    }
    
    private void handleVideoResponse(JSONObject response) {
        LogUtil.json(TAG + "_SearchVideo", response);
        JSONObject result = response.getJSONObject("data");
        if (result == null) {
            result = response;
        }
        JSONArray archives = result.getJSONArray("result");
        if (archives == null || archives.isEmpty()) {
            isLoading = false;
            hasMore = false;
            if (currentPage == 1) {
                loadingView.c();
            }
            return;
        }
        
        isLoading = false;
        loadingView.b();
        recyclerView.setVisibility(View.VISIBLE);
        if (headerLayout != null) {
            headerLayout.setVisibility(View.VISIBLE);
        }
        
        List<VideoItem> videos = new ArrayList<>();
        for (int i = 0; i < archives.size(); i++) {
            JSONObject item = archives.getJSONObject(i);
            VideoItem video = new VideoItem();
            String title = item.getString("title");
            video.title = android.text.Html.fromHtml(title).toString();
            video.author = item.getString("author");
            video.play = String.valueOf(item.getInteger("play"));
            video.danmaku = String.valueOf(item.getInteger("video_review"));
            video.cover = item.getString("pic");
            video.param = String.valueOf(item.getLong("aid"));
            if (item.containsKey("pubdate")) {
                long pubdate = item.getLong("pubdate");
                video.pubdate = com.bilibili.tv.util.DateHelper.formatDate(pubdate);
            }
            if (item.containsKey("duration")) {
                video.duration = item.getString("duration");
            }
            videos.add(video);
        }
        
        if (currentPage == 1) {
            adapter.setVideos(videos);
        } else {
            adapter.addVideos(videos);
        }
        
        if (archives.size() < PAGE_SIZE) {
            hasMore = false;
        } else {
            currentPage++;
        }
        
        updateHeaderInfo();
    }
    
    public class SearchBangumiResponse implements Callback {
        @Override
        public void onFailure(Call call, IOException e) {
            android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
            mainHandler.post(new Runnable() {
                @Override
                public void run() {
                    isLoading = false;
                    loadingView.setRefreshError(false);
                }
            });
        }

        @Override
        public void onResponse(Call call, Response response) throws IOException {
            try {
                ResponseBody body = response.body();
                if (body != null) {
                    String jsonStr = body.string();
                    final JSONObject json = JSONObject.parseObject(jsonStr);
                    LogUtil.json(TAG + "_SearchBangumi_Response", json);
                    final int code = json.getIntValue("code");
                    android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            if (code == 0) {
                                handleBangumiResponse(json);
                            } else {
                                isLoading = false;
                                loadingView.setRefreshError(false);
                            }
                        }
                    });
                }
            } catch (final Exception e) {
                android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                mainHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        isLoading = false;
                        loadingView.setRefreshError(false);
                    }
                });
            }
        }
    }
    
    private void handleBangumiResponse(JSONObject response) {
        LogUtil.json(TAG + "_SearchBangumi", response);
        JSONObject result = response.getJSONObject("data");
        if (result == null) {
            result = response;
        }
        JSONArray items = result.getJSONArray("result");
        if (items == null || items.isEmpty()) {
            isLoading = false;
            hasMore = false;
            if (currentPage == 1) {
                loadingView.c();
            }
            return;
        }
        
        isLoading = false;
        loadingView.b();
        recyclerView.setVisibility(View.VISIBLE);
        if (headerLayout != null) {
            headerLayout.setVisibility(View.VISIBLE);
        }
        
        List<BangumiItem> bangumis = new ArrayList<>();
        for (int i = 0; i < items.size(); i++) {
            JSONObject item = items.getJSONObject(i);
            BangumiItem bangumi = new BangumiItem();
            String title = item.getString("title");
            bangumi.title = android.text.Html.fromHtml(title).toString();
            bangumi.cover = item.getString("cover");
            bangumi.param = String.valueOf(item.getLong("season_id"));
            bangumi.area = item.getString("areas");
            bangumi.style = item.getString("styles");
            bangumi.rating = item.getDoubleValue("rating");
            bangumi.vote = item.getIntValue("vote");
            bangumi.isBangumi = (tid == 1);
            bangumis.add(bangumi);
        }
        
        if (currentPage == 1) {
            adapter.setBangumis(bangumis);
        } else {
            adapter.addBangumis(bangumis);
        }
        
        if (items.size() < PAGE_SIZE) {
            hasMore = false;
        } else {
            currentPage++;
        }
        
        updateHeaderInfo();
    }
    
    public class SearchLiveRoomResponse implements Callback {
        @Override
        public void onFailure(Call call, IOException e) {
            android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
            mainHandler.post(new Runnable() {
                @Override
                public void run() {
                    isLoading = false;
                    loadingView.setRefreshError(false);
                }
            });
        }

        @Override
        public void onResponse(Call call, Response response) throws IOException {
            try {
                ResponseBody body = response.body();
                if (body != null) {
                    String jsonStr = body.string();
                    final JSONObject json = JSONObject.parseObject(jsonStr);
                    LogUtil.json(TAG + "_SearchLiveRoom_Response", json);
                    final int code = json.getIntValue("code");
                    android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            if (code == 0) {
                                handleLiveRoomResponse(json);
                            } else {
                                isLoading = false;
                                loadingView.setRefreshError(false);
                            }
                        }
                    });
                }
            } catch (final Exception e) {
                android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                mainHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        isLoading = false;
                        loadingView.setRefreshError(false);
                    }
                });
            }
        }
    }
    
    private void handleLiveRoomResponse(JSONObject response) {
        LogUtil.json(TAG + "_SearchLiveRoom", response);
        JSONObject result = response.getJSONObject("data");
        if (result == null) {
            result = response;
        }
        JSONArray items = result.getJSONArray("result");
        if (items == null || items.isEmpty()) {
            isLoading = false;
            hasMore = false;
            if (currentPage == 1) {
                loadingView.c();
            }
            return;
        }
        
        isLoading = false;
        loadingView.b();
        recyclerView.setVisibility(View.VISIBLE);
        if (headerLayout != null) {
            headerLayout.setVisibility(View.VISIBLE);
        }
        
        List<BiliLiveContent> rooms = new ArrayList<>();
        for (int i = 0; i < items.size(); i++) {
            JSONObject item = items.getJSONObject(i);
            BiliLiveContentEx2 room = new BiliLiveContentEx2();
            String title = item.getString("title");
            room.mTitle = android.text.Html.fromHtml(title).toString();
            room.mUname = item.getString("uname");
            room.mCover = item.getString("user_cover");
            if (TextUtils.isEmpty(room.mCover)) {
                room.mCover = item.getString("cover");
            }
            room.mOnline = item.getIntValue("online");
            room.mRoomId = item.getIntValue("roomid");
            rooms.add(room);
        }
        
        if (currentPage == 1) {
            adapter.setLiveRooms(rooms);
        } else {
            adapter.addLiveRooms(rooms);
        }
        
        if (items.size() < PAGE_SIZE) {
            hasMore = false;
        } else {
            currentPage++;
        }
        
        updateHeaderInfo();
    }
    
    public class SearchUserResponse implements Callback {
        @Override
        public void onFailure(Call call, IOException e) {
            android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
            mainHandler.post(new Runnable() {
                @Override
                public void run() {
                    isLoading = false;
                    loadingView.setRefreshError(false);
                }
            });
        }

        @Override
        public void onResponse(Call call, Response response) throws IOException {
            try {
                ResponseBody body = response.body();
                if (body != null) {
                    String jsonStr = body.string();
                    final JSONObject json = JSONObject.parseObject(jsonStr);
                    LogUtil.json(TAG + "_SearchUser_Response", json);
                    final int code = json.getIntValue("code");
                    android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                    mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            if (code == 0) {
                                handleUserResponse(json);
                            } else {
                                isLoading = false;
                                loadingView.setRefreshError(false);
                            }
                        }
                    });
                }
            } catch (final Exception e) {
                android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
                mainHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        isLoading = false;
                        loadingView.setRefreshError(false);
                    }
                });
            }
        }
    }
    
    private void handleUserResponse(JSONObject response) {
        LogUtil.json(TAG + "_SearchUser", response);
        JSONObject result = response.getJSONObject("data");
        if (result == null) {
            return;
        }
        JSONArray users = result.getJSONArray("result");
        if (users == null || users.isEmpty()) {
            isLoading = false;
            hasMore = false;
            if (currentPage == 1) {
                loadingView.c();
            }
            return;
        }
        
        isLoading = false;
        loadingView.b();
        recyclerView.setVisibility(View.VISIBLE);
        if (headerLayout != null) {
            headerLayout.setVisibility(View.VISIBLE);
        }
        
        List<BiliSearchResultUper> upers = new ArrayList<>();
        for (int i = 0; i < users.size(); i++) {
            JSONObject item = users.getJSONObject(i);
            BiliSearchResultUper uper = new BiliSearchResultUper();
            String uname = item.getString("uname");
            uper.uname = android.text.Html.fromHtml(uname).toString();
            uper.upic = item.getString("upic");
            uper.usign = item.getString("usign");
            uper.mid = item.getLong("mid");
            uper.fans = item.getIntValue("fans");
            uper.videos = item.getIntValue("videos");
            upers.add(uper);
        }
        
        if (currentPage == 1) {
            adapter.setUsers(upers);
        } else {
            adapter.addUsers(upers);
        }
        
        if (users.size() < PAGE_SIZE) {
            hasMore = false;
        } else {
            currentPage++;
        }
        
        updateHeaderInfo();
    }
    
    public static class VideoItem {
        public String title;
        public String author;
        public String play;
        public String danmaku;
        public String cover;
        public String param;
        public String pubdate;
        public String duration;
    }
    
    public static class BangumiItem {
        public String title;
        public String cover;
        public String param;
        public String area;
        public String style;
        public double rating;
        public int vote;
        public boolean isBangumi;
    }
    
    static final class VideoAdapter extends RecyclerView.a<RecyclerView.v> implements View.OnClickListener {
        private List<VideoItem> videos = new ArrayList<>();
        private List<BangumiItem> bangumis = new ArrayList<>();
        private List<BiliSearchResultUper> users = new ArrayList<>();
        private List<BiliLiveContent> liveRooms = new ArrayList<>();
        private int itemType = 0;
        
        public void setVideos(List<VideoItem> list) {
            this.videos.clear();
            this.videos.addAll(list);
            this.itemType = 0;
            d();
        }
        
        public void addVideos(List<VideoItem> list) {
            int size = this.videos.size();
            this.videos.addAll(list);
            d(size);
        }
        
        public void setBangumis(List<BangumiItem> list) {
            this.bangumis.clear();
            this.bangumis.addAll(list);
            this.itemType = 1;
            d();
        }
        
        public void addBangumis(List<BangumiItem> list) {
            int size = this.bangumis.size();
            this.bangumis.addAll(list);
            d(size);
        }
        
        public void setUsers(List<BiliSearchResultUper> list) {
            this.users.clear();
            this.users.addAll(list);
            this.itemType = 2;
            d();
        }
        
        public void addUsers(List<BiliSearchResultUper> list) {
            int size = this.users.size();
            this.users.addAll(list);
            d(size);
        }
        
        public void setLiveRooms(List<BiliLiveContent> list) {
            this.liveRooms.clear();
            this.liveRooms.addAll(list);
            this.itemType = 3;
            d();
        }
        
        public void addLiveRooms(List<BiliLiveContent> list) {
            int size = this.liveRooms.size();
            this.liveRooms.addAll(list);
            d(size);
        }
        
        public void clear() {
            videos.clear();
            bangumis.clear();
            users.clear();
            liveRooms.clear();
            d();
        }
        
        @Override
        public RecyclerView.v a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            switch (itemType) {
                case 0:
                    return VideoViewHolder.create(viewGroup);
                case 1:
                    return BangumiViewHolder.create(viewGroup);
                case 2:
                    return UserViewHolder.create(viewGroup);
                case 3:
                    return LiveRoomViewHolder.create(viewGroup);
                default:
                    return VideoViewHolder.create(viewGroup);
            }
        }
        
        @Override
        public void a(RecyclerView.v holder, int position) {
            bbi.b(holder, "viewHolder");
            
            switch (itemType) {
                case 0:
                    if (holder instanceof VideoViewHolder) {
                        bindVideoHolder((VideoViewHolder) holder, position);
                    }
                    break;
                case 1:
                    if (holder instanceof BangumiViewHolder) {
                        bindBangumiHolder((BangumiViewHolder) holder, position);
                    }
                    break;
                case 2:
                    if (holder instanceof UserViewHolder) {
                        bindUserHolder((UserViewHolder) holder, position);
                    }
                    break;
                case 3:
                    if (holder instanceof LiveRoomViewHolder) {
                        bindLiveRoomHolder((LiveRoomViewHolder) holder, position);
                    }
                    break;
            }
        }
        
        private void bindVideoHolder(VideoViewHolder holder, int position) {
            VideoItem video = videos.get(position);
            
            if (!TextUtils.isEmpty(video.cover)) {
                String coverUrl = video.cover;
                if (!coverUrl.startsWith("http")) {
                    coverUrl = "https:" + coverUrl;
                }
                nv.a().a(abd.get_thumb_url_c(MainApplication.a(), coverUrl), holder.img);
            }
            
            holder.title.setText(video.title);
            holder.up.setText(video.author);
            holder.play.setText(bl.adh.a(video.play));
            holder.danmaku.setText(bl.adh.a(video.danmaku));
            if (!TextUtils.isEmpty(video.pubdate)) {
                holder.pubdate.setText(video.pubdate);
                holder.pubdate.setVisibility(View.VISIBLE);
            } else {
                holder.pubdate.setVisibility(View.GONE);
            }
            if (!TextUtils.isEmpty(video.duration)) {
                holder.duration.setText(video.duration);
                holder.duration.setVisibility(View.VISIBLE);
            } else {
                holder.duration.setVisibility(View.GONE);
            }
            
            holder.root.setTag(video);
            holder.root.setTag(R.id.position, Integer.valueOf(position));
            holder.root.setOnClickListener(this);
        }
        
        private void bindBangumiHolder(BangumiViewHolder holder, int position) {
            BangumiItem bangumi = bangumis.get(position);
            
            if (!TextUtils.isEmpty(bangumi.cover)) {
                String coverUrl = bangumi.cover;
                if (!coverUrl.startsWith("http")) {
                    coverUrl = "https:" + coverUrl;
                }
                nv.a().a(abd.get_thumb_url_c(MainApplication.a(), coverUrl), holder.img);
            }
            
            holder.title.setText(bangumi.title);
            if (!TextUtils.isEmpty(bangumi.area)) {
                holder.type.setText(bangumi.area);
                holder.type.setVisibility(View.VISIBLE);
            } else {
                holder.type.setVisibility(View.GONE);
            }
            if (!TextUtils.isEmpty(bangumi.style)) {
                holder.count.setText(bangumi.style);
                holder.count.setVisibility(View.VISIBLE);
            } else {
                holder.count.setVisibility(View.GONE);
            }
            if (bangumi.rating > 0) {
                holder.num.setText(String.format("%.1f分", bangumi.rating));
                holder.num.setVisibility(View.VISIBLE);
            } else {
                holder.num.setVisibility(View.GONE);
            }
            
            holder.root.setTag(bangumi);
            holder.root.setTag(R.id.position, Integer.valueOf(position));
            holder.root.setOnClickListener(this);
        }
        
        private void bindUserHolder(UserViewHolder holder, int position) {
            BiliSearchResultUper user = users.get(position);
            
            holder.title.setText(user.uname);
            holder.fans.setText(bl.adh.a(user.fans) + "粉丝");
            holder.archives.setText(user.videos + "个视频");
            
            if (!TextUtils.isEmpty(user.upic)) {
                String upicUrl = user.upic;
                if (!upicUrl.startsWith("http")) {
                    upicUrl = "https:" + upicUrl;
                }
                nv.a().a(abd.get_thumb_url_b(MainApplication.a(), upicUrl), holder.img);
            }
            
            holder.root.setTag(user);
            holder.root.setTag(R.id.position, Integer.valueOf(position));
            holder.root.setOnClickListener(this);
        }
        
        private void bindLiveRoomHolder(LiveRoomViewHolder holder, int position) {
            BiliLiveContent room = liveRooms.get(position);
            
            holder.title.setText(room.mTitle);
            holder.up.setText(room.mUname);
            holder.online.setText("在线人数 " + bl.adh.a(room.mOnline));
            
            if (!TextUtils.isEmpty(room.mCover)) {
                String coverUrl = room.mCover;
                if (!coverUrl.startsWith("http")) {
                    coverUrl = "https:" + coverUrl;
                }
                nv.a().a(abd.get_thumb_url_c(MainApplication.a(), coverUrl), holder.img);
            }
            
            holder.root.setTag(room);
            holder.root.setTag(R.id.position, Integer.valueOf(position));
            holder.root.setOnClickListener(this);
        }
        
        @Override
        public int a() {
            switch (itemType) {
                case 0: return videos.size();
                case 1: return bangumis.size();
                case 2: return users.size();
                case 3: return liveRooms.size();
                default: return 0;
            }
        }
        
        @Override
        public void onClick(View v) {
            Object tag = v.getTag();
            Context context = v.getContext();
            Activity a = adl.a(context);
            if (a == null) return;
            
            if (tag instanceof VideoItem) {
                VideoItem video = (VideoItem) tag;
                try {
                    long avid = Long.parseLong(video.param);
                    String coverUrl = video.cover;
                    if (!TextUtils.isEmpty(coverUrl) && !coverUrl.startsWith("http")) {
                        coverUrl = "https:" + coverUrl;
                    }
                    a.startActivity(VideoDetailActivity.Companion.a(a, avid, coverUrl));
                } catch (NumberFormatException ignored) {}
            } else if (tag instanceof BangumiItem) {
                BangumiItem bangumi = (BangumiItem) tag;
                String coverUrl = bangumi.cover;
                if (!TextUtils.isEmpty(coverUrl) && !coverUrl.startsWith("http")) {
                    coverUrl = "https:" + coverUrl;
                }
                a.startActivity(VideoDetailActivity.Companion.a(a, bangumi.param, coverUrl));
            } else if (tag instanceof BiliSearchResultUper) {
                BiliSearchResultUper user = (BiliSearchResultUper) tag;
                AuthSpaceSideActivity.start(a, user.mid, user.uname);
            } else if (tag instanceof BiliLiveContent) {
                BiliLiveContent room = (BiliLiveContent) tag;
                com.bilibili.tv.ui.live.player.LivePlayerActivity.lives = new ArrayList<>();
                com.bilibili.tv.ui.live.player.LivePlayerActivity.lives.add(room);
                com.bilibili.tv.ui.live.player.LivePlayerActivity.live_index = 0;
                a.startActivity(com.bilibili.tv.ui.live.player.LivePlayerActivity.a(a, room));
            }
        }
    }
    
    static class VideoViewHolder extends adv {
        ScalableImageView img;
        TextView title;
        TextView up;
        TextView play;
        TextView danmaku;
        TextView pubdate;
        TextView duration;
        DrawRelativeLayout root;
        
        VideoViewHolder(View itemView) {
            super(itemView);
            img = (ScalableImageView) a(itemView, R.id.img);
            title = (TextView) a(itemView, R.id.title);
            up = (TextView) a(itemView, R.id.up);
            play = (TextView) a(itemView, R.id.play);
            danmaku = (TextView) a(itemView, R.id.danmaku);
            pubdate = (TextView) a(itemView, R.id.pubdate);
            duration = (TextView) a(itemView, R.id.duration);
            root = (DrawRelativeLayout) itemView;
            root.setUpDrawable(R.drawable.shadow_white_rect);
            
            Drawable c = adl.a.c(R.drawable.ic_video_info_up);
            Drawable c2 = adl.a.c(R.drawable.ic_video_info_play);
            Drawable c3 = adl.a.c(R.drawable.ic_video_info_danmaku);
            int b = adl.b(R.dimen.px_34);
            c.setBounds(0, 0, b, b);
            c2.setBounds(0, 0, b, b);
            c3.setBounds(0, 0, b, b);
            int d = adl.d(R.color.white_50);
            c.setColorFilter(d, android.graphics.PorterDuff.Mode.MULTIPLY);
            c2.setColorFilter(d, android.graphics.PorterDuff.Mode.MULTIPLY);
            c3.setColorFilter(d, android.graphics.PorterDuff.Mode.MULTIPLY);
            up.setCompoundDrawables(c, null, null, null);
            play.setCompoundDrawables(c2, null, null, null);
            danmaku.setCompoundDrawables(c3, null, null, null);
            
            Object context = itemView.getContext();
            if (context instanceof View.OnLongClickListener) {
                itemView.setOnLongClickListener((View.OnLongClickListener) context);
            }
        }
        
        static VideoViewHolder create(ViewGroup parent) {
            View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_item_video_info, parent, false);
            return new VideoViewHolder(view);
        }
    }
    
    static class BangumiViewHolder extends adv {
        ScalableImageView img;
        TextView title;
        TextView type;
        TextView num;
        TextView count;
        DrawRelativeLayout root;
        
        BangumiViewHolder(View itemView) {
            super(itemView);
            img = (ScalableImageView) a(itemView, R.id.img);
            title = (TextView) a(itemView, R.id.title);
            type = (TextView) a(itemView, R.id.type);
            num = (TextView) a(itemView, R.id.num);
            count = (TextView) a(itemView, R.id.count);
            root = (DrawRelativeLayout) itemView;
            root.setUpDrawable(R.drawable.shadow_white_rect);
        }
        
        static BangumiViewHolder create(ViewGroup parent) {
            View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_item_search_bangumi_info, parent, false);
            return new BangumiViewHolder(view);
        }
    }
    
    static class UserViewHolder extends adv {
        ScalableImageView img;
        TextView title;
        TextView fans;
        TextView archives;
        DrawRelativeLayout root;
        
        UserViewHolder(View itemView) {
            super(itemView);
            img = (ScalableImageView) a(itemView, R.id.img);
            title = (TextView) a(itemView, R.id.title);
            fans = (TextView) a(itemView, R.id.fans);
            archives = (TextView) a(itemView, R.id.archives);
            root = (DrawRelativeLayout) itemView;
            root.setUpDrawable(R.drawable.shadow_white_rect);
            
            Object context = itemView.getContext();
            if (context instanceof View.OnLongClickListener) {
                itemView.setOnLongClickListener((View.OnLongClickListener) context);
            }
        }
        
        static UserViewHolder create(ViewGroup parent) {
            View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_item_search_uper, parent, false);
            return new UserViewHolder(view);
        }
    }
    
    static class LiveRoomViewHolder extends adv {
        ScalableImageView img;
        TextView title;
        TextView up;
        TextView online;
        DrawRelativeLayout root;
        LinearLayout infoLayout;
        
        LiveRoomViewHolder(View itemView) {
            super(itemView);
            img = (ScalableImageView) a(itemView, R.id.img);
            title = (TextView) a(itemView, R.id.title);
            up = (TextView) a(itemView, R.id.up);
            online = (TextView) a(itemView, R.id.pubdate);
            root = (DrawRelativeLayout) itemView;
            root.setUpDrawable(R.drawable.shadow_white_rect);
            
            Drawable c = adl.a.c(R.drawable.ic_video_info_up);
            int b = adl.b(R.dimen.px_34);
            c.setBounds(0, 0, b, b);
            int d = adl.d(R.color.white_50);
            c.setColorFilter(d, android.graphics.PorterDuff.Mode.MULTIPLY);
            up.setCompoundDrawables(c, null, null, null);
            
            if (img.getParent() instanceof ViewGroup) {
                ViewGroup frameLayout = (ViewGroup) img.getParent();
                for (int i = 0; i < frameLayout.getChildCount(); i++) {
                    View child = frameLayout.getChildAt(i);
                    if (child instanceof LinearLayout) {
                        LinearLayout ll = (LinearLayout) child;
                        if (ll.getChildCount() > 0 && ll.getChildAt(0) instanceof LinearLayout) {
                            infoLayout = ll;
                            ll.setVisibility(View.GONE);
                            break;
                        }
                    }
                }
            }
            
            Object context = itemView.getContext();
            if (context instanceof View.OnLongClickListener) {
                itemView.setOnLongClickListener((View.OnLongClickListener) context);
            }
        }
        
        static LiveRoomViewHolder create(ViewGroup parent) {
            View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_item_video_info, parent, false);
            return new LiveRoomViewHolder(view);
        }
    }
}
