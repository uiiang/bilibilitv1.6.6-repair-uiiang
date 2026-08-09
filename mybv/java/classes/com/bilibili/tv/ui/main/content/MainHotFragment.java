package com.bilibili.tv.ui.main.content;

import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import com.bilibili.tv.R;
import com.bilibili.tv.api.main.MainRecommendEx;
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

public final class MainHotFragment extends BaseVideoListFragment {
    
    public static final Companion Companion = new Companion(null);
    public static MainHotFragment _this;
    private int popularPage = 1;
    
    public static class Companion {
        private Companion() {}
        
        public Companion(bbg bbgVar) {
            this();
        }
        
        public final MainHotFragment a() {
            _this = new MainHotFragment();
            return _this;
        }
    }
    
    @Override
    protected String getPageViewEvent() {
        return "tv_home_hot_pageview";
    }
    
    @Override
    protected String getClickEventName() {
        return "ott-platform.home.hot.0.click";
    }
    
    @Override
    protected String getLogTag() {
        return "HotRecommend";
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
    
    public void getHotVideos() {
        fetchData(false);
    }
    
    @Override
    protected void fetchData(boolean isLoadMore) {
        if (this.isLoadingMore && isLoadMore) {
            return;
        }
        
        if (!isLoadMore) {
            this.popularPage = 1;
            this.hasMoreData = true;
        } else {
            this.isLoadingMore = true;
            this.popularPage++;
        }
        
        ((MyBiliApiService) vo.a(MyBiliApiService.class))
            .getPopular(this.popularPage, 20)
            .a(new HotResponse(isLoadMore));
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
    
    private MainRecommendEx.Content parseHotItem(JSONObject item) {
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
        
        return content;
    }
    
    private class HotResponse extends vn<JSONObject> {
        private boolean isAppendMode;
        
        HotResponse(boolean isAppendMode) {
            this.isAppendMode = isAppendMode;
        }
        
        @Override
        public void a(JSONObject data) {
            if (MainHotFragment.this.adapter == null || data == null) {
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
            
            MainRecommendEx.Content[] placeholder = {null, null, null, null, null};
            ArrayList<MainRecommendEx.Content> ogvList = new ArrayList<>(Arrays.asList(placeholder));
            ArrayList<MainRecommendEx.Content> ugcList = new ArrayList<>(20);
            
            for (int i = 0; i < list.size(); i++) {
                JSONObject item = list.getJSONObject(i);
                MainRecommendEx.Content content = parseHotItem(item);
                ugcList.add(content);
            }
            
            if (this.isAppendMode) {
                MainHotFragment.this.adapter.appendData(ugcList);
            } else {
                MainHotFragment.this.adapter.setData(ogvList, ugcList);
            }
            
            MainHotFragment.this.isLoadingMore = false;
        }
        
        @Override
        public void onError(Throwable t) {
            bbi.b(t, "t");
            BLog.e(getLogTag(), t.getMessage());
            MainHotFragment.this.isLoadingMore = false;
        }
    }
}
