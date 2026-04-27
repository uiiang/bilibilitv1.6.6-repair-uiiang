package com.bilibili.tv.ui.main.content;

import android.app.Activity;
import android.content.ContentUris;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
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
import mybl.MyBiliApiService;
import mybl.CookieUtil;

public final class MainRecommendFragment extends BaseVideoListFragment {
    
    public static final Companion Companion = new Companion(null);
    public static MainRecommendFragment _this;
    public static int fresh_idx = 0;
    
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
        
        mg biliAccount = mg.a(MainApplication.a());
        String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
        ((MyBiliApiService) vo.a(MyBiliApiService.class))
            .recommendVideos(20, (cookie == null || cookie.isEmpty()) ? this.fresh_idx++ : 0, cookie)
            .a(new RecommendsResponse(isLoadMore));
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
        
        RecommendsResponse(boolean isAppendMode) {
            this.isAppendMode = isAppendMode;
        }
        
        @Override
        public void a(JSONObject data) {
            if (MainRecommendFragment.this.adapter == null || data == null || data.getJSONArray("item") == null) {
                MainRecommendFragment.this.isLoadingMore = false;
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
            MainRecommendFragment.this.isLoadingMore = false;
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
