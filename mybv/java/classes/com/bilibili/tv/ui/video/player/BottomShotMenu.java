package com.bilibili.tv.ui.video.player;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.api.video.VideoShot;
import com.bilibili.tv.api.video.VideoShotItem;
import com.bilibili.tv.ui.video.widget.ChapterListAdapter;
import com.bilibili.tv.ui.video.widget.CurrentItemMatcher;
import com.bilibili.tv.ui.video.widget.NavigationTagAdapter;
import com.bilibili.tv.ui.video.widget.ShotBinder;
import com.bilibili.tv.ui.video.widget.VideoListSection;
import com.bilibili.tv.util.TimeFormatUtil;
import bl.aan;
import java.util.List;
import org.json.JSONArray;

public class BottomShotMenu extends FrameLayout {
    private static long showStartTime = 0;
    private VideoListSection videoListSection;
    private Runnable autoHideRunnable;
    private static final int AUTO_HIDE_DELAY = 5000;
    private static final boolean DEBUG_MODE = false;
    private OnShotClickListener shotClickListener;
    private boolean isHiding = false;
    private VideoShot videoShot;
    private int totalDuration;
    private int totalDurationMs;
    private List<VideoShotItem> allShots;
    private SeekBar seekBar;
    private TextView timeCurrent;
    private TextView timeTotal;
    private TextView seekbarTitle;
    
    private LinearLayout chapterSection;
    private android.support.v7.widget.RecyclerView chapterList;
    private ChapterListAdapter chapterAdapter;
    private JSONArray viewPoints;
    private int lastNavTagFocusPosition = -1;
    private int currentPlayTimeMsOnShow = 0;
    
    public interface OnShotClickListener {
        void onShotClicked(int timeSeconds);
    }
    
    public BottomShotMenu(Context context) {
        super(context);
        init();
    }
    
    public BottomShotMenu(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }
    
    public BottomShotMenu(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }
    
    private void init() {
        inflate(getContext(), R.layout.player_shot_menu, this);
        videoListSection = findViewById(R.id.shot_list_section);
        seekBar = findViewById(R.id.shot_seekbar);
        timeCurrent = findViewById(R.id.shot_time_current);
        timeTotal = findViewById(R.id.shot_time_total);
        seekbarTitle = findViewById(R.id.shot_seekbar_title);
        
        chapterSection = findViewById(R.id.chapter_section);
        chapterList = findViewById(R.id.chapter_list);
        
        android.util.Log.i("BottomShotMenu", "[init] chapterSection=" + chapterSection + ", chapterList=" + chapterList);
        
        videoListSection.hideTitle();
        
        initChapterList();
        
        initAutoHideTimer();
        
        setVisibility(View.GONE);
    }
    
    private boolean isChildOf(View child, View parent) {
        if (child == null || parent == null) return false;
        View current = child;
        while (current != null) {
            if (current == parent) return true;
            ViewParent vp = current.getParent();
            if (!(vp instanceof View)) break;
            current = (View) vp;
        }
        return false;
    }
    
