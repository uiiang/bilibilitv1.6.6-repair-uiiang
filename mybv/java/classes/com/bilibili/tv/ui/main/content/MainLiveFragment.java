package com.bilibili.tv.ui.main.content;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.main.MainRecommendEx;
import com.bilibili.tv.ui.live.player.LivePlayerActivity;
import com.bilibili.tv.ui.video.widget.VideoBadgeStyler;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import mybl.BiliLiveContent;
import mybl.CookieUtil;
import mybl.LogUtil;
import bl.*;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public final class MainLiveFragment extends BaseVideoListFragment {

    private static final String URI_LIVE_CATEGORY = "bilibili_yst://live_category";

    /** getListV2 每页固定 15 条（page_size 参数服务端忽略） */
    private static final int LIVE_PAGE_SIZE = 15;

    /** 推荐流没有真正的终点（has_more 恒为 1），限制最大页数避免无限加载 */
    private static final int MAX_LIVE_PAGE = 60;

    /** 关注模块标题，仅用于卡片角标展示 */
    private static final String MODULE_TITLE_FOLLOW = "我的关注";

    public static final Companion Companion = new Companion(null);
    public static MainLiveFragment _this;
    private List<BiliLiveContent> liveList = new ArrayList<>();

    /** 已加载的房间 id，翻页去重，避免不同页返回相同房间导致播放器下标错位 */
    private final Set<Integer> liveRoomIds = new HashSet<>();

    /** 与 liveList 对齐的 pendant 角标文字（左上角），null 表示没有接口角标 */
    private List<String> livePendantTexts = new ArrayList<>();

    /** 与 liveList 对齐的 pendant 角标背景色，null 表示使用默认角标背景 */
    private List<String> liveBadgeColors = new ArrayList<>();

    /** 当前已成功加载的页码，只在请求成功后更新，避免失败时跳页 */
    private int livePage = 1;

    /** 请求代次：刷新时递增，旧响应自动作废 */
    private int requestToken = 0;

    public static class Companion {
        private Companion() {}

        public Companion(bbg bbgVar) {
            this();
        }

        public final MainLiveFragment a() {
            _this = new MainLiveFragment();
            return _this;
        }
    }

    @Override
    protected String getPageViewEvent() {
        return "tv_home_live_pageview";
    }

    @Override
    protected String getClickEventName() {
        return "ott-platform.home.live.0.click";
    }

    @Override
    protected String getLogTag() {
        return "LiveRecommend";
    }

    @Override
    protected int getColumnCount() {
        return abd.get_home_column(getActivity());
    }

    @Override
    protected boolean hideBottomInfo() {
        return true;
    }

    public void getLiveVideos() {
        fetchData(false);
    }

    @Override
    protected void fetchData(boolean isLoadMore) {
        if (isLoadMore) {
            if (this.isLoadingMore || !this.hasMoreData) {
                return;
            }
            if (this.livePage >= MAX_LIVE_PAGE) {
                this.hasMoreData = false;
                return;
            }
            this.isLoadingMore = true;
            requestLiveList(this.livePage + 1, true, this.requestToken);
            return;
        }

        this.requestToken++;
        this.livePage = 1;
        this.hasMoreData = true;
        this.isLoadingMore = false;
        requestLiveList(1, false, this.requestToken);
    }

    /**
     * 直播列表暂不启用基类的预取机制：预取结果只缓存 adapter 数据，
     * 无法同步播放器队列 liveList，会导致点击位置与播放列表下标错位。
     * 这里直接清掉预取标记，触底时走 fetchData(true) 正常翻页。
     */
    @Override
    protected void fetchDataForPrefetch() {
        this.prefetching = false;
    }

    private void requestLiveList(int page, boolean append, int token) {
        String cookie = CookieUtil.getFullCookieWithDevice(mg.a(MainApplication.a()));
        LogUtil.i(getLogTag(), "request live list page=" + page + ", append=" + append);
        ((aeh) vo.a(aeh.class))
            .getLiveRecommendList(cookie, "web", page, "444.7")
            .a(new LiveResponse(page, append, token));
    }

    @Override
    protected void onSmallCardClick(View view, String uri, int position) {
        if (URI_LIVE_CATEGORY.equals(uri)) {
            Activity activity = adl.a(view.getContext());
            if (activity != null) {
                com.bilibili.tv.ui.live.LiveActivity.a(activity);
            }
            return;
        }

        int liveIndex = position - 1;
        if (liveIndex >= 0 && liveIndex < liveList.size()) {
            BiliLiveContent liveContent = liveList.get(liveIndex);
            if (liveContent != null) {
                Activity activity = adl.a(view.getContext());
                if (activity != null) {
                    LivePlayerActivity.lives = this.liveList;
                    LivePlayerActivity.live_index = liveIndex;
                    activity.startActivity(LivePlayerActivity.a(activity, liveContent));
                }
            }
        }
    }

    @Override
    protected String getCoverUrl(int position) {
        int liveIndex = position - 1;
        if (liveIndex >= 0 && liveIndex < liveList.size()) {
            BiliLiveContent liveContent = liveList.get(liveIndex);
            return liveContent != null ? liveContent.mCover : null;
        }
        return null;
    }

    private MainRecommendEx.Content createLiveCategoryEntry(Context context) {
        MainRecommendEx.Content content = new MainRecommendEx.Content();
        content.setCardType("live_category_entry");
        content.setCardGoto("live_category");
        content.setTitle(context.getString(R.string.live));
        content.setUri(URI_LIVE_CATEGORY);
        return content;
    }

    private MainRecommendEx.Content parseLiveItem(JSONObject item, BiliLiveContent liveContent) {
        int roomId = item.getIntValue("roomid");

        MainRecommendEx.Content content = new MainRecommendEx.Content();
        content.setCardType("small_live");
        content.setCardGoto("live");
        content.setJumpId(Long.valueOf(roomId));
        content.setCover(item.getString("cover"));
        content.setTitle(item.getString("title"));
        content.setUri("bilibili_yst://live/" + roomId);
        content.setOwnerName(item.getString("uname"));
        long online = item.getLongValue("online");
        content.setPubdate(-online - 1);
        content.setDuration(0);

        liveContent.mRoomId = roomId;
        liveContent.mTitle = item.getString("title");
        liveContent.mCover = item.getString("cover");
        liveContent.mUname = item.getString("uname");
        liveContent.mFace = item.getString("face");
        liveContent.mOnline = online;
        liveContent.mUid = item.getLongValue("uid");
        liveContent.mArea = item.getString("area_v2_name");
        liveContent.mAreaId = item.getIntValue("area_v2_id");

        JSONObject verify = item.getJSONObject("verify");
        if (verify != null) {
            liveContent.mCorner = verify.getString("desc");
        }

        return content;
    }

    /**
     * 解析房间数组并按 roomid 去重后写入输出列表。
     * badge 非空时给卡片打右上角角标（我的关注）；
     * pendant_Info 的文字与颜色单独写入 outPendantTexts/outBadgeColors（左上角角标），两者互不覆盖。
     * 两个颜色/文字列表均与 outLives 一一对应，null 表示无数据。
     */
    private int collectRooms(JSONArray roomArray, String badge,
                             List<MainRecommendEx.Content> outContents,
                             List<BiliLiveContent> outLives,
                             List<String> outPendantTexts,
                             List<String> outBadgeColors) {
        if (roomArray == null) {
            return 0;
        }
        int added = 0;
        for (int i = 0; i < roomArray.size(); i++) {
            JSONObject item = roomArray.getJSONObject(i);
            if (item == null || item.getBooleanValue("is_ad")) {
                continue;
            }
            int roomId = item.getIntValue("roomid");
            // add 返回 false 表示已加载过，直接跳过，保证 adapter 与 liveList 下标一致
            if (roomId <= 0 || !this.liveRoomIds.add(Integer.valueOf(roomId))) {
                continue;
            }
            BiliLiveContent liveContent = new BiliLiveContent();
            MainRecommendEx.Content content = parseLiveItem(item, liveContent);

            LiveBadgeInfo pendant = parsePendantBadge(item);
            outPendantTexts.add(pendant != null ? pendant.text : null);
            outBadgeColors.add(pendant != null ? pendant.bgColor : null);

            // 右上角“我的关注”角标独立于左上角 pendant 角标
            if (badge != null) {
                content.setBadge(badge);
            }

            outContents.add(content);
            outLives.add(liveContent);
            added++;
        }
        return added;
    }

    /**
     * 解析封面角标 pendant_Info。
     * 实际返回是 {"1":{...},"2":{...}} 形式的对象，优先取 key=2；
     * 也兼容数组结构，取第一个 text 非空的元素。
     */
    private LiveBadgeInfo parsePendantBadge(JSONObject item) {
        Object raw = item.get("pendant_Info");
        if (raw == null) {
            raw = item.get("pendant_info");
        }
        if (raw instanceof JSONObject) {
            JSONObject pendants = (JSONObject) raw;
            LiveBadgeInfo info = fillBadgeInfo(pendants.getJSONObject("2"));
            if (info == null) {
                info = fillBadgeInfo(firstPendantWithText(pendants));
            }
            return info;
        }
        if (raw instanceof JSONArray) {
            JSONArray array = (JSONArray) raw;
            for (int i = 0; i < array.size(); i++) {
                LiveBadgeInfo info = fillBadgeInfo(array.getJSONObject(i));
                if (info != null) {
                    return info;
                }
            }
        }
        return null;
    }

    private JSONObject firstPendantWithText(JSONObject pendants) {
        if (pendants == null) {
            return null;
        }
        for (Object value : pendants.values()) {
            if (value instanceof JSONObject) {
                JSONObject pendant = (JSONObject) value;
                if (!TextUtils.isEmpty(pendant.getString("text"))) {
                    return pendant;
                }
            }
        }
        return null;
    }

    private LiveBadgeInfo fillBadgeInfo(JSONObject pendant) {
        if (pendant == null) {
            return null;
        }
        String text = pendant.getString("text");
        if (TextUtils.isEmpty(text)) {
            return null;
        }
        LiveBadgeInfo info = new LiveBadgeInfo();
        info.text = text;
        info.bgColor = pendant.getString("bg_color");
        return info;
    }

    private static final class LiveBadgeInfo {
        String text;
        String bgColor;
    }

    private class LiveResponse extends vn<JSONObject> {

        private final int requestPage;
        private final boolean append;
        private final int token;

        LiveResponse(int requestPage, boolean append, int token) {
            this.requestPage = requestPage;
            this.append = append;
            this.token = token;
        }

        @Override
        public void a(JSONObject data) {
            if (this.token != MainLiveFragment.this.requestToken) {
                MainLiveFragment.this.isLoadingMore = false;
                return;
            }
            if (MainLiveFragment.this.adapter == null || data == null) {
                MainLiveFragment.this.isLoadingMore = false;
                return;
            }

            JSONArray roomList = data.getJSONArray("list");
            int rawSize = roomList != null ? roomList.size() : 0;
            boolean hasMore = data.getIntValue("has_more") == 1;

            if (this.append) {
                ArrayList<MainRecommendEx.Content> newContents = new ArrayList<>();
                ArrayList<BiliLiveContent> newLiveList = new ArrayList<>();
                ArrayList<String> newPendantTexts = new ArrayList<>();
                ArrayList<String> newBadgeColors = new ArrayList<>();
                int added = collectRooms(roomList, null, newContents, newLiveList, newPendantTexts, newBadgeColors);

                MainLiveFragment.this.livePage = this.requestPage;
                MainLiveFragment.this.isLoadingMore = false;
                MainLiveFragment.this.hasMoreData = hasMore
                        && rawSize >= LIVE_PAGE_SIZE
                        && MainLiveFragment.this.livePage < MAX_LIVE_PAGE;
                LogUtil.i(getLogTag(), "live list page=" + this.requestPage + ", size=" + rawSize
                        + ", new=" + added + ", hasMore=" + MainLiveFragment.this.hasMoreData);

                if (newContents.isEmpty()) {
                    return;
                }
                MainLiveFragment.this.adapter.appendData(newContents);
                MainLiveFragment.this.liveList.addAll(newLiveList);
                MainLiveFragment.this.livePendantTexts.addAll(newPendantTexts);
                MainLiveFragment.this.liveBadgeColors.addAll(newBadgeColors);
                return;
            }

            // 首屏：分区入口 -> 我的关注 -> 推荐
            MainLiveFragment.this.liveRoomIds.clear();

            ArrayList<MainRecommendEx.Content> ugcList = new ArrayList<>();
            ArrayList<BiliLiveContent> newLiveList = new ArrayList<>();
            ArrayList<String> newPendantTexts = new ArrayList<>();
            ArrayList<String> newBadgeColors = new ArrayList<>();
            ugcList.add(createLiveCategoryEntry(getActivity()));

            JSONObject myIdols = data.getJSONObject("my_idols");
            JSONArray followList = myIdols != null ? myIdols.getJSONArray("list") : null;
            int followCount = collectRooms(followList, MODULE_TITLE_FOLLOW, ugcList, newLiveList,
                    newPendantTexts, newBadgeColors);
            int recommendCount = collectRooms(roomList, null, ugcList, newLiveList,
                    newPendantTexts, newBadgeColors);

            MainLiveFragment.this.livePage = 1;
            MainLiveFragment.this.isLoadingMore = false;
            MainLiveFragment.this.hasMoreData = hasMore
                    && rawSize >= LIVE_PAGE_SIZE
                    && MainLiveFragment.this.livePage < MAX_LIVE_PAGE;
            MainLiveFragment.this.adapter.setData(new ArrayList<MainRecommendEx.Content>(), ugcList);
            MainLiveFragment.this.liveList = newLiveList;
            MainLiveFragment.this.livePendantTexts = newPendantTexts;
            MainLiveFragment.this.liveBadgeColors = newBadgeColors;

            LogUtil.i(getLogTag(), "first page: follow=" + followCount
                    + ", recommend=" + recommendCount + ", hasMore=" + MainLiveFragment.this.hasMoreData);
        }

        @Override
        public void onError(Throwable t) {
            LogUtil.e(getLogTag(), "request live list page=" + this.requestPage + " failed: "
                    + (t != null ? t.getMessage() : ""));
            MainLiveFragment.this.isLoadingMore = false;
        }
    }

    @Override
    public void a(RecyclerView recyclerView, Bundle bundle) {
        super.a(recyclerView, bundle);
        if (this.adapter != null) {
            final MainLiveFragment fragment = this;
            final int columnCount = abd.get_home_column(getActivity());
            this.adapter = new VideoListAdapter(fragment) {
                @Override
                public void a(adv holder, int position) {
                    if (fragment.ugcList == null || position >= fragment.ugcList.size()) {
                        return;
                    }

                    MainRecommendEx.Content content = fragment.ugcList.get(position);
                    if (content == null) {
                        return;
                    }

                    if (position == 0 && URI_LIVE_CATEGORY.equals(content.getUri())) {
                        holder.a.setTag(R.id.position, Integer.valueOf(position));
                        holder.a.setTag(content.getUri());

                        if (holder instanceof SmallCardViewHolder) {
                            SmallCardViewHolder vh = (SmallCardViewHolder) holder;
                            vh.getTitleView().setText(content.getTitle());
                            vh.getCoverView().setImageResource(R.drawable.ic_tv);
                            vh.getUpView().setVisibility(View.GONE);
                            if (vh.getBottomInfoLayout() != null) {
                                vh.getBottomInfoLayout().setVisibility(View.GONE);
                            }
                            if (vh.getBadgeView() != null) {
                                vh.getBadgeView().setVisibility(View.GONE);
                            }
                            vh.getPubdateView().setVisibility(View.GONE);

                            if (columnCount == 3 || columnCount == 4) {
                                int screenWidth = holder.a.getResources().getDisplayMetrics().widthPixels;
                                int horizontalPadding = adl.b(R.dimen.px_50) * 2 + adl.b(R.dimen.px_20) + adl.b(R.dimen.px_10);
                                int itemWidth = (screenWidth - horizontalPadding) / columnCount;
                                int imageHeight = (int) (itemWidth * 0.56f);
                                ViewGroup.LayoutParams imgParams = vh.getCoverView().getLayoutParams();
                                if (imgParams != null) {
                                    imgParams.height = imageHeight;
                                }
                            }
                        }
                        return;
                    }

                    super.a(holder, position);
                    if (holder instanceof SmallCardViewHolder) {
                        bindLiveExtras((SmallCardViewHolder) holder, position);
                    }
                }
            };
            recyclerView.setAdapter(this.adapter);
        }
    }

    /**
     * 复用卡片封面上的原有区域：
     * - badge：tag_text（布局中的角标位置），pendant_Info 有值时用接口下发的文字和背景色；
     * - 底部信息条：bottom_info_layout，右侧 duration 位显示 area_v2_name，隐藏播放/弹幕数。
     * 不新增任何布局。
     */
    private void bindLiveExtras(SmallCardViewHolder vh, int position) {
        int liveIndex = position - 1;
        if (liveIndex < 0 || liveIndex >= liveList.size()) {
            return;
        }

        // 右上角“我的关注”角标由基类根据 content.badge 渲染，这里只处理左上角 pendant 角标
        TextView pendantBadge = ensurePendantBadge(vh);
        if (pendantBadge != null) {
            String pendantText = liveIndex < livePendantTexts.size() ? livePendantTexts.get(liveIndex) : null;
            String pendantColor = liveIndex < liveBadgeColors.size() ? liveBadgeColors.get(liveIndex) : null;
            VideoBadgeStyler.applyLeft(pendantBadge, pendantText, pendantColor, false);
        }

        View bottomInfo = vh.getBottomInfoLayout();
        if (bottomInfo == null) {
            return;
        }
        BiliLiveContent liveContent = liveList.get(liveIndex);
        String areaName = liveContent != null ? liveContent.mArea : null;
        if (TextUtils.isEmpty(areaName)) {
            bottomInfo.setVisibility(View.GONE);
            return;
        }
        bottomInfo.setVisibility(View.VISIBLE);
        vh.getPlayView().setVisibility(View.GONE);
        vh.getDanmakuView().setVisibility(View.GONE);
        vh.getDurationView().setVisibility(View.VISIBLE);
        vh.getDurationView().setText(areaName);
    }

    /**
     * 左上角 pendant 角标。
     * 卡片布局只有一个右上角文本角标（tag_text），为了同时显示右上角“我的关注”，
     * 由 VideoBadgeStyler 在封面 FrameLayout 内复用同样式懒创建一个左上角 TextView。
     */
    private TextView ensurePendantBadge(SmallCardViewHolder vh) {
        return VideoBadgeStyler.ensureLeftBadge(vh.getBadgeView(), vh.getCoverView());
    }
}
