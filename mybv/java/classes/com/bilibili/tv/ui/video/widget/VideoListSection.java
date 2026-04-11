package com.bilibili.tv.ui.video.widget;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
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
                } else {
                    navTagRecyclerView.post(new Runnable() {
                        @Override
                        public void run() {
                            View tagView = navTagAdapter.findViewByPosition(finalTagIndex);
                            if (tagView != null) {
                                focusRedirecting = true;
                                tagView.requestFocus();
                            }
                        }
                    });
                }
                return true;
            }

            // 导航标签区域 → 按UP → 移到正确的视频卡片
            if (keyCode == KeyEvent.KEYCODE_DPAD_UP && currentFocusArea == FOCUS_AREA_NAV_TAG) {
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
                    focusExitListener.onFocusExitUp(sectionId, focusPosition);
                }
                return true;
            }

            // 导航标签区域 → 按DOWN → 焦点离开组件（通知外部）
            if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN && currentFocusArea == FOCUS_AREA_NAV_TAG) {
                if (focusExitListener != null) {
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
                        focusExitListener.onFocusExitUp(sectionId, focusPosition);
                    }
                    return true;
                }
                if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                    if (focusExitListener != null) {
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
        LayoutInflater.from(context).inflate(R.layout.layout_season_section, this, true);
        initViews();
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
            return;
        }

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
            }
        });

        adapter.setOnItemClickListener(new VideoCardAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(Object data, int position) {
                boolean isCurrentVideo = false;
                boolean hasCidCheck = false;
                if (currentCid > 0 && adapter.getBinder() != null && data != null) {
                    isCurrentVideo = adapter.getBinder().isCurrentVideoByCid(data, currentCid);
                    hasCidCheck = true;
                }

                if (!hasCidCheck && currentVideoId > 0 && adapter.getBinder() != null && data != null) {
                    isCurrentVideo = adapter.getBinder().isCurrentVideo(data, currentVideoId);
                }

                if (!isCurrentVideo && currentSeasonId > 0 && adapter.getBinder() != null && data != null) {
                    isCurrentVideo = adapter.getBinder().isCurrentSeason(data, currentSeasonId);
                }
                
                if (interceptCurrentVideoClick && isCurrentVideo) {
                    return;
                }
                
                saveFocusPositionByIndex(position);
                if (videoClickListener != null) {
                    videoClickListener.onVideoClicked(data, position);
                }
            }
        });

        adapter.setOnItemFocusListener(new VideoCardAdapter.OnItemFocusListener() {
            @Override
            public void onItemFocus(int position, boolean hasFocus) {
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

        recyclerView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
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
                    currentFocusArea = FOCUS_AREA_NONE;
                    saveCurrentFocusFromRecyclerView();
                }
            }
        });

        initNavigationTags();
    }

    private void initNavigationTags() {
        navTagRecyclerView = (RecyclerView) findViewById(R.id.season_section_nav_tags);
        if (navTagRecyclerView == null) {
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
            }
        });
        
        navTagAdapter.setOnTagFocusListener(new NavigationTagAdapter.OnTagFocusListener() {
            @Override
            public void onTagFocus(int tagIndex, int videoStartPosition) {
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
                if (hasFocus) {
                    if (focusRedirecting) {
                        focusRedirecting = false;
                    } else if (currentFocusArea == FOCUS_AREA_VIDEO) {
                        // 从视频列表来到导航标签：定位到当前focusPosition对应的导航标签
                        restoreNavTagFromVideo();
                    }
                } else {
                    currentFocusArea = FOCUS_AREA_NONE;
                }
            }
        });
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
        return fullyVisible;
    }

    public void setTitle(String title, int count) {
        String fullTitle = title + "(" + count + ")";
        if (titleView != null && title != null) {
            titleView.setText(fullTitle);
        }
    }

    public void setTitle(String title) {
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
        this.dataList = data;
        this.binder = b;
        if (adapter != null) {
            adapter.setData(data, b);
        }
    }

    public void setCurrentVideoId(long videoId) {
        this.currentVideoId = videoId;
    }

    public void setCurrentCid(long cid) {
        this.currentCid = cid;
    }

    public long getCurrentCid() {
        return currentCid;
    }

    public void setInterceptCurrentVideoClick(boolean intercept) {
        this.interceptCurrentVideoClick = intercept;
    }

    public void setCurrentSeasonId(int seasonId) {
        this.currentSeasonId = seasonId;
    }

    public int getCurrentSeasonId() {
        return currentSeasonId;
    }

    public void scrollToCurrentVideo() {
        if (recyclerView == null) {
            return;
        }
        if (dataList == null || dataList.isEmpty()) {
            return;
        }
        if (binder == null) {
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
            }
            if (!hasCidCheck && currentVideoId > 0) {
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
            return;
        }

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
        if (recyclerView == null) {
            return;
        }
        
        int dataSize = (dataList == null ? 0 : dataList.size());
        if (position < 0 || position >= dataSize) {
            return;
        }
        
        final int finalPos = position;
        recyclerView.post(new Runnable() {
            @Override
            public void run() {
                if (!recyclerView.isAttachedToWindow()) {
                    return;
                }
                
                // 使用b(int,int)方法（scrollToPositionWithOffset），offset=0
                // 强制将目标项滚动到屏幕最左边，而不是最小滚动
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

    /**
     * 滚动到指定位置，将目标项对齐到屏幕最左边
     * 供onTagFocus使用，滚动到导航标签对应范围
     * 同时更新focusPosition为对应导航标签范围的起始位置
     */
    private void scrollToDataPositionOnly(int position) {
        if (recyclerView == null) {
            return;
        }

        int dataSize = (dataList == null ? 0 : dataList.size());
        if (position < 0 || position >= dataSize) {
            return;
        }

        // 更新focusPosition为导航标签对应的范围起始位置
        // 这样从导航标签按UP回到视频列表时，焦点定位到当前导航标签对应的视频范围
        focusPosition = position;

        final int finalPos = position;
        recyclerView.post(new Runnable() {
            @Override
            public void run() {
                if (!recyclerView.isAttachedToWindow()) {
                    return;
                }

                // 使用b(int,int)方法（scrollToPositionWithOffset），offset=0
                // 强制将目标项滚动到屏幕最左边，而不是最小滚动
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
            focusView.requestFocus();
        } else if (recyclerView.getChildCount() > 0) {
            View fallbackView = recyclerView.getChildAt(0);
            manualFocusRequested = true;
            fallbackView.requestFocus();
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

            final int finalTagIndex = tagIndex;
            View tagView = navTagAdapter.findViewByPosition(finalTagIndex);
            if (tagView != null) {
                tagView.requestFocus();
            } else {
                // 目标标签尚未布局完成，延迟恢复
                navTagRecyclerView.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        View tagView = navTagAdapter.findViewByPosition(finalTagIndex);
                        if (tagView != null) {
                            tagView.requestFocus();
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
            targetView.requestFocus();
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
        manualFocusRequested = true;
        currentFocusArea = FOCUS_AREA_VIDEO;
        
        View focusView = restoreFocusPositionInternal();
        if (focusView != null) {
            return focusView.requestFocus();
        }
        
        if (recyclerView != null && recyclerView.getChildCount() > 0) {
            View fallbackView = recyclerView.getChildAt(0);
            return fallbackView.requestFocus();
        }
        
        return false;
    }

    private View restoreFocusPositionInternal() {
        if (recyclerView == null) {
            return null;
        }

        int dataSize = (dataList == null ? 0 : dataList.size());
        if (dataSize == 0) {
            return null;
        }

        int dataPosition = Math.min(focusPosition, dataSize - 1);
        dataPosition = Math.max(0, dataPosition);

        int childCount = recyclerView.getChildCount();
        if (childCount == 0) {
            return null;
        }

        View targetView = findViewByDataPosition(dataPosition);
        if (targetView != null) {
            return targetView;
        }
        
        View firstChild = recyclerView.getChildAt(0);
        if (firstChild != null) {
            return firstChild;
        }
        
        return null;
    }
    
    private View findViewByDataPosition(int dataPosition) {
        try {
            Object layoutManager = recyclerView.getLayoutManager();
            if (layoutManager == null) {
                return null;
            }
            
            java.lang.reflect.Method method = layoutManager.getClass().getMethod("c", int.class);
            View view = (View) method.invoke(layoutManager, dataPosition);
            
            if (view != null) {
                boolean isAttachedToRV = false;
                for (int i = 0; i < recyclerView.getChildCount(); i++) {
                    if (recyclerView.getChildAt(i) == view) {
                        isAttachedToRV = true;
                        break;
                    }
                }
                return view;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void saveFocusPosition(View focusedChild) {
        if (recyclerView == null || focusedChild == null) {
            return;
        }
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            if (recyclerView.getChildAt(i) == focusedChild) {
                int dataPos = getDataPositionForView(focusedChild);
                if (dataPos >= 0) {
                    focusPosition = dataPos;
                } else {
                    focusPosition = i;
                }
                return;
            }
        }
    }

    private void saveFocusPositionByIndex(int index) {
        focusPosition = index;
    }

    private void saveCurrentFocusFromRecyclerView() {
        if (recyclerView == null) return;
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            View child = recyclerView.getChildAt(i);
            if (child != null && child.hasFocus()) {
                int dataPos = getDataPositionForView(child);
                if (dataPos >= 0) {
                    focusPosition = dataPos;
                } else {
                    focusPosition = i;
                }
                return;
            }
        }
    }

    public int getFocusPosition() {
        return focusPosition;
    }

    public int getDataPositionForView(View view) {
        if (view == null || dataList == null || adapter == null) {
            return -1;
        }
        
        Object tagData = view.getTag();
        if (tagData == null) {
            return findPositionByTraversal(view);
        }
        
        for (int i = 0; i < dataList.size(); i++) {
            if (dataList.get(i) == tagData) {
                return i;
            }
        }
        
        return findPositionByTraversal(view);
    }
    
    private int findPositionByTraversal(View view) {
        if (recyclerView == null) return -1;
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            if (recyclerView.getChildAt(i) == view) {
                return -1;
            }
        }
        return -1;
    }

    public int getDataSize() {
        return (dataList == null ? 0 : dataList.size());
    }

    public void setFocusPosition(int pos) {
        this.focusPosition = pos;
    }

    public int getSectionId() {
        return sectionId;
    }

    public void setSectionId(int id) {
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
        if (navTagRecyclerView == null || navTagAdapter == null) {
            return;
        }
        
        if (totalCount > 10) {
            navTagAdapter.setTags(totalCount);
            navTagRecyclerView.setVisibility(View.VISIBLE);
            navTagRecyclerView.requestLayout();
            
            // 焦点边界由dispatchKeyEvent统一管理，不再需要设置nextFocusDownId/nextFocusUpId
        } else {
            navTagRecyclerView.setVisibility(View.GONE);
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
        if (recyclerView == null || dataList == null || dataList.isEmpty() || binder == null) {
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
            return;
        }
        
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
    }

    public void saveTagFocusPosition(int position) {
        this.savedTagFocusPosition = position;
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
