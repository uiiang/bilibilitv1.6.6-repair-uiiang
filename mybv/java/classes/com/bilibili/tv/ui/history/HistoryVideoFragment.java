package com.bilibili.tv.ui.history;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import bl.abd;
import bl.adl;
import bl.adv;
import bl.ady;
import bl.aj;
import bl.agd;
import bl.bbi;
import bl.bbg;
import bl.mg;
import bl.vo;
import bl.vm;
import bl.vn;
import bl.vu;
import mybl.CookieUtil;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.bilibili.okretro.GeneralResponse;
import com.bilibili.tv.R;
import com.bilibili.tv.api.history.BiliPlayerHistoryService;
import com.bilibili.tv.api.video.VideoApiService;
import com.bilibili.tv.api.video.BiliVideoDetail;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.ui.video.widget.VideoBadgeStyler;
import com.bilibili.tv.ui.video.widget.VideoCardCoverLoader;
import com.bilibili.tv.ui.video.widget.VideoCardIcons;
import com.bilibili.tv.ui.video.widget.VideoCardTexts;
import com.bilibili.tv.widget.DrawRelativeLayout;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import com.bilibili.tv.widget.side.SideRightGridLayoutManger;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import kotlin.TypeCastException;
import mybl.BiliLiveContent;

public final class HistoryVideoFragment extends ady {
    public static final String ARG_HISTORY_TYPE = "history_type";
    private static final String TAG = "HistoryVideoFragment";
    private static final int PAGE_SIZE = 30;
    // 首屏最少显示条数：过滤后不足该条数且服务端仍有新数据时，自动续拉下一页补齐
    private static final int MIN_DISPLAY_COUNT = 20;
    private static final int COLUMN_COUNT = 2;
    
    public static long currentAvid = -1;
    public static int currentPos = -1;
    
