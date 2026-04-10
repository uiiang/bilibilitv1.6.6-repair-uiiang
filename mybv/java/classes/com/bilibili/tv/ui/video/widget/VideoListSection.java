package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
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
    private static final String CODE_VERSION = "v4.0-self-managed";

    // 焦点来源区域常量
    private static final int FOCUS_AREA_NONE = 0;
    private static final int FOCUS_AREA_VIDEO = 1;
    private static final int FOCUS_AREA_NAV_TAG = 2;

    public interface OnVideoClickListener {
        void onVideoClicked(Object data, int position);
    }

    public interface OnNavTagFocusListener {
        void onNavTagFocus(int sectionId, int tagIndex, int videoStartPosition);
    }

    public interface OnNavTagClickListener {
        void onNavTagClick(int sectionId, int tagIndex, int videoStartPosition);
    }

    public interface OnVideoCardClickListener {
        void onVideoCardClicked(long cid, com.bilibili.tv.player.basic.context.ResolveResourceParams params);
    }

    /**
     * 焦点离开组件边界时的回调
     * 组件内部完全管理视频卡片↔导航标签的焦点切换，
     * 只在焦点需要离开组件时通知外部
     */
    public interface OnFocusExitListener {
        /**
         * 焦点从视频卡片区域向上移出组件
         * @param sectionId 组件ID
         * @param focusPosition 当前焦点位置
         */
        void onFocusExitUp(int sectionId, int focusPosition);

        /**
         * 焦点从导航标签区域向下移出组件
         * @param sectionId 组件ID
         * @param selectedTagIndex 当前选中的导航标签索引
         */
        void onFocusExitDown(int sectionId, int selectedTagIndex);
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
    private int savedVideoFocusPosition = -1;
    private int savedTagFocusPosition = -1;
    private boolean isRestoringFocus = false;
    private OnVideoCardClickListener videoCardClickListener;
    private OnFocusExitListener focusExitListener;

    // 焦点映射状态
    private int currentFocusArea = FOCUS_AREA_NONE;
    private int lastNavTagVideoStart = 0;
    private int focusRestoreRetryCount = 0;
    private static final int MAX_FOCUS_RESTORE_RETRY = 5;
    // 焦点由dispatchKeyEvent控制标志，防止onItemFocus/onTagFocus/onFocusChange中的恢复逻辑干扰
    private boolean focusRedirecting = false;

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getAction() != KeyEvent.ACTION_DOWN) {
            return super.dispatchKeyEvent(event);
        }
        
        int keyCode = event.getKeyCode();
        
        // ==================== 有导航标签时的焦点管理 ====================
        if (hasNavigationTags()) {
            // 视频卡片区域 → 按DOWN → 移到正确的导航标签
            if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN && currentFocusArea == FOCUS_AREA_VIDEO) {
                Log.i(TAG, "dispatchKeyEvent | DOWN from video area | focusPosition=" + focusPosition);
                int tagIndex = focusPosition / 10;
                if (tagIndex >= navTagAdapter.getTagCount()) {
                    tagIndex = navTagAdapter.getTagCount() - 1;
                }

                focusRedirecting = true;
                currentFocusArea = FOCUS_AREA_NAV_TAG;
                lastNavTagVideoStart = tagIndex * 10;
                navTagAdapter.setSelectedPosition(tagIndex);
                navTagAdapter.scrollToPositionWithOffset(tagIndex);

                final int finalTagIndex = tagIndex;
                View tagView = navTagAdapter.findViewByPosition(finalTagIndex);
                if (tagView != null) {
                    tagView.requestFocus();
                    Log.i(TAG, "dispatchKeyEvent | DOWN -> direct focus to tagIndex=" + finalTagIndex);
                } else {
                    navTagRecyclerView.post(new Runnable() {
                        @Override
                        public void run() {
                            View tagView = navTagAdapter.findViewByPosition(finalTagIndex);
                            if (tagView != null) {
                                focusRedirecting = true;
                                tagView.requestFocus();
                                Log.i(TAG, "dispatchKeyEvent | DOWN -> delayed focus to tagIndex=" + finalTagIndex);
                            }
                        }
                    });
                }
                return true;
            }

            // 导航标签区域 → 按UP → 移到正确的视频卡片
            if (keyCode == KeyEvent.KEYCODE_DPAD_UP && currentFocusArea == FOCUS_AREA_NAV_TAG) {
                Log.i(TAG, "dispatchKeyEvent | UP from nav tag | focusPosition=" + focusPosition);
                int targetPosition = focusPosition;
                int dataSize = (dataList == null) ? 0 : dataList.size();
                if (dataSize > 0) {
                    targetPosition = Math.max(0, Math.min(targetPosition, dataSize - 1));
                }

                currentFocusArea = FOCUS_AREA_VIDEO;

                View targetView = findViewByDataPosition(targetPosition);
                if (targetView != null) {
                    focusRedirecting = true;
                    targetView.requestFocus();
                    Log.i(TAG, "dispatchKeyEvent | UP -> direct focus to position=" + targetPosition);
                } else {
                    final int finalPos = targetPosition;
                    recyclerView.post(new Runnable() {
                        @Override
                        public void run() {
                            if (!recyclerView.isAttachedToWindow()) return;
                            try {
                                java.lang.reflect.Method scrollToWithOffset = recyclerView.getLayoutManager().getClass().getMethod("b", int.class, int.class);
                                scrollToWithOffset.invoke(recyclerView.getLayoutManager(), finalPos, 0);
                            } catch (Exception e) {
                                try {
                                    java.lang.reflect.Method scrollToMethod = recyclerView.getClass().getMethod("a", int.class);
                                    scrollToMethod.invoke(recyclerView, finalPos);
                                } catch (Exception e2) {}
                            }
                            focusPosition = finalPos;
                            recyclerView.postDelayed(new Runnable() {
                                @Override
                                public void run() {
                                    View targetView = findViewByDataPosition(finalPos);
                                    if (targetView != null) {
                                        focusRedirecting = true;
                                        targetView.requestFocus();
                                        Log.i(TAG, "dispatchKeyEvent | UP -> delayed focus to position=" + finalPos);
                                    }
                                }
                            }, 100);
                        }
                    });
                }
                return true;
            }

            // 视频卡片区域 → 按UP → 焦点离开组件（通知外部）
            if (keyCode == KeyEvent.KEYCODE_DPAD_UP && currentFocusArea == FOCUS_AREA_VIDEO) {
                if (focusExitListener != null) {
                    Log.i(TAG, "dispatchKeyEvent | FOCUS EXIT UP | sectionId=" + sectionId + " | focusPosition=" + focusPosition);
                    focusExitListener.onFocusExitUp(sectionId, focusPosition);
                }
                return true;
            }

            // 导航标签区域 → 按DOWN → 焦点离开组件（通知外部）
            if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN && currentFocusArea == FOCUS_AREA_NAV_TAG) {
                if (focusExitListener != null) {
                    Log.i(TAG, "dispatchKeyEvent | FOCUS EXIT DOWN | sectionId=" + sectionId + " | selectedTagIndex=" + navTagAdapter.getSelectedPosition());
                    focusExitListener.onFocusExitDown(sectionId, navTagAdapter.getSelectedPosition());
                }
                return true;
            }
        } else {
            // ==================== 无导航标签时的焦点管理 ====================
            // 视频卡片区域 → 按UP/DOWN → 焦点离开组件（通知外部）
            if (currentFocusArea == FOCUS_AREA_VIDEO) {
                if (keyCode == KeyEvent.KEYCODE_DPAD_UP) {
                    if (focusExitListener != null) {
                        Log.i(TAG, "dispatchKeyEvent | FOCUS EXIT UP (no tags) | sectionId=" + sectionId + " | focusPosition=" + focusPosition);
                        focusExitListener.onFocusExitUp(sectionId, focusPosition);
                    }
                    return true;
                }
                if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                    if (focusExitListener != null) {
                        Log.i(TAG, "dispatchKeyEvent | FOCUS EXIT DOWN (no tags) | sectionId=" + sectionId + " | focusPosition=" + focusPosition);
                        focusExitListener.onFocusExitDown(sectionId, -1);
                    }
                    return true;
                }
            }
        }

        return super.dispatchKeyEvent(event);
    }

    public VideoListSection(Context context) {
        super(context);
        // Log.i(TAG, "构造 | 创建VideoListSection实例 | hashCode=" + this.hashCode() + " | CODE_VERSION=" + CODE_VERSION);
        LayoutInflater.from(context).inflate(R.layout.layout_season_section, this, true);
        initViews();
        // Log.i(TAG, "构造 | 初始化完成 | titleView=" + (titleView != null ? "OK" : "NULL")
        //         + " | recyclerView=" + (recyclerView != null ? "OK" : "NULL"));
    }

    public VideoListSection(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.layout_season_section, this, true);
        initViews();
    }

    public VideoListSection(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        LayoutInflater.from(context).inflate(R.layout.layout_season_section, this, true);
        initViews();
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
        // 左右焦点边界：防止焦点横向移出列表
        recyclerView.setNextFocusLeftId(R.id.season_section_recycler);
        recyclerView.setNextFocusRightId(R.id.season_section_recycler);
        // 上下焦点边界：由dispatchKeyEvent统一管理

        adapter = new VideoCardAdapter(getContext());

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
                Log.i(TAG, "onItemFocus | sectionId=" + sectionId + " | position=" + position + " | hasFocus=" + hasFocus
                        + " | focusRedirecting=" + focusRedirecting);
                if (hasFocus) {
                    if (focusRedirecting) {
                        // 焦点由dispatchKeyEvent控制，只更新状态，不做额外处理
                        focusRedirecting = false;
                        manualFocusRequested = false;
                        currentFocusArea = FOCUS_AREA_VIDEO;
                        focusPosition = position;
                        focusRestoreRetryCount = 0;
                        updateNavTagSelection(position);
                        return;
                    }
                    currentFocusArea = FOCUS_AREA_VIDEO;
                    manualFocusRequested = false;
                    focusPosition = position;
                    focusRestoreRetryCount = 0;
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
                Log.i(TAG, "onVideoFocusChange | sectionId=" + sectionId
                        + " | hasFocus=" + hasFocus
                        + " | currentFocusArea=" + currentFocusArea
                        + " | focusRedirecting=" + focusRedirecting
                        + " | manualFocusRequested=" + manualFocusRequested
                        + " | focusPosition=" + focusPosition);

                if (hasFocus) {
                    if (focusRedirecting || manualFocusRequested) {
                        // 焦点由dispatchKeyEvent或手动请求控制，不需要自动恢复
                        focusRedirecting = false;
                        manualFocusRequested = false;
                    } else if (currentFocusArea == FOCUS_AREA_NAV_TAG) {
                        // 从导航标签回到视频列表：定位到导航标签对应范围的视频卡片
                        restoreFocusFromNavTag();
                    } else {
                        // 从外部回到视频列表：恢复到上次保存的焦点位置
                        restoreFocusFromExternal();
                    }
                } else {
                    focusRedirecting = false;
                    manualFocusRequested = false;
                    saveCurrentFocusFromRecyclerView();
                }
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

                // 导航标签item按UP键：由dispatchKeyEvent统一管理，不再设置nextFocusUpId
                
                Log.i(TAG, "setupNavTagFocusBoundary | position=" + position 
                        + " | isFirst=" + isFirst + " | isLast=" + isLast);
            }
        });
        
        navTagAdapter.setOnTagFocusListener(new NavigationTagAdapter.OnTagFocusListener() {
            @Override
            public void onTagFocus(int tagIndex, int videoStartPosition) {
                Log.i(TAG, "onTagFocus | sectionId=" + sectionId + " | tagIndex=" + tagIndex 
                        + " | videoStartPosition=" + videoStartPosition
                        + " | prevFocusArea=" + currentFocusArea
                        + " | focusRedirecting=" + focusRedirecting);

                // 焦点由dispatchKeyEvent控制时，只更新基本状态
                if (focusRedirecting) {
                    focusRedirecting = false;
                    manualFocusRequested = false;
                    currentFocusArea = FOCUS_AREA_NAV_TAG;
                    lastNavTagVideoStart = videoStartPosition;
                    focusRestoreRetryCount = 0;
                    return;
                }

                // 如果焦点从视频列表来到导航标签（非手动请求），且当前tagIndex不是focusPosition对应的标签，
                // 需要重定向焦点到正确的标签
                if (currentFocusArea == FOCUS_AREA_VIDEO && !manualFocusRequested) {
                    int expectedTagIndex = focusPosition / 10;
                    if (expectedTagIndex != tagIndex && expectedTagIndex >= 0 && expectedTagIndex < navTagAdapter.getTagCount()) {
                        Log.i(TAG, "onTagFocus | 焦点重定向 | tagIndex=" + tagIndex 
                                + " -> expectedTagIndex=" + expectedTagIndex);
                        // 先更新currentFocusArea避免重定向时再次触发此逻辑
                        currentFocusArea = FOCUS_AREA_NAV_TAG;
                        lastNavTagVideoStart = expectedTagIndex * 10;
                        navTagAdapter.setSelectedPosition(expectedTagIndex);
                        navTagAdapter.scrollToPositionWithOffset(expectedTagIndex);

                        final int finalTagIndex = expectedTagIndex;
                        navTagRecyclerView.postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                View tagView = navTagAdapter.findViewByPosition(finalTagIndex);
                                if (tagView != null) {
                                    tagView.requestFocus();
                                    Log.i(TAG, "onTagFocus | 焦点重定向完成 | tagIndex=" + finalTagIndex);
                                }
                            }
                        }, 50);
                        return;
                    }
                }

                currentFocusArea = FOCUS_AREA_NAV_TAG;
                lastNavTagVideoStart = videoStartPosition;
                focusRestoreRetryCount = 0;
                navTagAdapter.setSelectedPosition(tagIndex);
                
                if (tagIndex >= 0) {
                    int currentVideoPosition = focusPosition;
                    int rangeStart = videoStartPosition;
                    int rangeEnd = videoStartPosition + 9;
                    
                    if (currentVideoPosition < rangeStart || currentVideoPosition > rangeEnd) {
                        // 只滚动，不更新focusPosition
                        scrollToDataPositionOnly(videoStartPosition);
                    }
                }
                
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
                
                if (tagIndex >= 0) {
                    int currentVideoPosition = focusPosition;
                    int rangeStart = videoStartPosition;
                    int rangeEnd = videoStartPosition + 9;
                    
                    if (currentVideoPosition < rangeStart || currentVideoPosition > rangeEnd) {
                        scrollToDataPosition(videoStartPosition);
                    }
                }
                
                if (navTagClickListener != null) {
                    navTagClickListener.onNavTagClick(sectionId, tagIndex, videoStartPosition);
                }
            }
        });
        
        navTagRecyclerView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                Log.i(TAG, "onNavTagRecyclerViewFocus | hasFocus=" + hasFocus
                        + " | currentFocusArea=" + currentFocusArea
                        + " | focusRedirecting=" + focusRedirecting
                        + " | focusPosition=" + focusPosition);

                if (hasFocus) {
                    if (focusRedirecting) {
                        focusRedirecting = false;
                    } else if (currentFocusArea == FOCUS_AREA_VIDEO) {
                        // 从视频列表来到导航标签：定位到当前focusPosition对应的导航标签
                        restoreNavTagFromVideo();
                    }
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

    public void hideTitle() {
        if (titleView != null) {
            titleView.setVisibility(View.GONE);
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
                if (!recyclerView.isAttachedToWindow()) {
                    return;
                }
                try {
                    Object layoutManager = recyclerView.getLayoutManager();
                    if (layoutManager != null) {
                        java.lang.reflect.Method scrollToWithOffset = layoutManager.getClass().getMethod("b", int.class, int.class);
                        scrollToWithOffset.invoke(layoutManager, finalPos, 0);
                    }
                } catch (Exception e) {
                    try {
                        java.lang.reflect.Method scrollToMethod = recyclerView.getClass().getMethod("a", int.class);
                        scrollToMethod.invoke(recyclerView, finalPos);
                    } catch (Exception e2) {
                    }
                }
                focusPosition = finalPos;
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
                
                // 使用b(int,int)方法（scrollToPositionWithOffset），offset=0
                // 强制将目标项滚动到屏幕最左边，而不是最小滚动
                try {
                    Object layoutManager = recyclerView.getLayoutManager();
                    if (layoutManager != null) {
                        java.lang.reflect.Method scrollToWithOffset = layoutManager.getClass().getMethod("b", int.class, int.class);
                        scrollToWithOffset.invoke(layoutManager, finalPos, 0);
                        Log.i(TAG, "scrollToDataPosition.post | b(int,int)成功 | position=" + finalPos);
                    }
                } catch (Exception e) {
                    Log.w(TAG, "scrollToDataPosition.post | b(int,int)失败: " + e.getMessage() + "，回退到a(int)");
                    try {
                        java.lang.reflect.Method scrollToMethod = recyclerView.getClass().getMethod("a", int.class);
                        scrollToMethod.invoke(recyclerView, finalPos);
                        Log.i(TAG, "scrollToDataPosition.post | a(int)成功 | position=" + finalPos);
                    } catch (Exception e2) {
                        Log.w(TAG, "scrollToDataPosition.post | a(int)失败: " + e2.getMessage());
                    }
                }
                focusPosition = finalPos;
            }
        });
    }

    /**
     * 滚动到指定位置，将目标项对齐到屏幕最左边
     * 供onTagFocus使用，滚动到导航标签对应范围
     * 同时更新focusPosition为对应导航标签范围的起始位置
     */
    private void scrollToDataPositionOnly(int position) {
        Log.i(TAG, "scrollToDataPositionOnly | sectionId=" + sectionId + " | position=" + position);

        if (recyclerView == null) {
            Log.w(TAG, "scrollToDataPositionOnly | recyclerView为null");
            return;
        }

        int dataSize = (dataList == null ? 0 : dataList.size());
        if (position < 0 || position >= dataSize) {
            Log.w(TAG, "scrollToDataPositionOnly | position越界 | position=" + position + " | dataSize=" + dataSize);
            return;
        }

        // 更新focusPosition为导航标签对应的范围起始位置
        // 这样从导航标签按UP回到视频列表时，焦点定位到当前导航标签对应的视频范围
        focusPosition = position;
        Log.i(TAG, "scrollToDataPositionOnly | focusPosition已更新为=" + focusPosition);

        final int finalPos = position;
        recyclerView.post(new Runnable() {
            @Override
            public void run() {
                if (!recyclerView.isAttachedToWindow()) {
                    Log.w(TAG, "scrollToDataPositionOnly.post | RecyclerView已脱离窗口");
                    return;
                }

                // 使用b(int,int)方法（scrollToPositionWithOffset），offset=0
                // 强制将目标项滚动到屏幕最左边，而不是最小滚动
                try {
                    Object layoutManager = recyclerView.getLayoutManager();
                    if (layoutManager != null) {
                        java.lang.reflect.Method scrollToWithOffset = layoutManager.getClass().getMethod("b", int.class, int.class);
                        scrollToWithOffset.invoke(layoutManager, finalPos, 0);
                        Log.i(TAG, "scrollToDataPositionOnly.post | b(int,int)成功 | position=" + finalPos);
                    }
                } catch (Exception e) {
                    Log.w(TAG, "scrollToDataPositionOnly.post | b(int,int)失败: " + e.getMessage() + "，回退到a(int)");
                    try {
                        java.lang.reflect.Method scrollToMethod = recyclerView.getClass().getMethod("a", int.class);
                        scrollToMethod.invoke(recyclerView, finalPos);
                        Log.i(TAG, "scrollToDataPositionOnly.post | a(int)成功 | position=" + finalPos);
                    } catch (Exception e2) {
                        Log.w(TAG, "scrollToDataPositionOnly.post | a(int)失败: " + e2.getMessage());
                    }
                }
            }
        });
    }

    /**
     * 从导航标签回到视频列表时，定位到导航标签对应范围的视频卡片
     * 优先使用focusPosition（如果它在导航标签范围内），否则使用lastNavTagVideoStart
     */
    private void restoreFocusFromNavTag() {
        int rangeStart = lastNavTagVideoStart;
        int rangeEnd = Math.min(lastNavTagVideoStart + 9, (dataList == null ? 0 : dataList.size()) - 1);

        int targetPosition;
        if (focusPosition >= rangeStart && focusPosition <= rangeEnd) {
            // focusPosition在导航标签范围内，直接使用
            targetPosition = focusPosition;
        } else {
            // focusPosition不在范围内（滚动到了新范围），使用导航标签起始位置
            targetPosition = lastNavTagVideoStart;
        }

        // 边界检查
        int dataSize = (dataList == null) ? 0 : dataList.size();
        if (dataSize == 0) return;
        targetPosition = Math.max(0, Math.min(targetPosition, dataSize - 1));

        Log.i(TAG, "restoreFocusFromNavTag | lastNavTagVideoStart=" + lastNavTagVideoStart
                + " | focusPosition=" + focusPosition
                + " | rangeStart=" + rangeStart + " | rangeEnd=" + rangeEnd
                + " | targetPosition=" + targetPosition);

        focusPosition = targetPosition;
        focusRestoreRetryCount = 0;
        restoreFocusWithRetry(targetPosition);
    }

    /**
     * 从外部回到视频列表时，恢复到上次保存的焦点位置
     */
    private void restoreFocusFromExternal() {
        View focusView = restoreFocusPositionInternal();
        if (focusView != null) {
            manualFocusRequested = true;
            boolean success = focusView.requestFocus();
            Log.i(TAG, "restoreFocusFromExternal | requestFocus=" + success
                    + " | position=" + focusPosition);
        } else if (recyclerView.getChildCount() > 0) {
            View fallbackView = recyclerView.getChildAt(0);
            manualFocusRequested = true;
            fallbackView.requestFocus();
            Log.i(TAG, "restoreFocusFromExternal | fallback到第1个child");
        }
    }

    /**
     * 从视频列表来到导航标签时，定位到当前focusPosition对应的导航标签
     */
    private void restoreNavTagFromVideo() {
        if (navTagAdapter == null || navTagAdapter.isEmpty()) return;

        int visiblePosition = focusPosition + 1; // 1-based
        int tagIndex = (visiblePosition - 1) / 10;

        if (tagIndex >= 0 && tagIndex < navTagAdapter.getTagCount()) {
            navTagAdapter.setSelectedPosition(tagIndex);
            navTagAdapter.scrollToPositionWithOffset(tagIndex);

            Log.i(TAG, "restoreNavTagFromVideo | focusPosition=" + focusPosition
                    + " | tagIndex=" + tagIndex);

            // 先尝试直接定位到目标标签
            final int finalTagIndex = tagIndex;
            View tagView = navTagAdapter.findViewByPosition(finalTagIndex);
            if (tagView != null) {
                tagView.requestFocus();
                Log.i(TAG, "restoreNavTagFromVideo | 直接焦点恢复到tagIndex=" + finalTagIndex);
            } else {
                // 目标标签尚未布局完成，延迟恢复
                navTagRecyclerView.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        View tagView = navTagAdapter.findViewByPosition(finalTagIndex);
                        if (tagView != null) {
                            tagView.requestFocus();
                            Log.i(TAG, "restoreNavTagFromVideo | 延迟焦点恢复到tagIndex=" + finalTagIndex);
                        }
                    }
                }, 100);
            }
        }
    }

    /**
     * 带重试上限的焦点恢复
     * 当目标view因滚动尚未布局完成时，延迟重试
     */
    private void restoreFocusWithRetry(final int targetPosition) {
        if (focusRestoreRetryCount > MAX_FOCUS_RESTORE_RETRY) {
            Log.w(TAG, "restoreFocusWithRetry | 超过最大重试次数 | position=" + targetPosition);
            // fallback到第一个可见子View
            if (recyclerView != null && recyclerView.getChildCount() > 0) {
                View fallbackView = recyclerView.getChildAt(0);
                manualFocusRequested = true;
                fallbackView.requestFocus();
            }
            focusRestoreRetryCount = 0;
            return;
        }

        View targetView = findViewByDataPosition(targetPosition);
        if (targetView != null) {
            manualFocusRequested = true;
            boolean success = targetView.requestFocus();
            Log.i(TAG, "restoreFocusWithRetry | requestFocus=" + success
                    + " | position=" + targetPosition
                    + " | retryCount=" + focusRestoreRetryCount);
            focusRestoreRetryCount = 0;
        } else {
            // 目标view不可见（滚动可能未完成），延迟重试
            focusRestoreRetryCount++;
            recyclerView.postDelayed(new Runnable() {
                @Override
                public void run() {
                    restoreFocusWithRetry(targetPosition);
                }
            }, 50);
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
        currentFocusArea = FOCUS_AREA_VIDEO;
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
            
            // 焦点边界由dispatchKeyEvent统一管理，不再需要设置nextFocusDownId/nextFocusUpId
            
            Log.i(TAG, "setupNavigationTags | 导航标签已显示 | tagCount=" + navTagAdapter.getTagCount());
        } else {
            navTagRecyclerView.setVisibility(View.GONE);
            Log.i(TAG, "setupNavigationTags | 视频数量<=10，不显示导航标签");
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

    public void scrollToCurrentVideoAtFirstPosition() {
        Log.i(TAG, "scrollToCurrentVideoAtFirstPosition | START");
        
        if (recyclerView == null || dataList == null || dataList.isEmpty() || binder == null) {
            Log.w(TAG, "scrollToCurrentVideoAtFirstPosition | 条件不满足");
            return;
        }
        
        int currentPosition = -1;
        for (int i = 0; i < dataList.size(); i++) {
            Object item = dataList.get(i);
            boolean isCur = false;
            if (currentCid > 0) {
                isCur = binder.isCurrentVideoByCid(item, currentCid);
            }
            if (!isCur && currentVideoId > 0) {
                isCur = binder.isCurrentVideo(item, currentVideoId);
            }
            if (!isCur && currentSeasonId > 0) {
                isCur = binder.isCurrentSeason(item, currentSeasonId);
            }
            if (isCur) {
                currentPosition = i;
                break;
            }
        }
        
        if (currentPosition < 0) {
            Log.w(TAG, "scrollToCurrentVideoAtFirstPosition | 未找到当前播放项");
            return;
        }
        
        Log.i(TAG, "scrollToCurrentVideoAtFirstPosition | currentPosition=" + currentPosition);
        
        final int finalPos = currentPosition;
        recyclerView.post(new Runnable() {
            @Override
            public void run() {
                if (!recyclerView.isAttachedToWindow()) {
                    return;
                }
                
                try {
                    java.lang.reflect.Method scrollToWithOffset = recyclerView.getLayoutManager().getClass().getMethod("b", int.class, int.class);
                    scrollToWithOffset.invoke(recyclerView.getLayoutManager(), finalPos, 0);
                } catch (Exception e) {
                    try {
                        java.lang.reflect.Method scrollToMethod = recyclerView.getClass().getMethod("a", int.class);
                        scrollToMethod.invoke(recyclerView, finalPos);
                    } catch (Exception e2) {
                    }
                }
                
                focusPosition = finalPos;
                
                recyclerView.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        requestFocusOnPosition(finalPos);
                    }
                }, 100);
            }
        });
    }

    public void setupBottomMenuFocusBoundary() {
        Log.i(TAG, "setupBottomMenuFocusBoundary | 设置底部菜单焦点边界");

        recyclerView.setSoundEffectsEnabled(false);
        recyclerView.setItemAnimator(null);
        recyclerView.setOverScrollMode(View.OVER_SCROLL_NEVER);

        if (navTagRecyclerView != null) {
            navTagRecyclerView.setSoundEffectsEnabled(false);
            navTagRecyclerView.setItemAnimator(null);
            navTagRecyclerView.setOverScrollMode(View.OVER_SCROLL_NEVER);
        }

        // 焦点边界由dispatchKeyEvent统一管理，不再使用nextFocusUpId/nextFocusDownId锁定
        // dispatchKeyEvent会在焦点需要离开组件时通过OnFocusExitListener回调通知外部
    }

    public void saveVideoFocusPosition(int position) {
        this.savedVideoFocusPosition = position;
        Log.i(TAG, "saveVideoFocusPosition | position=" + position);
    }

    public void saveTagFocusPosition(int position) {
        this.savedTagFocusPosition = position;
        Log.i(TAG, "saveTagFocusPosition | position=" + position);
    }

    public boolean isDataLoaded() {
        return dataList != null && !dataList.isEmpty() && adapter != null && adapter.a() > 0;
    }

    public void requestFocusOnPosition(int position) {
        if (position < 0) {
            return;
        }
        this.focusPosition = position;
        currentFocusArea = FOCUS_AREA_VIDEO;
        requestFocusOnSavedPosition();
    }

    public void cleanup() {
        if (dataList != null) {
            dataList.clear();
        }
    }

    public void onVideoCardClicked(long cid, com.bilibili.tv.player.basic.context.ResolveResourceParams params) {
        Log.i(TAG, "onVideoCardClicked | cid=" + cid);
        if (videoCardClickListener != null) {
            videoCardClickListener.onVideoCardClicked(cid, params);
        }
    }

    public void setOnVideoCardClickListener(OnVideoCardClickListener listener) {
        this.videoCardClickListener = listener;
    }

    public void setOnFocusExitListener(OnFocusExitListener listener) {
        this.focusExitListener = listener;
    }
}
