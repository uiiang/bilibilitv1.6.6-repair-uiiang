package com.bilibili.tv.ui.area;

import android.app.Activity;
import android.content.ContentUris;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.main.MainRecommendEx;
import com.bilibili.tv.api.area.BiliVideoV2;
import com.bilibili.tv.ui.main.content.BaseVideoListFragment;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import java.util.ArrayList;
import java.util.List;
import bl.abd;
import bl.adl;
import mybl.RankingRequest;

/**
 * 分区视频列表Fragment（新实现）
 * 参考MainRecommendFragment和MainHotFragment的实现
 * 不重写onCreateView，使用父类的默认布局
 */
public class AreaVideoListFragment extends BaseVideoListFragment {

    private static final String TAG = "AreaVideoListFragment";
    private int categoryTid;  // 分区ID
    private int currentPage = 1;  // 当前页码

    /**
     * 创建Fragment实例
     */
    public static AreaVideoListFragment newInstance(int tid) {
        // Log.i(TAG, "========== newInstance ==========");
        // Log.i(TAG, "TID: " + tid);
        AreaVideoListFragment fragment = new AreaVideoListFragment();
        fragment.categoryTid = tid;
        // Log.i(TAG, "Fragment created: " + fragment.hashCode());
        return fragment;
    }

    public AreaVideoListFragment() {
        super();
        // Log.i(TAG, "========== AreaVideoListFragment Constructor ==========");
        // Log.i(TAG, "Fragment instance: " + this.hashCode());
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        // Log.i(TAG, "========== onCreate ==========");
        // Log.i(TAG, "Fragment: " + this.hashCode());
        // Log.i(TAG, "categoryTid: " + categoryTid);
        super.onCreate(savedInstanceState);
        // Log.i(TAG, "super.onCreate() completed");
    }

    @Override
    public void onResume() {
        // Log.i(TAG, "========== onResume ==========");
        // Log.i(TAG, "Fragment: " + this.hashCode());
        super.onResume();

        // 检查焦点
        // if (getActivity() != null) {
        //     View focusedView = getActivity().getCurrentFocus();
        //     Log.i(TAG, "Current focus: " + (focusedView != null ? focusedView.getClass().getSimpleName() : "null"));
        // }
    }

    @Override
    protected String getPageViewEvent() {
        return "ott-platform.area.video.0.0.pv";
    }

    @Override
    protected String getClickEventName() {
        return "ott-platform.area.video.0.click";
    }

    @Override
    protected String getLogTag() {
        return TAG;
    }

    /**
     * 获取列数（使用首页设置）
     */
    @Override
    protected int getColumnCount() {
        int columnCount = abd.get_home_column(getActivity());
        // Log.i(TAG, "getColumnCount: " + columnCount);
        return columnCount;
    }
    
