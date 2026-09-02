package com.bilibili.tv.ui.main.content;

import android.app.Activity;
import android.content.ContentUris;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.main.MainRecommendEx;
import com.bilibili.tv.api.BiliApiService;
import com.bilibili.tv.api.main.MainRecommend;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import tv.danmaku.android.log.BLog;

import bl.*;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import mybl.AppRecommendLoader;
import mybl.MyBiliApiService;
import mybl.CookieUtil;

public final class MainRecommendFragment extends BaseVideoListFragment {

    public static final Companion Companion = new Companion(null);
    public static MainRecommendFragment _this;
    public static int fresh_idx = 0;
    /** App推荐游标（响应items[].idx），与Web页码游标fresh_idx相互独立 */
    private static long appFeedIdx = 0;
    /** App源未登录回退提示只弹一次（参考项目BT同款策略） */
    private static boolean appFallbackToastShown = false;
    
    public static class Companion {
        private Companion() {}
        
        public Companion(bbg bbgVar) {
            this();
        }
        
        public final MainRecommendFragment a() {
            _this = new MainRecommendFragment();
            return _this;
        }
    }
    
    @Override
    protected String getPageViewEvent() {
        return "tv_home_recommend_pageview";
    }
    
    @Override
    protected String getClickEventName() {
        return "ott-platform.home.recommend.0.click";
    }
    
    @Override
    protected String getLogTag() {
        return "MainRecommend";
    }
    
    @Override
    public void onDestroy() {
        // 关键修复：清空静态引用，避免持有已销毁的Fragment/View树/Activity上下文导致内存泄漏
        if (_this == this) {
            _this = null;
        }
        super.onDestroy();
    }
    
    @Override
    protected int getColumnCount() {
        return abd.get_home_column(getActivity());
    }
    
    public void getRecommendVideos() {
        fetchData(false);
    }
    
    @Override
    protected void fetchData(boolean isLoadMore) {
        if (this.isLoadingMore && isLoadMore) {
            return;
        }

        if (!isLoadMore) {
            this.hasMoreData = true;
        } else {
            this.isLoadingMore = true;
        }

        // 推荐接口=App：前提是已登录（有access_key，参考项目BT同款），未登录回退Web并提示
        if (abd.get_recommend_api_type(getActivity()) == abd.RECOMMEND_API_APP) {
            String accessKey = mg.a(MainApplication.a()).e();
            if (accessKey != null && !accessKey.isEmpty()) {
                if (!isLoadMore) {
                    appFeedIdx = 0; // 刷新重置游标
                }
                loadAppFeed(isLoadMore, false);
                return;
            }
            if (!appFallbackToastShown && getActivity() != null) {
                appFallbackToastShown = true;
                Toast.makeText(getActivity(), "App个性化推荐需登录后生效，已切换到Web推荐", Toast.LENGTH_LONG).show();
            }
        }

        mg biliAccount = mg.a(MainApplication.a());
        String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
        ((MyBiliApiService) vo.a(MyBiliApiService.class))
            .recommendVideos(20, (cookie == null || cookie.isEmpty()) ? this.fresh_idx++ : 0, cookie)
            .a(new RecommendsResponse(isLoadMore));
    }

    @Override
    protected void fetchDataForPrefetch() {
        if (this.adapter == null) {
            this.prefetching = false;
            return;
        }
        // 推荐接口=App且已登录：走App接口预取
        if (abd.get_recommend_api_type(getActivity()) == abd.RECOMMEND_API_APP) {
            String accessKey = mg.a(MainApplication.a()).e();
            if (accessKey != null && !accessKey.isEmpty()) {
                loadAppFeed(false, true);
                return;
            }
        }
        // 预取下一页：请求当前 fresh_idx，成功缓存时才递增页码（避免预取失败跳页）
        mg biliAccount = mg.a(MainApplication.a());
        String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
        ((MyBiliApiService) vo.a(MyBiliApiService.class))
            .recommendVideos(20, (cookie == null || cookie.isEmpty()) ? this.fresh_idx : 0, cookie)
            .a(new RecommendsResponse(true, true));
    }