    private void initChapterList() {
        android.util.Log.i("BottomShotMenu", "[initChapterList] chapterList=" + chapterList);
        if (chapterList == null) return;
        
        chapterAdapter = new ChapterListAdapter();
        chapterList.setLayoutManager(new com.bilibili.tv.widget.FixLinearLayoutManager(
            getContext(), 0, false));
        chapterList.setAdapter(chapterAdapter);
        chapterAdapter.attachRecyclerView(chapterList);
        
        android.util.Log.i("BottomShotMenu", "[initChapterList] chapterAdapter created=" + chapterAdapter);
        
        chapterAdapter.setOnChapterClickListener(new ChapterListAdapter.OnChapterClickListener() {
            @Override
            public void onChapterClick(int chapterIndex, int startTimeSeconds) {
                resetAutoHideTimer();
                if (shotClickListener != null) {
                    shotClickListener.onShotClicked(startTimeSeconds);
                }
                hide();
            }
        });
        
        chapterAdapter.setFocusBoundaryHandler(new ChapterListAdapter.FocusBoundaryHandler() {
            @Override
            public void setupFocusBoundary(View itemView, int position, int size) {
                if (position == 0) {
                    itemView.setNextFocusLeftId(itemView.getId());
                }
                if (position == size - 1) {
                    itemView.setNextFocusRightId(itemView.getId());
                }
            }
        });
        
        chapterList.setOnKeyListener(new OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                if (event.getAction() == KeyEvent.ACTION_DOWN && keyCode == KeyEvent.KEYCODE_DPAD_UP) {
                    if (lastNavTagFocusPosition >= 0) {
                        videoListSection.focusNavTag(lastNavTagFocusPosition);
                        return true;
                    }
                }
                return false;
            }
        });
    }
    
    public void setOnShotClickListener(OnShotClickListener listener) {
        this.shotClickListener = listener;
    }
    
    private void setupTimeBasedNavigationTags(java.util.List<VideoShotItem> shots, int totalDuration) {
        if (shots == null || shots.isEmpty()) {
            return;
        }
        
        android.util.Log.i("NavTagFocusBug", "[setupTimeBasedNavigationTags] shots.size()=" + shots.size() + ", totalDuration=" + totalDuration);
        
        int segmentSeconds = 300;
        int totalSegments = totalDuration / segmentSeconds + 1;
        
        java.util.List<NavigationTagAdapter.TagItem> customTags = new java.util.ArrayList<>();
        
        for (int seg = 0; seg < totalSegments; seg++) {
            int targetTime = seg * segmentSeconds;
            
            int startIndex = -1;
            for (int i = 0; i < shots.size(); i++) {
                if (shots.get(i).time >= targetTime) {
                    startIndex = i;
                    break;
                }
            }
            
            android.util.Log.i("NavTagFocusBug", "[setupTimeBasedNavigationTags] seg=" + seg + ", targetTime=" + targetTime + ", startIndex=" + startIndex);
            
            if (startIndex == -1) {
                continue;
            }
            
            String label = TimeFormatUtil.formatTime(targetTime, totalDuration);
            android.util.Log.i("NavTagFocusBug", "[setupTimeBasedNavigationTags] adding tag: label=" + label + ", startIndex=" + startIndex);
            customTags.add(new NavigationTagAdapter.TagItem(label, startIndex));
        }
        
        android.util.Log.i("NavTagFocusBug", "[setupTimeBasedNavigationTags] total customTags=" + customTags.size());
        
        int groupSize = 60;
        videoListSection.setupCustomNavigationTags(customTags, groupSize);
    }
    
    public void show(VideoShot shot, int durationMs, String videoTitle, int currentPlayTimeMs, JSONArray chapters) {
        android.util.Log.i("BottomShotMenu", "[show] chapters=" + chapters + ", chapters.length=" + (chapters != null ? chapters.length() : "null"));
        showStartTime = System.currentTimeMillis();
        ShotBinder.setShowStartTime(showStartTime);
        
        this.videoShot = shot;
        this.totalDurationMs = durationMs;
        this.totalDuration = durationMs / 1000;
        this.viewPoints = chapters;
        this.currentPlayTimeMsOnShow = currentPlayTimeMs;
        this.lastNavTagFocusPosition = -1;
        
        boolean hasVideoShot = shot != null && shot.getIndex() != null && !shot.getIndex().isEmpty();
        boolean hasChapters = chapters != null && chapters.length() > 0;
        
        if (!hasVideoShot && !hasChapters) {
            return;
        }
        
        if (seekbarTitle != null && videoTitle != null) {
            seekbarTitle.setText(videoTitle);
        }
        
        updateProgress(currentPlayTimeMs, durationMs);
        
        final int currentPlayTimeSec = currentPlayTimeMs / 1000;
        android.util.Log.i("NavTagFocusBug", "[show] currentPlayTimeSec=" + currentPlayTimeSec + " | currentPlayTimeMs=" + currentPlayTimeMs);
        
        if (hasVideoShot) {
            allShots = shot.getAllShots();
            final List<VideoShotItem> shots = allShots;
            
            android.util.Log.i("NavTagFocusBug", "[show] shots.size()=" + shots.size());
            for (int i = 0; i < Math.min(15, shots.size()); i++) {
                android.util.Log.i("NavTagFocusBug", "[show] shot[" + i + "].time=" + shots.get(i).time);
            }
            
            videoListSection.setVisibility(View.VISIBLE);
            videoListSection.setCurrentItemMatcher(new CurrentItemMatcher() {
                @Override
                public boolean isCurrentItem(Object data, int position) {
                    if (data instanceof VideoShotItem) {
                        VideoShotItem shotItem = (VideoShotItem) data;
                        boolean result = shotItem.time <= currentPlayTimeSec && 
                               (position + 1 >= shots.size() || shots.get(position + 1).time > currentPlayTimeSec);
                        if (result) {
                            android.util.Log.i("NavTagFocusBug", "[isCurrentItem] matched at position=" + position + " | shotItem.time=" + shotItem.time + " | currentPlayTimeSec=" + currentPlayTimeSec);
                        }
                        return result;
                    }
                    return false;
                }
            });
            
            ShotBinder.clearPendingLoads();
            ShotBinder.clearAllCache();
            ShotBinder.setDeferLoading(true);
            
            ShotBinder shotBinder = new ShotBinder(shot, totalDuration);
            videoListSection.setData(allShots, shotBinder);
            
            videoListSection.setupBottomMenuFocusBoundary();
            
            setupTimeBasedNavigationTags(shots, totalDuration);
        } else {
            videoListSection.setVisibility(View.GONE);
        }
        
        setupChapterList(chapters, currentPlayTimeSec);
        
        videoListSection.setOnNavTagScrollListener(new VideoListSection.OnNavTagScrollListener() {
            @Override
            public void onNavTagScrollStart() {
                ShotBinder.clearPendingLoads();
            }
            
            @Override
            public void onNavTagScrollEnd() {
            }
        });
        
        videoListSection.setOnVideoClickListener(new VideoListSection.OnVideoClickListener() {
            @Override
            public void onVideoClicked(Object data, int position) {
                if (data instanceof VideoShotItem) {
                    VideoShotItem shotItem = (VideoShotItem) data;
                    
                    resetAutoHideTimer();
                    
                    if (shotClickListener != null) {
                        shotClickListener.onShotClicked(shotItem.time);
                    }
                    
                    hide();
                }
            }
        });
        
        videoListSection.setOnFocusExitListener(new VideoListSection.OnFocusExitListener() {
            @Override
            public void onFocusExitUp(int sectionId, int focusPosition) {
            }
            
            @Override
            public void onFocusExitDown(int sectionId, int selectedTagIndex) {
                android.util.Log.i("BottomShotMenu", "[onFocusExitDown] selectedTagIndex=" + selectedTagIndex + ", chapterSection.visibility=" + (chapterSection != null ? chapterSection.getVisibility() : "null"));
                lastNavTagFocusPosition = selectedTagIndex;
                
                if (chapterSection != null && chapterSection.getVisibility() == View.VISIBLE) {
                    android.util.Log.i("BottomShotMenu", "[onFocusExitDown] calling focusOnCurrentChapter");
                    focusOnCurrentChapter();
                } else {
                    android.util.Log.i("BottomShotMenu", "[onFocusExitDown] no chapter section, focus should stay");
                }
            }
        });
        
        isHiding = false;
        clearAnimation();
        // 关键修复：清除上次隐藏的兜底任务，避免强制隐藏误伤本次显示
        removeCallbacks(forceHideRunnable);
        setVisibility(View.VISIBLE);
        startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.in_from_bottom));
        
        if (hasVideoShot) {
            videoListSection.post(new Runnable() {
                @Override
                public void run() {
                    if (!videoListSection.isDataLoaded()) {
                        videoListSection.postDelayed(this, 50);
                        return;
                    }
                    ShotBinder.clearPendingLoads();
                    videoListSection.scrollToCurrentItem();
                    
                    videoListSection.postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            ShotBinder.setDeferLoading(false);
                            videoListSection.refreshVisibleItems();
                            
                            videoListSection.postDelayed(new Runnable() {
                                @Override
                                public void run() {
                                    videoListSection.requestFocusOnCurrentPosition();
                                }
                            }, 50);
                        }
                    }, 150);
                }
            });
        } else if (hasChapters) {
            chapterList.post(new Runnable() {
                @Override
                public void run() {
                    chapterAdapter.scrollToCurrentChapter();
                    chapterList.postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            focusOnCurrentChapter();
                        }
                    }, 100);
                }
            });
        }
        
        resetAutoHideTimer();
    }
    
    private void setupChapterList(JSONArray chapters, int currentPlayTimeSec) {
        android.util.Log.i("BottomShotMenu", "[setupChapterList] chapters=" + chapters + ", chapterSection=" + chapterSection + ", chapterAdapter=" + chapterAdapter);
        if (chapterSection == null || chapterAdapter == null) {
            android.util.Log.i("BottomShotMenu", "[setupChapterList] chapterSection or chapterAdapter is null, returning");
            return;
        }
        
        if (chapters != null && chapters.length() > 0) {
            android.util.Log.i("BottomShotMenu", "[setupChapterList] chapters.length=" + chapters.length() + ", setting VISIBLE");
            chapterSection.setVisibility(View.VISIBLE);
            chapterAdapter.setChapters(chapters, currentPlayTimeSec);
            
            chapterList.post(new Runnable() {
                @Override
                public void run() {
                    chapterAdapter.scrollToCurrentChapter();
                }
            });
        } else {
            chapterSection.setVisibility(View.GONE);
        }
    }
    
    private void focusOnCurrentChapter() {
        if (chapterAdapter != null) {
            chapterAdapter.focusCurrentChapter();
        }
    }
    
    public void show(VideoShot shot, int durationMs, String videoTitle, int currentPlayTimeMs) {
        show(shot, durationMs, videoTitle, currentPlayTimeMs, null);
    }
    
    public void hide() {
        if (getVisibility() != View.VISIBLE || isHiding) {
            return;
        }
        cancelAutoHideTimer();
        ShotBinder.setDeferLoading(true);
        ShotBinder.clearPendingLoads();
        // 关键修复：立即隐藏并停止动画，不再依赖动画回调(onAnimationEnd)
        // onAnimationEnd可能丢失（低端设备/动画被中断），导致菜单残留VISIBLE覆盖屏幕底部，
        // 其内部SeekBar等组件消费触摸事件，拦截穿透到电子书WebView的鼠标点击，
        // 使阅读页面无法响应点击（手动关闭或定时自动关闭均受影响）
        // 直接调用finishHide()立即GONE，彻底消除残留窗口
        finishHide();
    }
    
    /**
     * 统一完成隐藏：无论动画回调是否正常触发，都确保菜单真正GONE
     */
    private void finishHide() {
        removeCallbacks(forceHideRunnable);
        clearAnimation(); // 停止可能仍在播放的显示动画，避免GONE后动画残留
        setVisibility(View.GONE);
        isHiding = false;
        ShotBinder.clearAllCache();
        android.util.Log.i("BottomShotMenu", "[finishHide] 菜单已真正隐藏（GONE）");
    }
    
    /**
     * 动画回调兜底：动画结束后强制隐藏，防止onAnimationEnd丢失导致菜单残留
     */
    private Runnable forceHideRunnable = new Runnable() {
        @Override
        public void run() {
            android.util.Log.i("BottomShotMenu", "[forceHideRunnable] 动画回调兜底，强制隐藏菜单");
            finishHide();
        }
    };
    
    public boolean isShowing() {
        return getVisibility() == View.VISIBLE || isHiding;
    }
    
    private void initAutoHideTimer() {
        autoHideRunnable = new Runnable() {
            @Override
            public void run() {
                hide();
            }
        };
    }
    
    public void resetAutoHideTimer() {
        if (autoHideRunnable != null) {
            removeCallbacks(autoHideRunnable);
            postDelayed(autoHideRunnable, AUTO_HIDE_DELAY);
        }
    }
    
    private void cancelAutoHideTimer() {
        if (autoHideRunnable != null) {
            removeCallbacks(autoHideRunnable);
        }
    }
    
    public void updateProgress(int currentMs, int totalMs) {
        if (DEBUG_MODE) {
            String currentTimeStr = aan.a((long) currentMs);
            String totalTimeStr = aan.a((long) totalMs);
            android.util.Log.i("BottomShotMenu", "[TIME_DEBUG] updateProgress: currentMs=" + currentMs + "ms (" + (currentMs/1000) + "s), displayTime=" + currentTimeStr + ", totalMs=" + totalMs + "ms (" + (totalMs/1000) + "s), displayTotal=" + totalTimeStr);
        }
        if (seekBar != null) {
            seekBar.setMax(totalMs);
            seekBar.setProgress(currentMs);
        }
        if (timeCurrent != null) {
            timeCurrent.setText(aan.a((long) currentMs));
        }
        if (timeTotal != null) {
            timeTotal.setText(aan.a((long) totalMs));
        }
    }
    
    public void cleanup() {
        cancelAutoHideTimer();
        ShotBinder.clearAllCache();
        if (videoListSection != null) {
            videoListSection.cleanup();
        }
    }
    
    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (isShowing() && event.getAction() == KeyEvent.ACTION_DOWN) {
            int keyCode = event.getKeyCode();
            if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT 
                || keyCode == KeyEvent.KEYCODE_DPAD_RIGHT
                || keyCode == KeyEvent.KEYCODE_DPAD_UP
                || keyCode == KeyEvent.KEYCODE_DPAD_DOWN
                || keyCode == KeyEvent.KEYCODE_DPAD_CENTER
                || keyCode == KeyEvent.KEYCODE_ENTER) {
                resetAutoHideTimer();
            }
            
            View currentFocus = findFocus();
            android.util.Log.i("BottomShotMenu", "[dispatchKeyEvent] keyCode=" + keyCode + ", currentFocus=" + currentFocus);
            
            if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                boolean isInVideoListSection = isChildOf(currentFocus, videoListSection);
                android.util.Log.i("BottomShotMenu", "[dispatchKeyEvent] DOWN: isInVideoListSection=" + isInVideoListSection + ", isNavTagFocused=" + videoListSection.isNavTagFocused());
                
                if (isInVideoListSection) {
                    if (videoListSection.isNavTagFocused()) {
                        android.util.Log.i("BottomShotMenu", "[dispatchKeyEvent] nav tag focused, moving to chapter list");
                        lastNavTagFocusPosition = videoListSection.getNavTagSelectedPosition();
                        if (chapterSection != null && chapterSection.getVisibility() == View.VISIBLE) {
                            focusOnCurrentChapter();
                            return true;
                        } else {
                            android.util.Log.i("BottomShotMenu", "[dispatchKeyEvent] no chapter section, focus stays");
                            return true;
                        }
                    }
                }
            }
            
            if (keyCode == KeyEvent.KEYCODE_DPAD_UP) {
                boolean isInChapterSection = isChildOf(currentFocus, chapterSection);
                android.util.Log.i("BottomShotMenu", "[dispatchKeyEvent] UP: isInChapterSection=" + isInChapterSection);
                
                if (isInChapterSection) {
                    android.util.Log.i("BottomShotMenu", "[dispatchKeyEvent] focus on chapterSection, moving back to nav tag");
                    if (lastNavTagFocusPosition >= 0) {
                        videoListSection.focusNavTag(lastNavTagFocusPosition);
                        return true;
                    }
                }
            }
            
            if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT || keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                boolean isInChapterSection = isChildOf(currentFocus, chapterSection);
                if (isInChapterSection && chapterAdapter != null) {
                    int chapterCount = chapterAdapter.getChapterCount();
                    if (chapterCount > 0) {
                        int focusedPosition = chapterAdapter.getFocusedPosition(currentFocus);
                        if (focusedPosition >= 0) {
                            if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT && focusedPosition == 0) {
                                return true;
                            }
                            if (keyCode == KeyEvent.KEYCODE_DPAD_RIGHT && focusedPosition == chapterCount - 1) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return super.dispatchKeyEvent(event);
    }
    
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cleanup();
    }
}