    /**
     * 加载数据（保持分区原有逻辑）
     */
    @Override
    protected void fetchData(boolean isLoadMore) {
        if (this.isLoadingMore && isLoadMore) {
            return;
        }
        
        if (!isLoadMore) {
            this.hasMoreData = true;
            this.currentPage = 1;
        } else {
            this.isLoadingMore = true;
        }
        
        // 使用独立线程加载数据
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Log.i(TAG, "Loading videos for tid=" + categoryTid + ", page=" + currentPage);
                    
                    // 使用RankingRequest加载数据
                    List<BiliVideoV2> videoList = RankingRequest.getRanking(categoryTid);
                    
                    if (getActivity() == null || getActivity().isFinishing()) {
                        return;
                    }
                    
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            if (videoList != null && !videoList.isEmpty()) {
                                // 将BiliVideoV2转换为MainRecommendEx.Content
                                List<MainRecommendEx.Content> contents = convertToContentList(videoList);
                                
                                // 清空旧数据（首次加载）
                                if (!isLoadMore) {
                                    ugcList.clear();
                                    ogvList.clear();
                                }
                                
                                // 添加新数据
                                ugcList.addAll(contents);
                                
                                // 更新适配器（数据已经直接添加到ugcList）
                                if (adapter != null) {
                                    adapter.d();  // 刷新适配器
                                }
                                
                                // 设置是否有更多数据（暂时不支持分页）
                                hasMoreData = false;
                                isLoadingMore = false;
                                
                                Log.i(TAG, "Loaded " + contents.size() + " videos");
                                
                                // 首次加载后，让第一个视频卡片获得焦点
                                if (!isLoadMore) {
                                    Log.i(TAG, "========== Requesting focus for first video card ==========");
                                    Log.i(TAG, "layoutManager: " + (layoutManager != null ? layoutManager.getClass().getSimpleName() : "null"));
                                    Log.i(TAG, "adapter: " + (adapter != null ? adapter.getClass().getSimpleName() : "null"));

                                    // 延迟执行，确保布局完成
                                    new android.os.Handler().postDelayed(new Runnable() {
                                        @Override
                                        public void run() {
                                            Log.i(TAG, "========== Delayed focus request ==========");
                                            Log.i(TAG, "layoutManager in delayed: " + (layoutManager != null ? layoutManager.getClass().getSimpleName() : "null"));

                                            if (layoutManager != null) {
                                                // 获取第一个视频卡片
                                                View firstItem = layoutManager.c(0);
                                                Log.i(TAG, "firstItem: " + (firstItem != null ? firstItem.getClass().getSimpleName() : "null"));

                                                if (firstItem != null) {
                                                    boolean focusResult = firstItem.requestFocus();
                                                    Log.i(TAG, "requestFocus result: " + focusResult);
                                                    Log.i(TAG, "First video card focused");
                                                } else {
                                                    Log.e(TAG, "firstItem is null!");
                                                }
                                            } else {
                                                Log.e(TAG, "layoutManager is null in delayed!");
                                            }
                                        }
                                    }, 100);  // 延迟100ms
                                }
                            } else {
                                // 加载失败或无数据
                                hasMoreData = false;
                                isLoadingMore = false;
                                Log.w(TAG, "No videos loaded");
                            }
                        }
                    });
                    
                } catch (Exception e) {
                    Log.e(TAG, "Error loading videos: " + e.getMessage());
                    e.printStackTrace();
                    
                    if (getActivity() != null && !getActivity().isFinishing()) {
                        getActivity().runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                isLoadingMore = false;
                                hasMoreData = false;
                            }
                        });
                    }
                }
            }
        }).start();
    }
    
    /**
     * 将BiliVideoV2列表转换为MainRecommendEx.Content列表
     */
    private List<MainRecommendEx.Content> convertToContentList(List<BiliVideoV2> videoList) {
        List<MainRecommendEx.Content> contents = new ArrayList<>();

        Log.i(TAG, "========== convertToContentList START ==========");
        Log.i(TAG, "Video list size: " + videoList.size());

        for (int i = 0; i < videoList.size(); i++) {
            BiliVideoV2 video = videoList.get(i);
            MainRecommendEx.Content content = new MainRecommendEx.Content();

            // 字段映射
            content.setTitle(video.title);
            content.setCover(video.cover);
            content.setUri(video.uri);

            Log.i(TAG, "Video " + i + ": title=" + video.title + ", uri=" + video.uri + ", param=" + video.param);

            // 统计数据
            content.setPlay(video.play);
            content.setDanmaku(video.danmaku);

            // UP主名字
            content.setOwnerName(video.name);

            // 其他信息
            content.setDuration(video.duration);
            content.setPubdate(video.pubdate);

            contents.add(content);
        }

        Log.i(TAG, "========== convertToContentList END ==========");

        return contents;
    }
    
    /**
     * 小卡片点击（普通视频）
     */
    @Override
    protected void onSmallCardClick(View view, String uri, int position) {
        Log.i(TAG, "========== onSmallCardClick ==========");
        Log.i(TAG, "URI: " + uri);
        Log.i(TAG, "Position: " + position);

        if (uri == null || !uri.startsWith("bilibili://video")) {
            Log.w(TAG, "Invalid URI: " + uri);
            return;
        }
        
        try {
            long avid = ContentUris.parseId(Uri.parse(uri));
            Log.i(TAG, "Parsed avid: " + avid);
            
            Activity activity = adl.a(view.getContext());
            Log.i(TAG, "Activity: " + (activity != null ? activity.getClass().getSimpleName() : "null"));
            
            if (activity != null) {
                // 获取封面URL
                String coverUrl = null;
                if (position >= 0 && position < ugcList.size()) {
                    MainRecommendEx.Content content = ugcList.get(position);
                    if (content != null) {
                        coverUrl = content.getCover();
                        Log.i(TAG, "Cover URL: " + coverUrl);
                    }
                }
                
                // 跳转到视频详情页
                Log.i(TAG, "Starting VideoDetailActivity with avid=" + avid);
                activity.startActivity(VideoDetailActivity.Companion.a(activity, avid, coverUrl));
            }
        } catch (Exception e) {
            Log.e(TAG, "Error parsing video URI: " + uri, e);
        }
    }
    
    @Override
    protected void onBigCardClick(View view, String uri, int position) {
        // 分区视频不处理大卡片（暂时）
    }
}