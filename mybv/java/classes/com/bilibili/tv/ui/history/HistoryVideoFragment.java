package com.bilibili.tv.ui.history;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import bl.ach;
import bl.adl;
import bl.adv;
import bl.ady;
import bl.aj;
import bl.agd;
import bl.bbi;
import bl.bbg;
import bl.mg;
import bl.nv;
import bl.vo;
import bl.vn;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.history.BiliPlayerHistoryService;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.widget.DrawRelativeLayout;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import com.bilibili.tv.widget.side.SideRightGridLayoutManger;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import kotlin.TypeCastException;
import mybl.BiliLiveContent;

public final class HistoryVideoFragment extends ady {
    public static final String ARG_HISTORY_TYPE = "history_type";
    private static final String TAG = "HistoryVideoFragment";
    private static final int PAGE_SIZE = 30;
    private static final int COLUMN_COUNT = 2;
    
    public static long currentAvid = -1;
    public static int currentPos = -1;
    
    private c adapter;
    private boolean isLoading = false;
    private boolean hasMore = true;
    private long cursorMax = 0;
    private long cursorViewAt = 0;
    private String cursorBusiness = "";
    
    private String historyType = "archive";
    private LinearLayout headerLayout;
    private TextView headerTitle;
    private TextView headerCount;
    private TextView hintSort;
    private SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.CHINA);

    public static HistoryVideoFragment newInstance(String historyType) {
        HistoryVideoFragment fragment = new HistoryVideoFragment();
        Bundle args = new Bundle();
        args.putString(ARG_HISTORY_TYPE, historyType);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            historyType = getArguments().getString(ARG_HISTORY_TYPE, "archive");
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_history_video, container, false);
        headerLayout = (LinearLayout) rootView.findViewById(R.id.space_header_layout);
        headerTitle = (TextView) rootView.findViewById(R.id.header_title);
        headerCount = (TextView) rootView.findViewById(R.id.header_count);
        hintSort = (TextView) rootView.findViewById(R.id.hint_sort);
        RecyclerView recyclerView = (RecyclerView) rootView.findViewById(R.id.recycler_view);
        a(recyclerView, savedInstanceState);
        return rootView;
    }
    
    @Override
    public void a(RecyclerView recyclerView, Bundle bundle) {
        bbi.b(recyclerView, "recyclerView");
        super.a(recyclerView, bundle);
        
        SideRightGridLayoutManger layoutManager = new SideRightGridLayoutManger(getActivity(), COLUMN_COUNT);
        
        Activity activity = getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.bilibili.tv.ui.history.HistorySideActivity");
        }
        layoutManager.a(new e((HistorySideActivity) activity));
        
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(layoutManager);
        
        int spacing = adl.b(R.dimen.px_4);
        int margin = adl.b(R.dimen.px_10);
        int padding = adl.b(R.dimen.px_30);
        recyclerView.setPadding(padding, padding, padding, padding);
        recyclerView.a(new f(margin, spacing));
        recyclerView.a(new g(layoutManager));
        
        this.adapter = new c();
        this.adapter.setHistoryType(historyType);
        recyclerView.setAdapter(this.adapter);
        
        i();
        b();
    }
    
    final class e implements BorderGridLayoutManager.a {
        final HistorySideActivity b;
        
        e(HistorySideActivity activity) {
            this.b = activity;
        }
        
        @Override
        public void a(View view, View view2, int i, int i2, int i3) {
            agd borderManager = this.b.m();
            if (borderManager == null || view == null) {
                return;
            }
            borderManager.setUpRectDrawable(aj.a(this.b, R.drawable.shadow_white_rect));
            borderManager.a(view, i2, i3, false);
        }
    }
    
    public static final class f extends RecyclerView.g {
        final int a;
        final int b;
        
        f(int margin, int spacing) {
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
    
    public final class g extends RecyclerView.m {
        final SideRightGridLayoutManger b;
        
        g(SideRightGridLayoutManger manager) {
            this.b = manager;
        }
        
        @Override
        public void a(RecyclerView recyclerView, int state) {
            super.a(recyclerView, state);
            if (isLoading || !hasMore || adapter == null) {
                return;
            }
            int firstVisiblePosition = this.b.p();
            if (this.b.x() <= 0 || firstVisiblePosition + 10 < this.b.H() - 1 || this.b.H() <= this.b.x()) {
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
        cursorMax = 0;
        cursorViewAt = 0;
        cursorBusiness = "";
        hasMore = true;
        b();
    }
    
    private final void b() {
        this.isLoading = true;
        loadHistoryData();
    }
    
    private void loadHistoryData() {
        Activity activity = getActivity();
        if (activity == null || activity.isFinishing()) {
            isLoading = false;
            return;
        }
        
        mg account = mg.a(activity);
        if (account == null || !account.a()) {
            isLoading = false;
            return;
        }
        
        String sessdata = account.getSESSDATA();
        String cookie = "SESSDATA=" + sessdata;
        
        android.util.Log.d(TAG, "loadHistoryData: type=" + historyType + ", cursorMax=" + cursorMax);
        
        ((BiliPlayerHistoryService) vo.a(BiliPlayerHistoryService.class))
            .getVideoHistoryList(cookie, cursorMax, cursorViewAt, cursorBusiness, historyType, PAGE_SIZE)
            .a(new vn<JSONObject>() {
                @Override
                public boolean isCancel() {
                    return getActivity() == null || getActivity().isFinishing() || adapter == null;
                }
                
                @Override
                public void onError(Throwable th) {
                    android.util.Log.e(TAG, "loadHistoryData error: " + th.getMessage(), th);
                    isLoading = false;
                    adl.a.a(th, getActivity());
                }
                
                @Override
                public void a(JSONObject response) {
                    if (adapter == null) {
                        return;
                    }
                    j();
                    isLoading = false;
                    
                    if (response == null) {
                        hasMore = false;
                        return;
                    }
                    
                    JSONObject cursor = response.getJSONObject("cursor");
                    if (cursor != null) {
                        cursorMax = cursor.getLongValue("max");
                        cursorViewAt = cursor.getLongValue("view_at");
                        cursorBusiness = cursor.getString("business");
                        hasMore = true;
                    } else {
                        hasMore = false;
                    }
                    
                    JSONArray list = response.getJSONArray("list");
                    if (list != null && !list.isEmpty()) {
                        boolean isFirstLoad = (cursorMax == 0);
                        if (isFirstLoad) {
                            adapter.a(list);
                        } else {
                            adapter.b(list);
                        }
                        updateHeaderInfo();
                    } else {
                        hasMore = false;
                        if (adapter.a() == 0) {
                            l();
                            HistoryVideoFragment.this.a(R.string.nothing_show);
                        }
                    }
                }
            });
    }
    
    private void updateHeaderInfo() {
        if (headerTitle != null) {
            if ("live".equals(historyType)) {
                headerTitle.setText("直播");
            } else {
                headerTitle.setText("视频");
            }
        }
        if (headerCount != null && adapter != null) {
            headerCount.setText(adapter.a() + "条记录");
        }
        if (hintSort != null) {
            hintSort.setText("菜单键删除，长按[OK]键清空");
            hintSort.setVisibility(View.VISIBLE);
        }
    }
    
    public void clearAllHistory() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        
        mg account = mg.a(context);
        if (account == null) {
            return;
        }
        
        String accessKey = account.e();
        
        ((BiliPlayerHistoryService) vo.a(BiliPlayerHistoryService.class))
            .clearVideoHistories(accessKey)
            .a();
        
        if (adapter != null) {
            adapter.clear();
        }
        updateHeaderInfo();
    }
    
    public void deleteHistory(BiliVideoDetail video) {
        if (video == null) {
            return;
        }
        
        Context context = getContext();
        if (context == null) {
            return;
        }
        
        if (adapter != null) {
            adapter.remove(video);
        }
        
        mg account = mg.a(context);
        if (account == null) {
            return;
        }
        
        String accessKey = account.e();
        String kid = historyType + "_" + String.valueOf(video.mAvid);
        
        ((BiliPlayerHistoryService) vo.a(BiliPlayerHistoryService.class))
            .clearVideoHistories(accessKey, kid)
            .a();
        
        updateHeaderInfo();
    }
    
    public void deleteCurrentHistory() {
        if (currentAvid < 0 || currentPos < 0) {
            return;
        }
        
        Context context = getContext();
        if (context == null) {
            return;
        }
        
        mg account = mg.a(context);
        if (account == null) {
            return;
        }
        
        String accessKey = account.e();
        String kid = historyType + "_" + String.valueOf(currentAvid);
        
        ((BiliPlayerHistoryService) vo.a(BiliPlayerHistoryService.class))
            .clearVideoHistories(accessKey, kid)
            .a();
        
        if (adapter != null) {
            adapter.removeByPosition(currentPos);
        }
        
        currentAvid = -1;
        currentPos = -1;
        
        updateHeaderInfo();
    }
    
    public String getHistoryType() {
        return historyType;
    }
    
    public boolean isLoading() {
        return this.isLoading;
    }
    
    static final class c extends RecyclerView.a<h> implements View.OnClickListener {
        private JSONArray videos = new JSONArray();
        private String historyType = "archive";
        
        public void setHistoryType(String type) {
            this.historyType = type;
        }
        
        @Override
        public h a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            return h.Companion.a(viewGroup);
        }
        
        @Override
        public void a(h holder, int position) {
            bbi.b(holder, "viewHolder");
            
            JSONObject item = this.videos.getJSONObject(position);
            if (item == null) return;
            
            String cover = item.getString("cover");
            if (!TextUtils.isEmpty(cover)) {
                nv.a().a(ach.c(MainApplication.a(), cover), holder.z());
            }
            
            String title = item.getString("title");
            if (!TextUtils.isEmpty(title)) {
                holder.A().setText(title);
            }
            
            String showTitle = item.getString("show_title");
            String tagName = item.getString("tag_name");
            if (holder.B() != null) {
                if ("live".equals(historyType)) {
                    if (!TextUtils.isEmpty(tagName)) {
                        holder.B().setText(tagName);
                        holder.B().setVisibility(View.VISIBLE);
                    } else {
                        holder.B().setVisibility(View.GONE);
                    }
                } else {
                    if (!TextUtils.isEmpty(showTitle)) {
                        holder.A().setMaxLines(2);
                        holder.B().setText(showTitle);
                        holder.B().setVisibility(View.VISIBLE);
                    } else {
                        holder.A().setMaxLines(3);
                        holder.B().setVisibility(View.GONE);
                    }
                }
            }
            
            int duration = item.getIntValue("duration");
            int progress = item.getIntValue("progress");
            String badge = item.getString("badge");
            if (holder.C() != null) {
                if ("live".equals(historyType)) {
                    if (!TextUtils.isEmpty(badge)) {
                        holder.C().setText(badge);
                        holder.C().setVisibility(View.VISIBLE);
                    } else {
                        holder.C().setVisibility(View.GONE);
                    }
                } else {
                    if (progress == -1) {
                        holder.C().setText("已看完");
                        holder.C().setVisibility(View.VISIBLE);
                    } else {
                        String durationStr = formatDuration(duration);
                        if (progress > 0) {
                            String progressStr = formatDuration(progress);
                            holder.C().setText(progressStr + "/" + durationStr);
                        } else {
                            holder.C().setText(durationStr);
                        }
                        holder.C().setVisibility(View.VISIBLE);
                    }
                }
            }
            
            long viewAt = item.getLongValue("view_at");
            if (holder.D() != null) {
                holder.D().setText(formatViewDate(viewAt * 1000));
                holder.D().setVisibility(View.VISIBLE);
            }
            
            holder.a.setTag(item);
            holder.a.setTag(R.id.position, Integer.valueOf(position));
            holder.a.setOnClickListener(this);
            holder.a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public void onFocusChange(View view, boolean hasFocus) {
                    if (hasFocus) {
                        Object tag = view.getTag();
                        if (tag instanceof JSONObject) {
                            JSONObject jsonItem = (JSONObject) tag;
                            JSONObject history = jsonItem.getJSONObject("history");
                            if (history != null) {
                                HistoryVideoFragment.currentAvid = history.getLongValue("oid");
                            }
                            Integer pos = (Integer) view.getTag(R.id.position);
                            if (pos != null) {
                                HistoryVideoFragment.currentPos = pos.intValue();
                            }
                        }
                    }
                }
            });
        }
        
        @Override
        public int a() {
            return this.videos.size();
        }
        
        public final void a(JSONArray list) {
            bbi.b(list, "list");
            this.videos.clear();
            this.videos.addAll(list);
            d();
        }
        
        public final void b(JSONArray list) {
            bbi.b(list, "list");
            int size = this.videos.size();
            this.videos.addAll(list);
            d(size);
        }
        
        public final void clear() {
            this.videos.clear();
            d();
        }
        
        public final void remove(BiliVideoDetail video) {
            if (video == null) return;
            for (int i = 0; i < this.videos.size(); i++) {
                JSONObject item = this.videos.getJSONObject(i);
                JSONObject history = item.getJSONObject("history");
                if (history != null && history.getLongValue("oid") == video.mAvid) {
                    this.videos.remove(i);
                    c(i);
                    return;
                }
            }
        }
        
        public final void removeByPosition(int position) {
            if (position < 0 || position >= this.videos.size()) return;
            this.videos.remove(position);
            d();
        }
        
        @Override
        public void onClick(View view) {
            bbi.b(view, "v");
            Object tag = view.getTag();
            if (tag instanceof JSONObject) {
                JSONObject item = (JSONObject) tag;
                JSONObject history = item.getJSONObject("history");
                if (history != null) {
                    Context context = view.getContext();
                    Activity activity = adl.a(context);
                    if (activity == null) return;
                    
                    if ("live".equals(historyType)) {
                        int liveStatus = item.getIntValue("live_status");
                        if (liveStatus == 1) {
                            mybl.BiliLiveContent liveContent = new mybl.BiliLiveContent();
                            liveContent.mCover = item.getString("cover");
                            liveContent.mTitle = item.getString("title");
                            liveContent.mUid = item.getLongValue("mid");
                            liveContent.mUname = item.getString("author_name");
                            liveContent.mRoomId = (int) history.getLongValue("oid");
                            
                            com.bilibili.tv.ui.live.player.LivePlayerActivity.lives = new ArrayList<mybl.BiliLiveContent>();
                            com.bilibili.tv.ui.live.player.LivePlayerActivity.lives.add(liveContent);
                            com.bilibili.tv.ui.live.player.LivePlayerActivity.live_index = 0;
                            activity.startActivity(com.bilibili.tv.ui.live.player.LivePlayerActivity.a(activity, liveContent));
                        } else {
                            android.widget.Toast.makeText(context, "未开播", android.widget.Toast.LENGTH_SHORT).show();
                        }
                    } else {
                        long avid = history.getLongValue("oid");
                        activity.startActivity(VideoDetailActivity.Companion.a(context, avid));
                    }
                }
            }
        }
        
        private String formatDate(long timestamp) {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.CHINA).format(new Date(timestamp));
        }
        
        private String formatViewDate(long timestamp) {
            java.util.Calendar now = java.util.Calendar.getInstance();
            java.util.Calendar date = java.util.Calendar.getInstance();
            date.setTimeInMillis(timestamp);
            
            SimpleDateFormat formatThisYear = new SimpleDateFormat("MM-dd HH:mm", Locale.CHINA);
            SimpleDateFormat formatFull = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.CHINA);
            
            if (now.get(java.util.Calendar.YEAR) == date.get(java.util.Calendar.YEAR)) {
                return formatThisYear.format(new Date(timestamp));
            } else {
                return formatFull.format(new Date(timestamp));
            }
        }
        
        private String formatDuration(int seconds) {
            if (seconds >= 3600) {
                return String.format("%d:%02d:%02d", seconds / 3600, (seconds % 3600) / 60, seconds % 60);
            } else {
                return String.format("%02d:%02d", seconds / 60, seconds % 60);
            }
        }
    }
    
    public static final class h extends adv implements View.OnFocusChangeListener {
        public static final a Companion = new a(null);
        private ScalableImageView n;
        private TextView o;
        private TextView p;
        private TextView q;
        private TextView r;
        private DrawRelativeLayout s;
        
        public h(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (ScalableImageView) a(view, R.id.img);
            this.o = (TextView) a(view, R.id.title);
            this.p = (TextView) a(view, R.id.show_title);
            this.q = (TextView) a(view, R.id.duration);
            this.r = (TextView) a(view, R.id.sub_title);
            this.s = (DrawRelativeLayout) a(view, R.id.draw);
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
        
        @Override
        public void onFocusChange(View view, boolean hasFocus) {
            bbi.b(view, "v");
            if (this.s != null) {
                this.s.setUpEnabled(hasFocus);
            }
        }
        
        public static final class a {
            private a() {
            }
            
            public a(bbg bbgVar) {
                this();
            }
            
            public final h a(ViewGroup viewGroup) {
                bbi.b(viewGroup, "parent");
                View view = LayoutInflater.from(viewGroup.getContext())
                        .inflate(R.layout.recycler_view_item_video_history, viewGroup, false);
                bbi.a(view, "view");
                return new h(view);
            }
        }
    }
}