    /**
     * App推荐接口加载（参考项目BT方案）：子线程请求+解析，主线程更新列表。
     * 游标推进仅在成功后执行（预取失败不跳页，与Web预取策略一致）。
     */
    private void loadAppFeed(final boolean isLoadMore, final boolean isPrefetch) {
        final long startIdx = appFeedIdx;
        final String accessKey = mg.a(MainApplication.a()).e();
        new Thread(new Runnable() {
            @Override
            public void run() {
                final AppRecommendLoader.Result result = AppRecommendLoader.fetch(startIdx, accessKey, 20);
                Activity activity = getActivity();
                if (activity == null) {
                    return; // Fragment已销毁，丢弃结果
                }
                activity.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if (MainRecommendFragment.this.adapter == null) {
                            if (isPrefetch) {
                                MainRecommendFragment.this.onPrefetchError();
                            } else {
                                MainRecommendFragment.this.isLoadingMore = false;
                            }
                            return;
                        }
                        if (result == null) {
                            Log.w(getLogTag(), "[App推荐] 加载失败 idx=" + startIdx);
                            if (isPrefetch) {
                                MainRecommendFragment.this.onPrefetchError();
                            } else {
                                MainRecommendFragment.this.isLoadingMore = false;
                            }
                            return;
                        }
                        // 推进游标（服务端成功响应才推进；网络失败时游标不变，可重试）
                        MainRecommendFragment.this.appFeedIdx = result.nextIdx;
                        if (result.end) {
                            // 服务端已无更多数据（返回空/游标未推进），停止翻页
                            MainRecommendFragment.this.hasMoreData = false;
                        }
                        if (result.contents.isEmpty()) {
                            // 无新数据：复位加载状态，保留现有列表
                            Log.w(getLogTag(), "[App推荐] 无新数据 idx=" + startIdx + " end=" + result.end);
                            if (isPrefetch) {
                                MainRecommendFragment.this.onPrefetchSuccess(result.contents);
                            } else {
                                MainRecommendFragment.this.isLoadingMore = false;
                            }
                            return;
                        }
                        if (isPrefetch) {
                            // 预取模式：结果缓存不直接展示
                            MainRecommendFragment.this.onPrefetchSuccess(result.contents);
                            return;
                        }
                        if (isLoadMore) {
                            MainRecommendFragment.this.adapter.appendData(result.contents);
                        } else {
                            MainRecommendFragment.this.adapter.setData(new ArrayList<MainRecommendEx.Content>(), result.contents);
                        }
                        MainRecommendFragment.this.isLoadingMore = false;
                    }
                });
            }
        }, "AppRecommendFetch").start();
    }
    
    @Override
    protected void onBigCardClick(View view, String uri, int position) {
        if (uri.startsWith("bilibili_yst://pgc")) {
            long seasonId = ContentUris.parseId(Uri.parse(uri));
            Activity activity = adl.a(view.getContext());
            if (activity != null) {
                String coverUrl = null;
                if (position >= 0 && position < ogvList.size()) {
                    MainRecommendEx.Content content = ogvList.get(position);
                    if (content != null) {
                        coverUrl = content.getCover();
                    }
                }
                activity.startActivity(VideoDetailActivity.Companion.a(activity, String.valueOf(seasonId), coverUrl));
            }
        }
    }
    
    @Override
    protected void onSmallCardClick(View view, String uri, int position) {
        if (uri.startsWith("bilibili_yst://video") || uri.startsWith("bilibili://video")) {
            long avid = ContentUris.parseId(Uri.parse(uri));
            Activity activity = adl.a(view.getContext());
            if (activity != null) {
                activity.startActivity(VideoDetailActivity.Companion.a(activity, avid, getCoverUrl(position)));
            }
        }
    }
    
    private MainRecommendEx.Content parseRecommendItem(JSONObject item) {
        MainRecommendEx.Content content = new MainRecommendEx.Content();
        content.setCardType("small_popular_ugc");
        content.setCardGoto("av");
        content.setJumpId(item.getLongValue("id"));
        content.setCover(item.getString("pic"));
        content.setTitle(item.getString("title"));
        content.setPubdate(item.getLongValue("pubdate"));
        content.setUri("bilibili_yst://video/" + item.getLongValue("id"));
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
        
        return content;
    }
    
    private class RecommendsResponse extends vn<JSONObject> {
        private boolean isAppendMode;
        private boolean isPrefetch;
        
        RecommendsResponse(boolean isAppendMode) {
            this.isAppendMode = isAppendMode;
            this.isPrefetch = false;
        }
        
        RecommendsResponse(boolean isAppendMode, boolean isPrefetch) {
            this.isAppendMode = isAppendMode;
            this.isPrefetch = isPrefetch;
        }
        
        @Override
        public void a(JSONObject data) {
            if (MainRecommendFragment.this.adapter == null || data == null || data.getJSONArray("item") == null) {
                if (this.isPrefetch) {
                    MainRecommendFragment.this.onPrefetchError();
                } else {
                    MainRecommendFragment.this.isLoadingMore = false;
                }
                return;
            }
            
            JSONArray items = data.getJSONArray("item");
            
            if (items.size() < 20) {
                MainRecommendFragment.this.hasMoreData = false;
            }
            
            MainRecommendEx.Content[] placeholder = {null, null, null, null, null};
            ArrayList<MainRecommendEx.Content> ogvList = new ArrayList<>(Arrays.asList(placeholder));
            ArrayList<MainRecommendEx.Content> ugcList = new ArrayList<>(20);
            
            for (int i = 0; i < items.size(); i++) {
                JSONObject item = items.getJSONObject(i);
                MainRecommendEx.Content content = parseRecommendItem(item);
                ugcList.add(content);
            }
            
            if (this.isPrefetch) {
                // 预取模式：页码递增到已预取页，结果缓存不直接展示
                MainRecommendFragment.this.fresh_idx++;
                MainRecommendFragment.this.onPrefetchSuccess(ugcList);
                return;
            }
            
            if (this.isAppendMode) {
                MainRecommendFragment.this.adapter.appendData(ugcList);
            } else {
                MainRecommendFragment.this.adapter.setData(ogvList, ugcList);
            }
            
            MainRecommendFragment.this.isLoadingMore = false;
        }
        
        @Override
        public void onError(Throwable t) {
            bbi.b(t, "t");
            BLog.e(getLogTag(), t.getMessage());
            if (this.isPrefetch) {
                MainRecommendFragment.this.onPrefetchError();
            } else {
                MainRecommendFragment.this.isLoadingMore = false;
            }
        }
    }
    
    private class LegacyRecommendResponse extends vm<MainRecommendEx> {
        @Override
        public void onSuccess(MainRecommendEx mainRecommendEx) {
            if (MainRecommendFragment.this.adapter == null || mainRecommendEx == null || mainRecommendEx.getData() == null) {
                return;
            }
            List<MainRecommendEx.Content> data = mainRecommendEx.getData();
            if (data == null) {
                bbi.a();
            }
            if (data.isEmpty()) {
                return;
            }
            ArrayList<MainRecommendEx.Content> ogvList = new ArrayList<>();
            ArrayList<MainRecommendEx.Content> ugcList = new ArrayList<>();
            for (MainRecommendEx.Content content : data) {
                if (TextUtils.equals("large_popular_ogv", content.getCardType())) {
                    ogvList.add(content);
                } else if (TextUtils.equals("small_popular_ugc", content.getCardType())) {
                    ugcList.add(content);
                }
            }
            MainRecommendFragment.this.adapter.setData(ogvList, ugcList);
            if (ugcList.size() < 20) {
                ((BiliApiService) vo.a(BiliApiService.class)).getMainRecommend().a(new LegacyFallbackResponse());
            }
        }
        
        @Override
        public void onError(Throwable t) {
            bbi.b(t, "t");
            BLog.e(getLogTag(), t.getMessage());
        }
    }
    
    private class LegacyFallbackResponse extends vm<MainRecommend> {
        @Override
        public void onSuccess(MainRecommend mainRecommend) {
            if (MainRecommendFragment.this.adapter == null || mainRecommend == null || mainRecommend.getData() == null) {
                return;
            }
            ArrayList<MainRecommendEx.Content> ugcList = new ArrayList<>(20);
            for (MainRecommend.Data data : mainRecommend.getData()) {
                if (TextUtils.equals("recommend", data.getType()) && data.getBody() != null) {
                    for (MainRecommend.Body body : data.getBody()) {
                        MainRecommendEx.Content content = new MainRecommendEx.Content();
                        content.setCardType("small_popular_ugc");
                        content.setCardGoto("av");
                        content.setJumpId(Long.parseLong(body.getParam()));
                        content.setCover(body.getCover());
                        content.setTitle(body.getTitle());
                        content.setUri(body.getUri());
                        content.setPlay(body.getPlay());
                        content.setDanmaku(body.getDanmaku());
                        ugcList.add(content);
                    }
                    for (int i = data.getBody().size(); i < 20; i++) {
                        ugcList.add(null);
                    }
                    MainRecommendFragment.this.adapter.setData(MainRecommendFragment.this.ogvList, ugcList);
                }
            }
        }
        
        @Override
        public void onError(Throwable t) {
            bbi.b(t, "t");
            BLog.e(getLogTag(), t.getMessage());
        }
    }
}
