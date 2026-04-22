package com.bilibili.tv.ui.video.player;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.api.video.VideoShot;
import com.bilibili.tv.api.video.VideoShotItem;
import com.bilibili.tv.ui.video.widget.CurrentItemMatcher;
import com.bilibili.tv.ui.video.widget.NavigationTagAdapter;
import com.bilibili.tv.ui.video.widget.ShotBinder;
import com.bilibili.tv.ui.video.widget.VideoListSection;
import com.bilibili.tv.util.TimeFormatUtil;
import java.util.List;

public class BottomShotMenu extends FrameLayout {
    private static final String TAG = "ShotMenuBug";
    private VideoListSection videoListSection;
    private TextView titleTextView;
    private Runnable autoHideRunnable;
    private static final int AUTO_HIDE_DELAY = 5000;
    private OnShotClickListener shotClickListener;
    private boolean isHiding = false;
    private VideoShot videoShot;
    private int totalDuration;
    private List<VideoShotItem> allShots;
    
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
        titleTextView = findViewById(R.id.shot_title);
        
        videoListSection.hideTitle();
        videoListSection.setupBottomMenuFocusBoundary();
        
        initAutoHideTimer();
        
        setVisibility(View.GONE);
    }
    
    public void setOnShotClickListener(OnShotClickListener listener) {
        this.shotClickListener = listener;
    }
    
    private void setupTimeBasedNavigationTags(java.util.List<VideoShotItem> shots, int totalDuration) {
        if (shots == null || shots.isEmpty()) {
            return;
        }
        
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
            
            if (startIndex == -1) {
                continue;
            }
            
            String label = TimeFormatUtil.formatTime(targetTime, totalDuration);
            customTags.add(new NavigationTagAdapter.TagItem(label, startIndex));
        }
        
        int groupSize = 60;
        videoListSection.setupCustomNavigationTags(customTags, groupSize);
    }
    
    public void show(VideoShot shot, int duration, String videoTitle, int currentPlayTimeSec) {
        this.videoShot = shot;
        this.totalDuration = duration;
        
        if (videoShot == null || videoShot.getIndex() == null || videoShot.getIndex().isEmpty()) {
            android.util.Log.i(TAG, "show: videoShot is null or empty");
            return;
        }
        
        if (titleTextView != null && videoTitle != null) {
            titleTextView.setText(videoTitle);
        }
        
        allShots = videoShot.getAllShots();
        
        final int currentPlayTime = currentPlayTimeSec;
        final List<VideoShotItem> shots = allShots;
        
        videoListSection.setCurrentItemMatcher(new CurrentItemMatcher() {
            @Override
            public boolean isCurrentItem(Object data, int position) {
                if (data instanceof VideoShotItem) {
                    VideoShotItem shotItem = (VideoShotItem) data;
                    return shotItem.time <= currentPlayTime && 
                           (position + 1 >= shots.size() || shots.get(position + 1).time > currentPlayTime);
                }
                return false;
            }
        });
        
        ShotBinder shotBinder = new ShotBinder(videoShot, totalDuration);
        videoListSection.setData(allShots, shotBinder);
        
        setupTimeBasedNavigationTags(shots, totalDuration);
        
        videoListSection.setOnNavTagScrollListener(new VideoListSection.OnNavTagScrollListener() {
            @Override
            public void onNavTagScrollStart() {
                android.util.Log.i(TAG, "onNavTagScrollStart | 清空待加载图片");
                ShotBinder.clearPendingLoads();
            }
            
            @Override
            public void onNavTagScrollEnd() {
                android.util.Log.i(TAG, "onNavTagScrollEnd | 滚动结束");
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
        
        isHiding = false;
        clearAnimation();
        setVisibility(View.VISIBLE);
        startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.in_from_bottom));
        
        videoListSection.post(new Runnable() {
            @Override
            public void run() {
                if (!videoListSection.isDataLoaded()) {
                    videoListSection.postDelayed(this, 50);
                    return;
                }
                android.util.Log.i(TAG, "ShotMenu.show: calling scrollToCurrentItem");
                videoListSection.scrollToCurrentItem();
            }
        });
        
        resetAutoHideTimer();
    }
    
    public void hide() {
        if (getVisibility() != View.VISIBLE || isHiding) {
            return;
        }
        cancelAutoHideTimer();
        isHiding = true;
        Animation animation = AnimationUtils.loadAnimation(getContext(), R.anim.out_to_bottom);
        animation.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationStart(Animation animation) {
            }
            @Override
            public void onAnimationEnd(Animation animation) {
                setVisibility(View.GONE);
                isHiding = false;
            }
            @Override
            public void onAnimationRepeat(Animation animation) {
            }
        });
        startAnimation(animation);
    }
    
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
    
    public void cleanup() {
        cancelAutoHideTimer();
        if (videoListSection != null) {
            videoListSection.cleanup();
        }
    }
    
    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        android.util.Log.i(TAG, "dispatchKeyEvent: keyCode=" + event.getKeyCode() + ", action=" + event.getAction() + ", isShowing=" + isShowing());
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
        }
        boolean result = super.dispatchKeyEvent(event);
        android.util.Log.i(TAG, "dispatchKeyEvent: super returned " + result);
        return result;
    }
    
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cleanup();
    }
}