    private c adapter;
    private boolean isLoading = false;
    private boolean hasMore = true;
    private long cursorMax = 0;
    private long cursorViewAt = 0;
    private String cursorBusiness = "";
    // App历史接口（旧版x/v2/history）仅支持pn/ps页码翻页
    private int appPageNum = 1;
    // 已拉取条目去重key（business:oid）：pn页码翻页在观看新视频后页内容整体后移会出现重复条目
    private final HashSet<String> appSeenKeys = new HashSet<String>();
    // App接口是否已展示过数据（决定替换还是追加）
    private boolean appHasData = false;
    
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
        int paddingBottom = adl.b(R.dimen.px_306);
        recyclerView.setPadding(padding, padding, padding, paddingBottom);
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
        appPageNum = 1;
        appSeenKeys.clear();
        appHasData = false;
        hasMore = true;
        b();
    }
    
    private final void b() {
        loadHistoryData();
    }
    
    private void loadHistoryData() {
        if (isLoading) {
            return;
        }

        Activity activity = getActivity();
        if (activity == null || activity.isFinishing()) {
            isLoading = false;
            return;
        }

        mg account = mg.a(activity);
        if (account == null) {
            isLoading = false;
            return;
        }

        // App历史接口优先（已登录且有access_key时）：卡片字段与Web同构，
        // 目标是验证/使用App端角标字段（Web端充电专属条目badge为空串）
        String accessKey = account.e();
        if (!TextUtils.isEmpty(accessKey)) {
            loadAppHistory(accessKey);
            return;
        }

        loadWebHistory();
    }

    /**
     * App历史接口加载（旧版x/v2/history，仅支持pn/ps页码翻页，不支持游标）。
     * 请求由vo.a()创建（仅挂ApiLog/WbiSign拦截器，不带appkey签名），access_key直接鉴权可用；
     * 之前用安卓appkey手动签名会-663鉴权失败。
     * type筛选不生效，本地按history.business过滤；失败回退Web接口。
     * 首屏补齐：过滤后总条数不足MIN_DISPLAY_COUNT且服务端仍有新数据时，自动续拉下一页，
     * 终止条件：够MIN_DISPLAY_COUNT、去重后无新条目（服务端数据耗尽/整页重复）或空页。
     */
    private void loadAppHistory(final String accessKey) {
        isLoading = true;
        // TODO 调试日志：验证App历史接口分页参数（已验证：pn/ps页码翻页生效，2026-11-02）
        // Log.i(TAG, "[App历史] type=" + historyType + " pn=" + appPageNum + " ps=" + PAGE_SIZE);
        ((VideoApiService) vo.a(VideoApiService.class))
            .getVideoHistory(accessKey, appPageNum, PAGE_SIZE)
            .a(new vu<GeneralResponse<JSONArray>>() {
                @Override
                public GeneralResponse<JSONArray> convert(okhttp3.ResponseBody responseBody) throws java.io.IOException {
                    String rawResponse = responseBody.string();
                    com.alibaba.fastjson.JSONObject jSONObject = com.alibaba.fastjson.JSON.parseObject(rawResponse);
                    GeneralResponse<JSONArray> response = new GeneralResponse<>();
                    response.code = jSONObject.getIntValue("code");
                    if (response.code == 0) {
                        response.data = jSONObject.getJSONArray("data");
                    }
                    return response;
                }
            })
            .a(new vm<GeneralResponse<JSONArray>>() {
                @Override
                public boolean isCancel() {
                    return getActivity() == null || getActivity().isFinishing() || adapter == null;
                }

                @Override
                public void onError(Throwable th) {
                    isLoading = false;
                    Log.i(TAG, "App history load failed: " + th.getMessage() + ", fallback to web");
                    loadWebHistory();
                }

                @Override
                public void onSuccess(GeneralResponse<JSONArray> result) {
                    if (adapter == null) {
                        return;
                    }
                    j();
                    isLoading = false;

                    JSONArray list = (result != null) ? result.data : null;
                    if (list == null) {
                        // 接口失败：回退Web接口，保证列表可用
                        Log.i(TAG, "App history load failed, fallback to web");
                        loadWebHistory();
                        return;
                    }

                    if (list.isEmpty()) {
                        hasMore = false;
                        if (adapter.a() == 0) {
                            l();
                            HistoryVideoFragment.this.a(R.string.nothing_show);
                        }
                        return;
                    }

                    // TODO 调试日志：验证App历史接口字段形态（已验证：badge/business字段正常，2026-11-02）
                    // Log.i(TAG, "[App历史调试] item0=" + list.getJSONObject(0).toJSONString());
                    // for (int i = 0; i < list.size(); i++) {
                    //     JSONObject it = list.getJSONObject(i);
                    //     Log.i(TAG, "[App历史调试] business=" + it.getJSONObject("history").getString("business")
                    //             + " badge=" + it.getString("badge") + " title=" + it.getString("title"));
                    // }

                    // 成功拉取一页后页码推进（递归续拉/滚动加载都取下一页）。
                    // 注意：服务端实际每页返回条数不稳定（请求ps=30只返回约18-20条），
                    // 不能用"不足一页"判断最后一页，改用去重后无新条目判断（见下方deduped处理）
                    appPageNum++;

                    // 去重：pn页码翻页在观看新视频后页内容会整体后移出现重复条目，
                    // 记录所有已拉取条目的key（business:oid），重复条目不再展示
                    JSONArray deduped = new JSONArray();
                    for (int i = 0; i < list.size(); i++) {
                        JSONObject it = list.getJSONObject(i);
                        JSONObject h = it.getJSONObject("history");
                        String key = (h != null ? h.getString("business") : "") + ":"
                                + (h != null ? h.getLongValue("oid") : 0);
                        if (appSeenKeys.add(key)) {
                            deduped.add(it);
                        }
                    }

                    if (deduped.isEmpty()) {
                        // 整页无新条目（已翻到尽头或内容后移全部重复）：停止加载
                        hasMore = false;
                        if (adapter.a() == 0) {
                            l();
                            HistoryVideoFragment.this.a(R.string.nothing_show);
                        }
                        return;
                    }

                    // type筛选实测不生效（archive请求返回视频+直播混合），
                    // 本地按每条数据的history.business过滤，保证左侧筛选正确
                    JSONArray filtered = new JSONArray();
                    for (int i = 0; i < deduped.size(); i++) {
                        JSONObject it = deduped.getJSONObject(i);
                        JSONObject h = it.getJSONObject("history");
                        String biz = h != null ? h.getString("business") : null;
                        if ("live".equals(historyType)) {
                            if ("live".equals(biz)) {
                                filtered.add(it);
                            }
                        } else {
                            if (!"live".equals(biz)) {
                                filtered.add(it);
                            }
                        }
                    }

                    if (!filtered.isEmpty()) {
                        hasMore = true;
                        if (appHasData) {
                            adapter.b(filtered);
                        } else {
                            adapter.a(filtered);
                            appHasData = true;
                        }
                        updateHeaderInfo();
                    }

                    // 首屏补齐：过滤后总条数不足MIN_DISPLAY_COUNT（服务端不按ps给满页+直播记录
                    // 被本地过滤都会导致页数据缩水），且本页有新条目（服务端还有数据）时，
                    // 自动续拉下一页，直到够MIN_DISPLAY_COUNT或没有新数据（deduped为空时终止）
                    if (adapter.a() < MIN_DISPLAY_COUNT) {
                        loadAppHistory(accessKey);
                    }
                }
            });
    }

    private void loadWebHistory() {
        Activity activity = getActivity();
        if (activity == null || activity.isFinishing()) {
            isLoading = false;
            return;
        }

        mg account = mg.a(activity);
        if (account == null) {
            isLoading = false;
            return;
        }

        String cookie = CookieUtil.getFullCookieWithDevice(account);
        if (TextUtils.isEmpty(cookie)) {
            isLoading = false;
            return;
        }

        isLoading = true;

        ((BiliPlayerHistoryService) vo.a(BiliPlayerHistoryService.class))
            .getVideoHistoryList(cookie, cursorMax, cursorViewAt, cursorBusiness, historyType, PAGE_SIZE)
            .a(new vn<JSONObject>() {
                @Override
                public boolean isCancel() {
                    return getActivity() == null || getActivity().isFinishing() || adapter == null;
                }
                
                @Override
                public void onError(Throwable th) {
                    isLoading = false;
                    adl.a.a(th, getActivity());
                }
                
                @Override
                public void a(JSONObject response) {
                    if (response != null) {
                        String responseStr = response.toString();
                        // android.util.Log.i("HistoryApi", "========== getVideoHistoryList RESPONSE ==========");
                        int maxLogSize = 1000;
                        for (int i = 0; i < responseStr.length(); i += maxLogSize) {
                            if (i + maxLogSize < responseStr.length()) {
                                // android.util.Log.i("HistoryApi", responseStr.substring(i, i + maxLogSize));
                            } else {
                                // android.util.Log.i("HistoryApi", responseStr.substring(i));
                            }
                        }
                        // android.util.Log.i("HistoryApi", "========== getVideoHistoryList RESPONSE END ==========");
                    }
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
                    long oldCursorMax = cursorMax;
                    
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
                        boolean isFirstLoad = (oldCursorMax == 0);
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
            hintSort.setText(bl.abd.get_more_action_hint(getActivity(), "删除历史记录"));
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
        
        String cookie = CookieUtil.getFullCookieWithDevice(account);
        String csrf = CookieUtil.getBiliJct(account);
        
        ((BiliPlayerHistoryService) vo.a(BiliPlayerHistoryService.class))
            .clearVideoHistories(csrf, cookie)
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
        
        String cookie = CookieUtil.getFullCookieWithDevice(account);
        String csrf = CookieUtil.getBiliJct(account);
        String kid = historyType + "_" + String.valueOf(video.mAvid);
        
        ((BiliPlayerHistoryService) vo.a(BiliPlayerHistoryService.class))
            .clearVideoHistories(kid, csrf, cookie)
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
        
        String cookie = CookieUtil.getFullCookieWithDevice(account);
        String csrf = CookieUtil.getBiliJct(account);
        String kid = historyType + "_" + String.valueOf(currentAvid);
        
        ((BiliPlayerHistoryService) vo.a(BiliPlayerHistoryService.class))
            .clearVideoHistories(kid, csrf, cookie)
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

            // 按条目自身的history.business分支（App接口返回混合列表，页面historyType不可靠）
            JSONObject itemHistory = item.getJSONObject("history");
            String itemBusiness = itemHistory != null ? itemHistory.getString("business") : null;

            VideoCardCoverLoader.load(null, holder.z(), item.getString("cover"));

            String title = item.getString("title");
            if (!TextUtils.isEmpty(title)) {
                holder.A().setText(title);
            }

            String showTitle = item.getString("show_title");
            String authorName = item.getString("author_name");
            if (TextUtils.isEmpty(authorName)) {
                // App历史接口的UP主字段是name（Web是author_name）
                authorName = item.getString("name");
            }
            String tagName = item.getString("tag_name");
            if (holder.B() != null) {
                if ("live".equals(itemBusiness)) {
                    if (!TextUtils.isEmpty(authorName)) {
                        holder.B().setText(authorName);
                        android.graphics.drawable.Drawable upIcon = bl.adl.a.c(R.drawable.ic_video_info_up);
                        int iconSize = bl.adl.b(R.dimen.px_26);
                        if (upIcon != null) {
                            upIcon.setBounds(0, 0, iconSize, iconSize);
                        }
                        holder.B().setCompoundDrawables(upIcon, null, null, null);
                        holder.B().setVisibility(View.VISIBLE);
                    } else {
                        holder.B().setVisibility(View.GONE);
                    }
                } else {
                    if (!TextUtils.isEmpty(showTitle)) {
                        holder.A().setMaxLines(3);
                        holder.B().setText(showTitle);
                        holder.B().setCompoundDrawables(null, null, null, null);
                        holder.B().setVisibility(View.VISIBLE);
                    } else {
                        holder.A().setMaxLines(3);
                        if (!TextUtils.isEmpty(authorName)) {
                            holder.B().setText(authorName);
                            VideoCardIcons.setUp(holder.B(), VideoCardIcons.SIZE_COMPACT, R.color.white_50);
                            holder.B().setVisibility(View.VISIBLE);
                        } else {
                            holder.B().setVisibility(View.GONE);
                        }
                    }
                }
            }
            
            int duration = item.getIntValue("duration");
            int progress = item.getIntValue("progress");
            String badge = item.getString("badge");

            if ("live".equals(itemBusiness)) {
                // 直播条目：右上角显示直播状态角标（badge优先，其次live_status判断）
                String liveBadge = badge;
                if (TextUtils.isEmpty(liveBadge)) {
                    int liveStatus = item.getIntValue("live_status");
                    liveBadge = liveStatus == 1 ? "直播中" : "未开播";
                }
                // 未开播：黑色半透明背景；其余（直播中/服务端badge）沿用默认B站粉
                if ("未开播".equals(liveBadge)) {
                    VideoBadgeStyler.apply(holder.E(), liveBadge, "#99000000", false);
                } else {
                    VideoBadgeStyler.apply(holder.E(), liveBadge, null, false);
                }
                if (holder.C() != null) {
                    holder.C().setVisibility(View.GONE);
                }
            } else {
                // 视频条目：右上角充电专属等角标（复用详情页卡片角标渲染：
                // 右上/左下圆角、默认B站粉#FB7299）+ 底部进度/看完状态
                VideoBadgeStyler.apply(holder.E(), badge, null, false);
                if (holder.C() != null) {
                    if (progress == -1) {
                        holder.C().setText("已看完");
                        holder.C().setVisibility(View.VISIBLE);
                    } else {
                        String durationStr = formatDuration(duration);
                        String progressStr = formatDuration(progress);
                        holder.C().setText(progressStr + "/" + durationStr);
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
                    
                    if ("live".equals(history.getString("business"))) {
                        // 按条目自身business分支（App接口返回混合列表，页面historyType不可靠）
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
                        String business = history.getString("business");
                        String cover = item.getString("cover");
                        long avid = history.getLongValue("oid");
                        if ("pgc".equals(business)) {
                            // Web历史接口的pgc条目kid=剧集ssid；App历史接口（x/v2/history）
                            // 的pgc条目不含kid，直接传"0"会导致详情页加载season_id=0失败并退出，
                            // 故kid无效时回落到avid入口（history.oid=该集avid）：
                            // 详情页UGC入口加载/x/v2/view后由redirect_url/bangumi识别为PGC并解析season_id，
                            // 与稍后再看页的PGC回落路径一致。
                            long seasonId = item.getLongValue("kid");
                            long epId = history.getLongValue("epid");
                            Log.i(TAG, "[PGC_CLICK] kid=" + seasonId + ", oid=" + avid + ", epid=" + epId + ", cover=" + cover);
                            if (seasonId > 0) {
                                activity.startActivity(VideoDetailActivity.Companion.a(context, String.valueOf(seasonId), cover));
                            } else if (avid > 0) {
                                activity.startActivity(VideoDetailActivity.Companion.a(context, avid, cover));
                            } else {
                                android.widget.Toast.makeText(context, "视频不存在", android.widget.Toast.LENGTH_SHORT).show();
                            }
                        } else {
                            Log.i(TAG, "UGC video: avid=" + avid + ", cover=" + cover);
                            activity.startActivity(VideoDetailActivity.Companion.a(context, avid, cover));
                        }
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
            return VideoCardTexts.formatDuration(seconds);
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
        private TextView t;
        
        public h(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (ScalableImageView) a(view, R.id.img);
            this.o = (TextView) a(view, R.id.title);
            this.p = (TextView) a(view, R.id.show_title);
            this.q = (TextView) a(view, R.id.duration);
            this.r = (TextView) a(view, R.id.sub_title);
            this.s = (DrawRelativeLayout) a(view, R.id.draw);
            this.t = (TextView) a(view, R.id.badge);
            
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

        public final TextView E() {
            return this.t;
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
