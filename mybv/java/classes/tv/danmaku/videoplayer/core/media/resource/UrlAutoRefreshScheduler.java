package tv.danmaku.videoplayer.core.media.resource;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import java.util.ArrayList;
import java.util.List;

public class UrlAutoRefreshScheduler {
    private static final String TAG = "UrlAutoRefreshScheduler";
    
    private final Handler mainHandler;
    private final UrlAutoRefreshManager manager;
    private Runnable refreshRunnable;
    private int currentToken = 0;
    private boolean isScheduled = false;
    
    private String currentBvid;
    private long currentCid;
    private long currentAvid;
    
    public UrlAutoRefreshScheduler() {
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.manager = new UrlAutoRefreshManager();
    }
    
    public void setCurrentVideoInfo(String bvid, long cid, long avid) {
        this.currentBvid = bvid;
        this.currentCid = cid;
        this.currentAvid = avid;
    }
    
    public void scheduleAutoRefresh(List<String> videoUrls, List<String> audioUrls, long videoDurationMs) {
        cancelAutoRefresh();
        
        List<String> allUrls = new ArrayList<>();
        if (videoUrls != null) allUrls.addAll(videoUrls);
        if (audioUrls != null) allUrls.addAll(audioUrls);
        
        Long earliestDeadline = manager.pickEarliestDeadlineEpochSec(allUrls);
        long delayMs = manager.calculateRefreshDelay(earliestDeadline, videoDurationMs);
        
        if (delayMs < 0) {
            Log.i(TAG, "Skip auto refresh: delay=" + delayMs);
            return;
        }
        
        currentToken = manager.getRefreshToken();
        Log.i(TAG, "Schedule auto refresh: delay=" + delayMs + "ms, token=" + currentToken + 
              ", deadline=" + earliestDeadline + ", bvid=" + currentBvid + ", cid=" + currentCid);
        
        refreshRunnable = new Runnable() {
            @Override
            public void run() {
                if (!manager.isTokenValid(currentToken)) {
                    Log.i(TAG, "Token mismatch, skip refresh: expected=" + currentToken + 
                          ", actual=" + manager.getRefreshToken());
                    return;
                }
                
                if (!manager.shouldRefresh()) {
                    Log.i(TAG, "Refresh throttled");
                    return;
                }
                
                Log.i(TAG, "Auto refresh triggered: bvid=" + currentBvid + ", cid=" + currentCid);
                
                if (manager.getRefreshCallback() != null) {
                    manager.recordRefresh();
                    manager.getRefreshCallback().onRefreshNeeded();
                }
            }
        };
        
        mainHandler.postDelayed(refreshRunnable, delayMs);
        isScheduled = true;
        
        Log.i(TAG, "Auto refresh scheduled successfully");
    }
    
    public void cancelAutoRefresh() {
        if (refreshRunnable != null) {
            mainHandler.removeCallbacks(refreshRunnable);
            refreshRunnable = null;
            Log.i(TAG, "Auto refresh cancelled");
        }
        isScheduled = false;
    }
    
    public void setRefreshCallback(UrlAutoRefreshManager.RefreshCallback callback) {
        manager.setRefreshCallback(callback);
    }
    
    public boolean isScheduled() {
        return isScheduled;
    }
    
    public UrlAutoRefreshManager getManager() {
        return manager;
    }
}
