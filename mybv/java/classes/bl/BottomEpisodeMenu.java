package bl;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
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
    private static final String TAG = "ShotMenuBug";
    private VideoListSection videoListSection;
    private TextView titleTextView;
    private Runnable autoHideRunnable;
    private static final int AUTO_HIDE_DELAY = 5000;
    private OnEpisodeClickListener episodeClickListener;
    private boolean isHiding = false;
    
    // 标题上下文：合集名（分集时为 null）、视频主标题、是否合集、条目总数
    private String listTitle;
    private String mainTitle;
    private boolean isCollection;
    private int itemCount;
    
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
    
    /**
     * 设置标题上下文（由 xl 在显示选集前调用）。
     *
     * @param mainTitle    视频主标题（player_params_title）
     * @param listTitle    合集名；非合集传 null/空
     * @param isCollection 是否 UGC 合集
     */
    public void setTitleContext(String mainTitle, String listTitle, boolean isCollection) {
        this.mainTitle = mainTitle;
        this.listTitle = listTitle;
        this.isCollection = isCollection && listTitle != null && !listTitle.isEmpty();
    }
    
    /**
     * 按上下文拼标题：
     * 合集 → 「合集名 - 条目标题」；分集 → 「视频标题 - 分P标题」。
     * 前缀与条目标题相同时去重，避免出现「标题 - 标题」。
     */
    private String buildTitle(String itemTitle) {
        String prefix = this.isCollection ? this.listTitle : this.mainTitle;
        boolean hasPrefix = prefix != null && !prefix.isEmpty();
        boolean hasItem = itemTitle != null && !itemTitle.isEmpty();
        if (hasPrefix && hasItem) {
            return prefix.equals(itemTitle) ? prefix : (prefix + " - " + itemTitle);
        }
        if (hasPrefix) {
            return prefix;
        }
        return hasItem ? itemTitle : "";
    }
    
    /** 统一带条目数的最终标题文本。 */
    private String formatTitle(String itemTitle, String fallback) {
        String built = buildTitle(itemTitle);
        if (built.isEmpty()) {
            built = fallback != null ? fallback : "";
        }
        return this.itemCount > 0 ? (built + "(" + this.itemCount + ")") : built;
    }
    
    /** 焦点移动到某个卡片时刷新标题。 */
    private void updateTitleForItem(String itemTitle) {
        if (titleTextView != null) {
            titleTextView.setText(formatTitle(itemTitle, null));
        }
    }
    
    public void setData(ResolveResourceParams[] paramsArray, long currentCid, String title, int count) {
        if (paramsArray == null || paramsArray.length == 0) {
            return;
        }
        
        List<Object> dataList = new ArrayList<>();
        int listType = 1;
        String currentItemTitle = null;
        for (ResolveResourceParams params : paramsArray) {
            dataList.add(params);
            if (params.mListType > 0) {
                listType = params.mListType;
            }
            if (currentItemTitle == null && params.mCid == currentCid) {
                currentItemTitle = params.mPageTitle;
            }
        }
        
        // 默认标题：当前播放项（每次 show 都会重算，隐藏后再显示自然恢复默认）
        this.itemCount = count;
        if (titleTextView != null) {
            titleTextView.setText(formatTitle(currentItemTitle, title));
        }
        
        UnifiedVideoCardBinder binder = new UnifiedVideoCardBinder(listType);
        // 左右移动光标时，标题跟随光标所在项（走 VideoListSection 新增的转发回调，
        // 不动 adapter 的 OnItemFocusListener —— 那个被焦点重定向占用）
        final ResolveResourceParams[] items = paramsArray;
        videoListSection.setOnItemFocusedListener(new VideoListSection.OnItemFocusedListener() {
            @Override
            public void onItemFocused(int position) {
                if (position >= 0 && position < items.length) {
                    updateTitleForItem(items[position].mPageTitle);
                }
            }
        });
        
        videoListSection.setCurrentCid(currentCid);
        videoListSection.setCurrentPlayingCid(currentCid);
        videoListSection.setData(dataList, binder);
        videoListSection.syncAdapterCurrentState();
        videoListSection.setupNavigationTags(count,10);
        
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
                android.util.Log.i(TAG, "EpisodeMenu.show: calling scrollToCurrentVideoAtFirstPosition");
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
        // 统一隐藏逻辑：手动关闭与定时自动关闭走完全相同路径，不区分关闭方式
        // 立即GONE并停止动画，不再依赖动画回调(onAnimationEnd)
        // 低端设备上onAnimationEnd可能丢失，导致菜单残留VISIBLE覆盖屏幕底部拦截触摸，
        // 使电子书阅读页面无法响应鼠标点击
        clearAnimation();
        android.util.Log.i(TAG, "EpisodeMenu.hide: 立即GONE（手动/定时统一路径）");
        setVisibility(View.GONE);
        isHiding = false;
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
        android.util.Log.i(TAG, "EpisodeMenu.dispatchKeyEvent: keyCode=" + event.getKeyCode() + ", action=" + event.getAction() + ", isShowing=" + isShowing());
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
        android.util.Log.i(TAG, "EpisodeMenu.dispatchKeyEvent: super returned " + result);
        return result;
    }
    
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cleanup();
    }
}
