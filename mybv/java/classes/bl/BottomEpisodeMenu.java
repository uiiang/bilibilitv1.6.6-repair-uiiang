package bl;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bilibili.tv.R;
import com.bilibili.tv.ui.video.widget.VideoListSection;
import com.bilibili.tv.ui.video.widget.UnifiedVideoCardBinder;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import java.util.ArrayList;
import java.util.List;

public class BottomEpisodeMenu extends FrameLayout {
    private static final String TAG = "BottomEpisodeMenu";
    private VideoListSection videoListSection;
    private TextView titleTextView;
    private Runnable autoHideRunnable;
    private static final int AUTO_HIDE_DELAY = 5000;
    private OnEpisodeClickListener episodeClickListener;
    private boolean isHiding = false;
    
    public interface OnEpisodeClickListener {
        void onEpisodeClicked(ResolveResourceParams params, int position);
    }
    
    public BottomEpisodeMenu(Context context) {
        super(context);
        init();
    }
    
    public BottomEpisodeMenu(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }
    
    public BottomEpisodeMenu(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }
    
    private void init() {
        inflate(getContext(), R.layout.player_episode_menu, this);
        videoListSection = findViewById(R.id.episode_list_section);
        titleTextView = findViewById(R.id.playlist_title);
        
        videoListSection.hideTitle();
        videoListSection.setShowIndexBadge(true);
        
        videoListSection.setupBottomMenuFocusBoundary();
        
        initAutoHideTimer();
        
        setVisibility(View.GONE);
    }
    
    public void setOnEpisodeClickListener(OnEpisodeClickListener listener) {
        this.episodeClickListener = listener;
    }
    
    public void setData(ResolveResourceParams[] paramsArray, long currentCid, String title, int count) {
        if (paramsArray == null || paramsArray.length == 0) {
            return;
        }
        
        if (titleTextView != null) {
            titleTextView.setText(title + "(" + count + ")");
        }
        
        List<Object> dataList = new ArrayList<>();
        int listType = 1;
        for (ResolveResourceParams params : paramsArray) {
            dataList.add(params);
            if (params.mListType > 0) {
                listType = params.mListType;
            }
        }
        
        UnifiedVideoCardBinder binder = new UnifiedVideoCardBinder(listType);
        
        videoListSection.setCurrentCid(currentCid);
        videoListSection.setData(dataList, binder);
        videoListSection.setupNavigationTags(count);
        
        videoListSection.setOnVideoClickListener(new VideoListSection.OnVideoClickListener() {
            @Override
            public void onVideoClicked(Object data, int position) {
                if (data instanceof ResolveResourceParams) {
                    ResolveResourceParams params = (ResolveResourceParams) data;
                    
                    resetAutoHideTimer();
                    
                    if (episodeClickListener != null) {
                        episodeClickListener.onEpisodeClicked(params, position);
                    }
                    
                    hide();
                }
            }
        });
    }
    
    public void show(ResolveResourceParams[] paramsArray, long currentCid, String title, int count) {
        setData(paramsArray, currentCid, title, count);
        
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
                videoListSection.scrollToCurrentVideoAtFirstPosition();
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
        return super.dispatchKeyEvent(event);
    }
    
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cleanup();
    }
}
