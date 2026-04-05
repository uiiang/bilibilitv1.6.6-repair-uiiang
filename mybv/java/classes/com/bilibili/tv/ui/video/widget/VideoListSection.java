package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.video.VideoDetailActivity;
import com.bilibili.tv.widget.FixLinearLayoutManager;
import java.util.List;

public class VideoListSection extends LinearLayout {
    private static final String TAG = "ListSection";
    private static final String CODE_VERSION = "v2.5-fixDataIndex";

    public interface OnVideoClickListener {
        void onVideoClicked(Object data, int position);
    }

    public interface OnNavTagFocusListener {
        void onNavTagFocus(int sectionId, int tagIndex, int videoStartPosition);
    }

    public interface OnNavTagClickListener {
        void onNavTagClick(int sectionId, int tagIndex, int videoStartPosition);
    }

    private TextView titleView;
    private RecyclerView recyclerView;
    private VideoCardAdapter adapter;
    private RecyclerView navTagRecyclerView;
    private NavigationTagAdapter navTagAdapter;
    private int sectionId = -1;
    private int focusPosition = 0;
    private long currentVideoId = -1;
    private long currentCid = -1;
    private boolean interceptCurrentVideoClick = true;
    private int currentSeasonId = -1;
    private VideoCardBinder binder;
    private OnVideoClickListener videoClickListener;
    private OnNavTagFocusListener navTagFocusListener;
    private OnNavTagClickListener navTagClickListener;
    private List<?> dataList;
    private boolean manualFocusRequested = false;

    public VideoListSection(Context context) {
        super(context);
        // Log.i(TAG, "构造 | 创建VideoListSection实例 | hashCode=" + this.hashCode() + " | CODE_VERSION=" + CODE_VERSION);
        LayoutInflater.from(context).inflate(R.layout.layout_season_section, this, true);
        initViews();
        // Log.i(TAG, "构造 | 初始化完成 | titleView=" + (titleView != null ? "OK" : "NULL")
        //         + " | recyclerView=" + (recyclerView != null ? "OK" : "NULL"));
    }

    private void initViews() {
        titleView = (TextView) findViewById(R.id.season_section_title);
        recyclerView = (RecyclerView) findViewById(R.id.season_section_recycler);
        if (recyclerView == null) {
            // Log.e(TAG, "initViews | recyclerView为null! 请检查layout_season_section.xml中是否有season_section_recycler");
            return;
        }
        // Log.d(TAG, "initViews | 开始初始化RecyclerView");

        recyclerView.setFocusable(true);
        recyclerView.setNextFocusLeftId(R.id.season_section_recycler);
        recyclerView.setNextFocusRightId(R.id.season_section_recycler);

        adapter = new VideoCardAdapter();

        adapter.setFocusBoundaryHandler(new VideoCardAdapter.FocusBoundaryHandler() {
            @Override
            public void setupFocusBoundary(View itemView, int position, int size) {
                if (itemView == null) {
                    // Log.w(TAG, "setupFocusBoundary | position=" + position + " | itemView为null");
                    return;
                }
                boolean isFirst = (position == 0);
                boolean isLast = (position == size - 1);

                if (isFirst) {
                    itemView.setNextFocusLeftId(itemView.getId());
                } else {
                    itemView.setNextFocusLeftId(View.NO_ID);
                }
                if (isLast) {
                    itemView.setNextFocusRightId(itemView.getId());
                } else {
                    itemView.setNextFocusRightId(View.NO_ID);
                }

                // Log.d(TAG, "setupFocusBoundary | position=" + position + "/" + (size - 1)
                //         + " | isFirst=" + isFirst + " | isLast=" + isLast
                //         + " | itemId=" + itemView.getId());
            }
        });

        adapter.setOnItemClickListener(new VideoCardAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(Object data, int position) {
                // Log.i(TAG, "onItemClick | sectionId=" + sectionId
                //         + " | position=" + position
                //         + " | dataClass=" + (data != null ? data.getClass().getSimpleName() : "null")
                //         + " | currentVideoId=" + currentVideoId
                //         + " | currentCid=" + currentCid);

                boolean isCurrentVideo = false;
                boolean hasCidCheck = false;
                if (currentCid > 0 && adapter.getBinder() != null && data != null) {
                    isCurrentVideo = adapter.getBinder().isCurrentVideoByCid(data, currentCid);
                    hasCidCheck = true;
                    // Log.i(TAG, "onItemClick | isCurrentVideo(by cid)=" + isCurrentVideo);
                }

                if (!hasCidCheck && currentVideoId > 0 && adapter.getBinder() != null && data != null) {
                    isCurrentVideo = adapter.getBinder().isCurrentVideo(data, currentVideoId);
                    // Log.i(TAG, "onItemClick | isCurrentVideo(by avid)=" + isCurrentVideo);
                }

                if (!isCurrentVideo && currentSeasonId > 0 && adapter.getBinder() != null && data != null) {
                    isCurrentVideo = adapter.getBinder().isCurrentSeason(data, currentSeasonId);
                    // Log.i(TAG, "onItemClick | isCurrentVideo(by seasonId)=" + isCurrentVideo);
                }
                
                if (interceptCurrentVideoClick && isCurrentVideo) {
                    // Log.i(TAG, "onItemClick | 点击的是当前正在播放的视频，忽略跳转");
                    return;
                }
                
                // Log.i(TAG, "onItemClick | 保存焦点位置: " + position);
                saveFocusPositionByIndex(position);
                if (videoClickListener != null) {
                    videoClickListener.onVideoClicked(data, position);
                } else {
                    // Log.w(TAG, "onItemClick | videoClickListener为null! 点击事件未传递");
                }
            }
        });

