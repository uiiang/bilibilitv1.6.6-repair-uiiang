package com.bilibili.tv.ui.main.content;

import android.app.Activity;
import android.view.View;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.main.MainRecommendEx;
import com.bilibili.tv.ui.live.player.LivePlayerActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import mybl.BiliLiveContent;
import mybl.CookieUtil;
import mybl.MyBiliApiService;
import bl.*;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import tv.danmaku.android.log.BLog;

public final class MainLiveFragment extends BaseVideoListFragment {
    
    public static final Companion Companion = new Companion(null);
    public static MainLiveFragment _this;
    private List<BiliLiveContent> liveList = new ArrayList<>();
    
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
        if (this.isLoadingMore) {
            return;
        }
        
        this.isLoadingMore = true;
        
        mg biliAccount = mg.a(MainApplication.a());
        String cookie = CookieUtil.getFullCookieWithDevice(biliAccount);
        ((MyBiliApiService) vo.a(MyBiliApiService.class))
            .getLiveList(cookie)
            .a(new LiveResponse());
    }
    
    @Override
    protected void onSmallCardClick(View view, String uri, int position) {
        if (position >= 0 && position < liveList.size()) {
            BiliLiveContent liveContent = liveList.get(position);
            if (liveContent != null) {
                Activity activity = adl.a(view.getContext());
                if (activity != null) {
                    LivePlayerActivity.lives = this.liveList;
                    LivePlayerActivity.live_index = position;
                    activity.startActivity(LivePlayerActivity.a(activity, liveContent));
                }
            }
        }
    }
    
    @Override
    protected String getCoverUrl(int position) {
        if (position >= 0 && position < liveList.size()) {
            BiliLiveContent liveContent = liveList.get(position);
            return liveContent != null ? liveContent.mCover : null;
        }
        return null;
    }
    
    private MainRecommendEx.Content parseLiveItem(JSONObject item, BiliLiveContent liveContent, String moduleTitle) {
        MainRecommendEx.Content content = new MainRecommendEx.Content();
        content.setCardType("small_live");
        content.setCardGoto("live");
        content.setJumpId(item.getLongValue("roomid"));
        content.setCover(item.getString("cover"));
        content.setTitle(item.getString("title"));
        content.setUri("bilibili_yst://live/" + item.getLongValue("roomid"));
        content.setOwnerName(item.getString("uname"));
        long online = item.getLongValue("online");
        content.setPubdate(-online - 1);
        content.setDuration(0);
        
        // boolean isAi = item.getBooleanValue("is_ai");
        // if (isAi) {
        //     content.setBadge("AI直播");
        // } else 
        if ("我的关注".equals(moduleTitle)) {
            content.setBadge(moduleTitle);
        }
        
        liveContent.mRoomId = item.getIntValue("roomid");
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
    
    private class LiveResponse extends vn<JSONObject> {
        
        LiveResponse() {
        }
        
        @Override
        public void a(JSONObject data) {
            if (MainLiveFragment.this.adapter == null || data == null) {
                MainLiveFragment.this.isLoadingMore = false;
                return;
            }
            
            JSONArray roomList = data.getJSONArray("room_list");
            if (roomList == null || roomList.isEmpty()) {
                MainLiveFragment.this.hasMoreData = false;
                MainLiveFragment.this.isLoadingMore = false;
                return;
            }
            
            ArrayList<MainRecommendEx.Content> ugcList = new ArrayList<>();
            ArrayList<BiliLiveContent> newLiveList = new ArrayList<>();
            
            for (int i = 0; i < roomList.size(); i++) {
                JSONObject roomModule = roomList.getJSONObject(i);
                JSONObject moduleInfo = roomModule.getJSONObject("module_info");
                String moduleTitle = moduleInfo != null ? moduleInfo.getString("title") : "";
                
                JSONArray list = roomModule.getJSONArray("list");
                if (list != null && !list.isEmpty()) {
                    for (int j = 0; j < list.size(); j++) {
                        JSONObject item = list.getJSONObject(j);
                        boolean isAd = item.getBooleanValue("is_ad");
                        if (isAd) {
                            continue;
                        }
                        BiliLiveContent liveContent = new BiliLiveContent();
                        MainRecommendEx.Content content = parseLiveItem(item, liveContent, moduleTitle);
                        ugcList.add(content);
                        newLiveList.add(liveContent);
                    }
                }
            }
            
            if (ugcList.isEmpty()) {
                MainLiveFragment.this.hasMoreData = false;
                MainLiveFragment.this.isLoadingMore = false;
                return;
            }
            
            MainLiveFragment.this.adapter.setData(new ArrayList<>(), ugcList);
            MainLiveFragment.this.liveList = newLiveList;
            MainLiveFragment.this.hasMoreData = false;
            MainLiveFragment.this.isLoadingMore = false;
        }
        
        @Override
        public void onError(Throwable t) {
            bbi.b(t, "t");
            BLog.e(getLogTag(), t.getMessage());
            MainLiveFragment.this.isLoadingMore = false;
        }
    }
}