        adapter.setOnItemFocusListener(new VideoCardAdapter.OnItemFocusListener() {
            @Override
            public void onItemFocus(int position, boolean hasFocus) {
                Log.i(TAG, "onItemFocus | sectionId=" + sectionId + " | position=" + position + " | hasFocus=" + hasFocus);
                if (hasFocus) {
                    updateNavTagSelection(position);
                    if (navTagFocusListener != null) {
                        navTagFocusListener.onNavTagFocus(sectionId, -1, position);
                    }
                }
            }
        });

        recyclerView.setLayoutManager(new FixLinearLayoutManager(getContext(), 0, false));
        recyclerView.setAdapter(adapter);
        // Log.d(TAG, "initViews | RecyclerView配置完成 | layoutManager=FixLinearLayoutManager(HORIZONTAL)");

        recyclerView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                // Log.i(TAG, "========== onFocusChange START ==========");
                // Log.i(TAG, "onFocusChange | sectionId=" + sectionId
                //         + " | hasFocus=" + hasFocus
                //         + " | manualFocusRequested=" + manualFocusRequested
                //         + " | 保存的focusPosition=" + focusPosition
                //         + " | childCount=" + recyclerView.getChildCount()
                //         + " | dataSize=" + (dataList == null ? 0 : dataList.size()));

                if (hasFocus) {
                    if (manualFocusRequested) {
                        // Log.i(TAG, "onFocusChange | manualFocusRequested=true，跳过自动恢复（已由requestFocusOnSavedPosition处理）");
                        manualFocusRequested = false;
                        // Log.d(TAG, "onFocusChange | 重置manualFocusRequested=false");
                    } else {
                        int expectedPosition = focusPosition;
                        // Log.i(TAG, "onFocusChange | 获得焦点(自动模式) | 预期恢复到position=" + expectedPosition);
                        
                        View focusView = restoreFocusPositionInternal();
                        if (focusView != null) {
                            int actualPosition = getViewPosition(focusView);
                            boolean isFullyVisible = isViewFullyVisible(focusView);
                            // Log.i(TAG, "onFocusChange | restoreFocus返回view"
                            //         + " | 预期position=" + expectedPosition
                            //         + " | 实际position=" + actualPosition
                            //         + " | viewClass=" + focusView.getClass().getSimpleName()
                            //         + " | isFullyVisible=" + isFullyVisible);
                            
                            if (isFullyVisible) {
                                // Log.i(TAG, "onFocusChange | 目标view已完全可见，直接requestFocus（无滚动）");
                            } else {
                                // Log.i(TAG, "onFocusChange | 目标view未完全可见，requestFocus可能触发滚动");
                            }
                            // Log.i(TAG, "onFocusChange | >>> requestFocus执行");
                            boolean success = focusView.requestFocus();
                            // Log.i(TAG, "onFocusChange | <<< requestFocus返回 " + success
                            //         + " | 最终焦点位置=" + actualPosition);
                        } else if (recyclerView.getChildCount() > 0) {
                            View fallbackView = recyclerView.getChildAt(0);
                            int fallbackPosition = 0;
                            // Log.w(TAG, "onFocusChange | restoreFocus返回null，fallback到第1个child"
                            //         + " | 预期position=" + expectedPosition
                            //         + " | fallbackPosition=" + fallbackPosition);
                            // Log.i(TAG, "onFocusChange | >>> fallback requestFocus执行");
                            boolean success = fallbackView.requestFocus();
                            // Log.i(TAG, "onFocusChange | <<< fallback requestFocus返回 " + success);
                        } else {
                            // Log.w(TAG, "onFocusChange | 无子view可聚焦! childCount=0");
                        }
                    }
                } else {
                    manualFocusRequested = false;
                    saveCurrentFocusFromRecyclerView();
                    // Log.d(TAG, "onFocusChange | 失去焦点，已保存当前焦点位置=" + focusPosition);
                }
                // Log.i(TAG, "========== onFocusChange END ==========");
            }
        });

        initNavigationTags();
    }

    private void initNavigationTags() {
        navTagRecyclerView = (RecyclerView) findViewById(R.id.season_section_nav_tags);
        if (navTagRecyclerView == null) {
            Log.w(TAG, "initNavigationTags | navTagRecyclerView为null");
            return;
        }
        
        navTagRecyclerView.setLayoutManager(new FixLinearLayoutManager(getContext(), 0, false));
        navTagAdapter = new NavigationTagAdapter();
        navTagRecyclerView.setAdapter(navTagAdapter);
        navTagAdapter.attachRecyclerView(navTagRecyclerView);
        
        navTagAdapter.setFocusBoundaryHandler(new NavigationTagAdapter.FocusBoundaryHandler() {
            @Override
            public void setupFocusBoundary(View itemView, int position, int size) {
                if (itemView == null) {
                    return;
                }
                boolean isFirst = (position == 0);
                boolean isLast = (position == size - 1);
                
                if (isFirst) {
                    itemView.setNextFocusLeftId(itemView.getId());
                } else {
                    itemView.setNextFocusLeftId(View.NO_ID);
                }
                if (isLast) {
                    itemView.setNextFocusRightId(itemView.getId());
                } else {
                    itemView.setNextFocusRightId(View.NO_ID);
                }
                
                Log.i(TAG, "setupNavTagFocusBoundary | position=" + position 
                        + " | isFirst=" + isFirst + " | isLast=" + isLast);
            }
        });
        
        navTagAdapter.setOnTagFocusListener(new NavigationTagAdapter.OnTagFocusListener() {
            @Override
            public void onTagFocus(int tagIndex, int videoStartPosition) {
                Log.i(TAG, "onTagFocus | sectionId=" + sectionId + " | tagIndex=" + tagIndex 
                        + " | videoStartPosition=" + videoStartPosition);
                navTagAdapter.setSelectedPosition(tagIndex);
                if (navTagFocusListener != null) {
                    navTagFocusListener.onNavTagFocus(sectionId, tagIndex, videoStartPosition);
                }
            }
        });
        
        navTagAdapter.setOnTagClickListener(new NavigationTagAdapter.OnTagClickListener() {
            @Override
            public void onTagClick(int tagIndex, int videoStartPosition) {
                Log.i(TAG, "onTagClick | sectionId=" + sectionId + " | tagIndex=" + tagIndex 
                        + " | videoStartPosition=" + videoStartPosition);
                if (navTagClickListener != null) {
                    navTagClickListener.onNavTagClick(sectionId, tagIndex, videoStartPosition);
                }
            }
        });
        
        Log.i(TAG, "initNavigationTags | 导航标签初始化完成");
    }

    private int getViewPosition(View view) {
        if (recyclerView == null || view == null) return -1;
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            if (recyclerView.getChildAt(i) == view) {
                return i;
            }
        }
        return -1;
    }

    private boolean isViewFullyVisible(View view) {
        if (recyclerView == null || view == null) return false;
        int[] viewLocation = new int[2];
        int[] rvLocation = new int[2];
        view.getLocationOnScreen(viewLocation);
        recyclerView.getLocationOnScreen(rvLocation);
        
        int rvLeft = rvLocation[0];
        int rvRight = rvLocation[0] + recyclerView.getWidth();
        int viewLeft = viewLocation[0];
        int viewRight = viewLocation[0] + view.getWidth();
        
        boolean fullyVisible = (viewLeft >= rvLeft) && (viewRight <= rvRight);
        // Log.d(TAG, "isViewFullyVisible | rvLeft=" + rvLeft + " rvRight=" + rvRight
        //         + " | viewLeft=" + viewLeft + " viewRight=" + viewRight
        //         + " | result=" + fullyVisible);
        return fullyVisible;
    }

    public void setTitle(String title, int count) {
        String fullTitle = title + "(" + count + ")";
        // Log.i(TAG, "setTitle | sectionId=" + sectionId + " | title=" + fullTitle);
        if (titleView != null && title != null) {
            titleView.setText(fullTitle);
        } else {
            // Log.w(TAG, "setTitle | titleView或title为null | titleView=" + (titleView != null ? "OK" : "NULL")
            //         + " | title=" + title);
        }
    }

    public void setTitle(String title) {
        // Log.i(TAG, "setTitle(纯文字) | sectionId=" + sectionId + " | title=" + title);
        if (titleView != null && title != null) {
            titleView.setText(title);
        }
    }

    public void setData(List<?> data, VideoCardBinder b) {
        // Log.i(TAG, "setData | sectionId=" + sectionId
        //         + " | dataSize=" + (data == null ? 0 : data.size())
        //         + " | binderClass=" + (b != null ? b.getClass().getSimpleName() : "null")
        //         + " | 原dataSize=" + (this.dataList == null ? 0 : this.dataList.size()));
        this.dataList = data;
        this.binder = b;
        if (adapter != null) {
            adapter.setData(data, b);
        } else {
            // Log.e(TAG, "setData | adapter为null! 数据未设置!");
        }
    }

    public void setCurrentVideoId(long videoId) {
        // Log.i(TAG, "setCurrentVideoId | sectionId=" + sectionId + " | oldVideoId=" + currentVideoId
        //         + " | newVideoId=" + videoId);
        this.currentVideoId = videoId;
    }

    public void setCurrentCid(long cid) {
        // Log.i(TAG, "setCurrentCid | sectionId=" + sectionId + " | oldCid=" + currentCid
        //         + " | newCid=" + cid);
        this.currentCid = cid;
    }

    public long getCurrentCid() {
        return currentCid;
    }

    public void setInterceptCurrentVideoClick(boolean intercept) {
        // Log.i(TAG, "setInterceptCurrentVideoClick | sectionId=" + sectionId + " | " + intercept);
        this.interceptCurrentVideoClick = intercept;
    }

    public void setCurrentSeasonId(int seasonId) {
        // Log.i(TAG, "setCurrentSeasonId | sectionId=" + sectionId + " | oldSeasonId=" + currentSeasonId
        //         + " | newSeasonId=" + seasonId);
        this.currentSeasonId = seasonId;
    }

    public int getCurrentSeasonId() {
        return currentSeasonId;
    }

    public void scrollToCurrentVideo() {
        // Log.i(TAG, "scrollToCurrentVideo | sectionId=" + sectionId
        //         + " | currentVideoId=" + currentVideoId
        //         + " | dataSize=" + (dataList == null ? 0 : dataList.size())
        //         + " | binder=" + (binder != null ? binder.getClass().getSimpleName() : "null"));

        if (recyclerView == null) {
            // Log.w(TAG, "scrollToCurrentVideo | recyclerView为null，跳过");
            return;
        }
        if (dataList == null || dataList.isEmpty()) {
            // Log.w(TAG, "scrollToCurrentVideo | 数据为空，跳过");
            return;
        }
        if (binder == null) {
            // Log.e(TAG, "scrollToCurrentVideo | binder为null，无法判断当前视频!");
            return;
        }

        int currentPosition = -1;
        for (int i = 0; i < dataList.size(); i++) {
            Object item = dataList.get(i);
            boolean isCur = false;
            boolean hasCidCheck = false;
            if (currentCid > 0) {
                isCur = binder.isCurrentVideoByCid(item, currentCid);
                hasCidCheck = true;
                // Log.d(TAG, "scrollToCurrentVideo | 遍历 | index=" + i
                //         + " | itemClass=" + (item != null ? item.getClass().getSimpleName() : "null")
                //         + " | isCurrent(by cid)=" + isCur
                //         + " | currentCid=" + currentCid);
            }
            if (!hasCidCheck && currentVideoId > 0) {
                isCur = binder.isCurrentVideo(item, currentVideoId);
                // Log.d(TAG, "scrollToCurrentVideo | 遍历 | index=" + i
                //         + " | itemClass=" + (item != null ? item.getClass().getSimpleName() : "null")
                //         + " | isCurrent(by avid)=" + isCur);
            }
            if (!isCur && currentSeasonId > 0) {
                isCur = binder.isCurrentSeason(item, currentSeasonId);
                // Log.d(TAG, "scrollToCurrentVideo | 遍历 | index=" + i
                //         + " | isCurrent(by seasonId)=" + isCur);
            }
            if (isCur) {
                currentPosition = i;
                break;
            }
        }

        if (currentPosition < 0) {
            // Log.i(TAG, "scrollToCurrentVideo | 未找到匹配的当前视频 | currentVideoId=" + currentVideoId
            //         + " | currentSeasonId=" + currentSeasonId
            //         + " | 遍历了" + dataList.size() + "项均不匹配");
            return;
        }

        // Log.i(TAG, "scrollToCurrentVideo | 找到当前位置: " + currentPosition
        //         + " | 总数据量: " + dataList.size()
        //         + " | 准备post滚动");

        final int finalPos = currentPosition;
        recyclerView.post(new Runnable() {
            @Override
            public void run() {
                // Log.d(TAG, "scrollToCurrentVideo.post | 执行滚动 | targetPos=" + finalPos
                //         + " | isAttachedToWindow=" + recyclerView.isAttachedToWindow()
                //         + " | childCount=" + recyclerView.getChildCount());

                if (!recyclerView.isAttachedToWindow()) {
                    // Log.w(TAG, "scrollToCurrentVideo.post | RecyclerView已脱离窗口，取消滚动");
                    return;
                }
                try {
                    // Log.d(TAG, "scrollToCurrentVideo.post | 使用scrollToPosition确保view可见 | targetPos=" + finalPos);
                    try {
                        java.lang.reflect.Method scrollToMethod = recyclerView.getClass().getMethod("scrollToPosition", int.class);
                        scrollToMethod.invoke(recyclerView, finalPos);
                        // Log.d(TAG, "scrollToCurrentVideo.post | scrollToPosition反射调用成功");
                    } catch (NoSuchMethodException e1) {
                        // Log.w(TAG, "scrollToCurrentVideo.post | scrollToPosition不存在，尝试scrollBy");
                        if (recyclerView.getChildCount() > 0) {
                            View firstChild = recyclerView.getChildAt(0);
                            if (firstChild != null) {
                                int childWidth = firstChild.getWidth();
                                recyclerView.scrollBy(finalPos * childWidth, 0);
                                // Log.d(TAG, "scrollToCurrentVideo.post | scrollBy fallback成功");
                            }
                        }
                    }
                } catch (Exception e) {
                    // Log.e(TAG, "scrollToCurrentVideo.post | 滚动异常: " + e.getMessage());
                }

                focusPosition = finalPos;
                // Log.i(TAG, "scrollToCurrentVideo.post | 完成 | focusPosition更新为=" + finalPos);
            }
        });
    }

    public void scrollToDataPosition(int position) {
        Log.i(TAG, "scrollToDataPosition | sectionId=" + sectionId + " | position=" + position);
        
        if (recyclerView == null) {
            Log.w(TAG, "scrollToDataPosition | recyclerView为null");
            return;
        }
        
        int dataSize = (dataList == null ? 0 : dataList.size());
        if (position < 0 || position >= dataSize) {
            Log.w(TAG, "scrollToDataPosition | position越界 | position=" + position + " | dataSize=" + dataSize);
            return;
        }
        
        final int finalPos = position;
        recyclerView.post(new Runnable() {
            @Override
            public void run() {
                if (!recyclerView.isAttachedToWindow()) {
                    Log.w(TAG, "scrollToDataPosition.post | RecyclerView已脱离窗口");
                    return;
                }
                
                try {
                    Object layoutManager = recyclerView.getLayoutManager();
                    if (layoutManager != null) {
                        java.lang.reflect.Method scrollToWithOffset = layoutManager.getClass().getMethod("b", int.class, int.class);
                        scrollToWithOffset.invoke(layoutManager, finalPos, 0);
                        Log.i(TAG, "scrollToDataPosition.post | b(int,int)成功 | position=" + finalPos);
                    }
                } catch (Exception e) {
                    Log.w(TAG, "scrollToDataPosition.post | b(int,int)失败: " + e.getMessage());
                    try {
                        java.lang.reflect.Method scrollToMethod = recyclerView.getClass().getMethod("d", int.class);
                        scrollToMethod.invoke(recyclerView, finalPos);
                        Log.i(TAG, "scrollToDataPosition.post | d(int)成功 | position=" + finalPos);
                    } catch (Exception e2) {
                        Log.w(TAG, "scrollToDataPosition.post | d(int)失败: " + e2.getMessage());
                    }
                }
                
                focusPosition = finalPos;
            }
        });
    }

    public void setNextFocusUpId(int resId) {
        // Log.d(TAG, "setNextFocusUpId | sectionId=" + sectionId + " | resId=" + resId);
        if (recyclerView != null) {
            recyclerView.setNextFocusUpId(resId);
        }
    }

    public View restoreFocusPosition() {
        return restoreFocusPositionInternal();
    }

    public boolean requestFocusOnSavedPosition() {
        // Log.i(TAG, "========== requestFocusOnSavedPosition START ==========");
        // Log.i(TAG, "requestFocusOnSavedPosition | sectionId=" + sectionId
        //         + " | focusPosition=" + focusPosition
        //         + " | dataSize=" + (dataList == null ? 0 : dataList.size()));
        
        manualFocusRequested = true;
        // Log.d(TAG, "requestFocusOnSavedPosition | 设置manualFocusRequested=true");
        
        View focusView = restoreFocusPositionInternal();
        if (focusView != null) {
            int actualPosition = getViewPosition(focusView);
            // Log.i(TAG, "requestFocusOnSavedPosition | 找到目标view"
            //         + " | 预期position=" + focusPosition
            //         + " | 实际position=" + actualPosition);
            
            boolean success = focusView.requestFocus();
            // Log.i(TAG, "requestFocusOnSavedPosition | <<< requestFocus返回 " + success
            //         + " | 最终聚焦到position=" + actualPosition);
            // Log.i(TAG, "========== requestFocusOnSavedPosition END ==========");
            return success;
        }
        
        // Log.w(TAG, "requestFocusOnSavedPosition | restoreFocus返回null，尝试fallback");
        if (recyclerView != null && recyclerView.getChildCount() > 0) {
            View fallbackView = recyclerView.getChildAt(0);
            boolean success = fallbackView.requestFocus();
            // Log.w(TAG, "requestFocusOnSavedPosition | fallback到第1个child | success=" + success);
            // Log.i(TAG, "========== requestFocusOnSavedPosition END ==========");
            return success;
        }
        
        // Log.e(TAG, "requestFocusOnSavedPosition | 无法聚焦!");
        // Log.i(TAG, "========== requestFocusOnSavedPosition END ==========");
        return false;
    }

    private View restoreFocusPositionInternal() {
        // Log.i(TAG, "restoreFocusPosition | sectionId=" + sectionId
        //         + " | savedFocusPosition=" + focusPosition);

        if (recyclerView == null) {
            // Log.w(TAG, "restoreFocusPosition | recyclerView为null");
            return null;
        }

        int dataSize = (dataList == null ? 0 : dataList.size());
        // Log.d(TAG, "restoreFocusPosition | dataSize=" + dataSize
        //         + " | focusPosition=" + focusPosition);

        if (dataSize == 0) {
            // Log.w(TAG, "restoreFocusPosition | 数据为空");
            return null;
        }

        int dataPosition = Math.min(focusPosition, dataSize - 1);
        dataPosition = Math.max(0, dataPosition);
        // Log.d(TAG, "restoreFocusPosition | 边界修正后dataPosition=" + dataPosition
        //         + " (原始focusPosition=" + focusPosition + ", maxSize=" + (dataSize - 1) + ")");

        int childCount = recyclerView.getChildCount();
        // Log.d(TAG, "restoreFocusPosition | childCount=" + childCount);

        if (childCount == 0) {
            // Log.w(TAG, "restoreFocusPosition | 无可见子view");
            return null;
        }

        View targetView = findViewByDataPosition(dataPosition);
        if (targetView != null) {
            // Log.i(TAG, "restoreFocusPosition | ★ 找到目标view (已在可视区内)"
            //         + " | dataPosition=" + dataPosition
            //         + " | requestFocus不会触发滚动");
            return targetView;
        }

        // Log.w(TAG, "restoreFocusPosition | 目标view不可见，使用最近可见项"
        //         + " | dataPosition=" + dataPosition
        //         + " | childCount=" + childCount);
        
        View firstChild = recyclerView.getChildAt(0);
        if (firstChild != null) {
            // Log.w(TAG, "restoreFocusPosition | fallback到第1个可见子view");
            return firstChild;
        }
        
        return null;
    }
    
    private View findViewByDataPosition(int dataPosition) {
        try {
            Object layoutManager = recyclerView.getLayoutManager();
            if (layoutManager == null) {
                // Log.w(TAG, "findViewByDataPosition | layoutManager为null");
                return null;
            }
            
            java.lang.reflect.Method method = layoutManager.getClass().getMethod("c", int.class);
            View view = (View) method.invoke(layoutManager, dataPosition);
            
            if (view != null) {
                // Log.i(TAG, "findViewByDataPosition | layoutManager.c(" + dataPosition + ") 返回有效view"
                //         + " | 该view已附加到RecyclerView");
                
                boolean isAttachedToRV = false;
                for (int i = 0; i < recyclerView.getChildCount(); i++) {
                    if (recyclerView.getChildAt(i) == view) {
                        isAttachedToRV = true;
                        break;
                    }
                }
                // Log.d(TAG, "findViewByDataPosition | isAttachedToRV=" + isAttachedToRV);
                return view;
            } else {
                // Log.d(TAG, "findViewByDataPosition | layoutManager.c(" + dataPosition + ") 返回null (view未附加/已回收)");
            }
        } catch (NoSuchMethodException e) {
            // Log.e(TAG, "findViewByDataPosition | c方法不存在: " + e.getMessage());
        } catch (Exception e) {
            // Log.e(TAG, "findViewByDataPosition | 异常: " + e.getMessage());
        }
        return null;
    }

    public void saveFocusPosition(View focusedChild) {
        if (recyclerView == null || focusedChild == null) {
            // Log.w(TAG, "saveFocusPosition(byView) | 参数异常 | rv=" + (recyclerView != null)
            //         + " | child=" + (focusedChild != null));
            return;
        }
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            if (recyclerView.getChildAt(i) == focusedChild) {
                int dataPos = getDataPositionForView(focusedChild);
                int oldPos = focusPosition;
                if (dataPos >= 0) {
                    focusPosition = dataPos;
                    // Log.i(TAG, "saveFocusPosition(byView) | sectionId=" + sectionId
                    //         + " | " + oldPos + " -> " + dataPos + " (数据索引, 可见索引=" + i + ")");
                } else {
                    focusPosition = i;
                    // Log.w(TAG, "saveFocusPosition(byView) | getDataPositionForView失败，使用可见索引fallback"
                    //         + " | sectionId=" + sectionId
                    //         + " | " + oldPos + " -> " + i);
                }
                return;
            }
        }
        // Log.w(TAG, "saveFocusPosition(byView) | 未在children中找到目标view");
    }

    private void saveFocusPositionByIndex(int index) {
        int oldPos = focusPosition;
        focusPosition = index;
        // Log.d(TAG, "saveFocusPosition(byIndex) | sectionId=" + sectionId
        //         + " | " + oldPos + " -> " + index);
    }

    private void saveCurrentFocusFromRecyclerView() {
        if (recyclerView == null) return;
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            View child = recyclerView.getChildAt(i);
            if (child != null && child.hasFocus()) {
                int dataPos = getDataPositionForView(child);
                int oldPos = focusPosition;
                if (dataPos >= 0) {
                    focusPosition = dataPos;
                    // Log.d(TAG, "saveCurrentFocusFromRecyclerView | sectionId=" + sectionId
                    //         + " | " + oldPos + " -> " + dataPos + " (数据索引, 可见索引=" + i + ")");
                } else {
                    focusPosition = i;
                    // Log.w(TAG, "saveCurrentFocusFromRecyclerView | getDataPositionForView失败，使用可见索引fallback"
                    //         + " | sectionId=" + sectionId
                    //         + " | " + oldPos + " -> " + i);
                }
                return;
            }
        }
        // Log.d(TAG, "saveCurrentFocusFromRecyclerView | sectionId=" + sectionId
        //         + " | 未找到有焦点的child，保持原focusPosition=" + focusPosition);
    }

    public int getFocusPosition() {
        return focusPosition;
    }

    public int getDataPositionForView(View view) {
        if (view == null || dataList == null || adapter == null) {
            // Log.w(TAG, "getDataPositionForView | 参数异常，返回-1");
            return -1;
        }
        
        Object tagData = view.getTag();
        if (tagData == null) {
            // Log.w(TAG, "getDataPositionForView | tag为null，尝试遍历查找");
            return findPositionByTraversal(view);
        }
        
        for (int i = 0; i < dataList.size(); i++) {
            if (dataList.get(i) == tagData) {
                // Log.d(TAG, "getDataPositionForView | 通过tag匹配找到 dataPosition=" + i);
                return i;
            }
        }
        
        // Log.w(TAG, "getDataPositionForView | tag未匹配，尝试遍历查找");
        return findPositionByTraversal(view);
    }
    
    private int findPositionByTraversal(View view) {
        if (recyclerView == null) return -1;
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            if (recyclerView.getChildAt(i) == view) {
                // Log.d(TAG, "findPositionByTraversal | 找到可见索引=" + i + " (这不是数据索引!)");
                return -1;
            }
        }
        return -1;
    }

    public int getDataSize() {
        return (dataList == null ? 0 : dataList.size());
    }

    public void setFocusPosition(int pos) {
        // Log.d(TAG, "setFocusPosition | sectionId=" + sectionId + " | " + focusPosition + " -> " + pos);
        this.focusPosition = pos;
    }

    public int getSectionId() {
        return sectionId;
    }

    public void setSectionId(int id) {
        // Log.d(TAG, "setSectionId | " + sectionId + " -> " + id);
        this.sectionId = id;
    }

    public RecyclerView getRecyclerView() {
        return recyclerView;
    }

    public TextView getTitleView() {
        return titleView;
    }

    public VideoCardAdapter getAdapter() {
        return adapter;
    }

    public boolean hasData() {
        boolean result = dataList != null && !dataList.isEmpty();
        return result;
    }

    public List<?> getDataList() {
        return dataList;
    }

    public VideoCardBinder getBinder() {
        return binder;
    }

    public void setOnVideoClickListener(OnVideoClickListener listener) {
        this.videoClickListener = listener;
    }

    public void setOnNavTagFocusListener(OnNavTagFocusListener listener) {
        this.navTagFocusListener = listener;
    }

    public void setOnNavTagClickListener(OnNavTagClickListener listener) {
        this.navTagClickListener = listener;
    }

    public void setupNavigationTags(int totalCount) {
        Log.i(TAG, "setupNavigationTags | sectionId=" + sectionId + " | totalCount=" + totalCount);
        if (navTagRecyclerView == null || navTagAdapter == null) {
            Log.w(TAG, "setupNavigationTags | navTagRecyclerView或navTagAdapter为null");
            return;
        }
        
        if (totalCount > 10) {
            navTagAdapter.setTags(totalCount);
            navTagRecyclerView.setVisibility(View.VISIBLE);
            navTagRecyclerView.requestLayout();
            
            int navTagId = R.id.season_section_nav_tags;
            adapter.setNextFocusDownId(navTagId);
            recyclerView.setNextFocusDownId(navTagId);
            navTagRecyclerView.setNextFocusUpId(R.id.season_section_recycler);
            
            recyclerView.post(new Runnable() {
                @Override
                public void run() {
                    updateItemsFocusDownId(R.id.season_section_nav_tags);
                }
            });
            
            Log.i(TAG, "setupNavigationTags | 导航标签已显示 | tagCount=" + navTagAdapter.getTagCount());
        } else {
            navTagRecyclerView.setVisibility(View.GONE);
            adapter.setNextFocusDownId(View.NO_ID);
            recyclerView.post(new Runnable() {
                @Override
                public void run() {
                    updateItemsFocusDownId(View.NO_ID);
                }
            });
            Log.i(TAG, "setupNavigationTags | 视频数量<=10，不显示导航标签");
        }
    }

    private void updateItemsFocusDownId(int focusDownId) {
        if (recyclerView == null) {
            return;
        }
        int childCount = recyclerView.getChildCount();
        Log.i(TAG, "updateItemsFocusDownId | focusDownId=" + focusDownId + " | childCount=" + childCount);
        for (int i = 0; i < childCount; i++) {
            View child = recyclerView.getChildAt(i);
            if (child != null) {
                child.setNextFocusDownId(focusDownId);
            }
        }
    }

    public void updateNavTagSelection(int videoPosition) {
        if (navTagAdapter == null || navTagAdapter.isEmpty()) {
            return;
        }
        
        int visiblePosition = videoPosition + 1;
        int tagIndex = (visiblePosition - 1) / 10;
        
        if (tagIndex >= 0 && tagIndex < navTagAdapter.getTagCount()) {
            navTagAdapter.setSelectedPosition(tagIndex);
            navTagAdapter.scrollToPositionWithOffset(tagIndex);
            Log.i(TAG, "updateNavTagSelection | videoPosition=" + videoPosition 
                    + " | visiblePosition=" + visiblePosition 
                    + " | tagIndex=" + tagIndex);
        }
    }

    public int getNavTagSelectedPosition() {
        if (navTagAdapter == null) {
            return -1;
        }
        return navTagAdapter.getSelectedPosition();
    }

    public void scrollNavTagToPosition(int position) {
        if (navTagAdapter != null) {
            navTagAdapter.scrollToPosition(position);
        }
    }

    public void setNavTagSelectedPosition(int position) {
        if (navTagAdapter != null) {
            navTagAdapter.setSelectedPosition(position);
        }
    }

    public boolean hasNavigationTags() {
        return navTagRecyclerView != null 
                && navTagRecyclerView.getVisibility() == View.VISIBLE 
                && navTagAdapter != null 
                && !navTagAdapter.isEmpty();
    }

    public RecyclerView getNavTagRecyclerView() {
        return navTagRecyclerView;
    }

    public NavigationTagAdapter getNavTagAdapter() {
        return navTagAdapter;
    }

    public void setNavTagNextFocusDownId(int resId) {
        if (navTagRecyclerView != null) {
            navTagRecyclerView.setNextFocusDownId(resId);
        }
    }
}
