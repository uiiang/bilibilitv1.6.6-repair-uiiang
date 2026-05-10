package tv.danmaku.videoplayer.core.media.resource;

import android.net.Uri;
import android.util.Log;

import java.util.List;

public class UrlAutoRefreshManager {
    private static final String TAG = "UrlAutoRefreshManager";
    
    private static final long PLAYURL_AUTO_REFRESH_LEAD_MS = 3 * 60 * 1000L; // 3分钟
    private static final long PLAYURL_AUTO_REFRESH_FALLBACK_DELAY_MS = 55 * 60 * 1000L; // 55分钟
    private static final long PLAYURL_AUTO_REFRESH_FALLBACK_MIN_DURATION_MS = 60 * 60 * 1000L;
    private static final long PLAYURL_AUTO_REFRESH_MIN_RELOAD_INTERVAL_MS = 30 * 1000L;
    
    private long lastReloadTime = 0;
    private int refreshToken = 0;
    
    public interface RefreshCallback {
        void onRefreshNeeded();
    }
    
    private RefreshCallback callback;
    
    public void setRefreshCallback(RefreshCallback callback) {
        this.callback = callback;
    }
    
    public RefreshCallback getRefreshCallback() {
        return callback;
    }
    
    public Long pickEarliestDeadlineEpochSec(List<String> urls) {
        if (urls == null || urls.isEmpty()) {
            return null;
        }
        
        Long earliest = null;
        for (String url : urls) {
            if (url == null || url.isEmpty()) continue;
            
            try {
                Uri uri = Uri.parse(url);
                String deadlineStr = uri.getQueryParameter("deadline");
                String expiresStr = uri.getQueryParameter("expires");
                
                long deadline = 0;
                if (deadlineStr != null) {
                    deadline = Long.parseLong(deadlineStr);
                } else if (expiresStr != null) {
                    deadline = Long.parseLong(expiresStr);
                }
                
                if (deadline > 0) {
                    if (earliest == null || deadline < earliest) {
                        earliest = deadline;
                    }
                }
            } catch (Exception e) {
                // Ignore parse errors
            }
        }
        
        return earliest;
    }
    
    public long calculateRefreshDelay(Long deadlineEpochSec, Long videoDurationMs) {
        long nowWallMs = System.currentTimeMillis();
        
        if (deadlineEpochSec != null && deadlineEpochSec > 0L) {
            long deadlineWallMs = deadlineEpochSec * 1000L;
            long refreshWallMs = deadlineWallMs - PLAYURL_AUTO_REFRESH_LEAD_MS;
            long delayMs = refreshWallMs - nowWallMs;
            Log.i(TAG, "calculateRefreshDelay: deadline=" + deadlineEpochSec + 
                  ", refreshIn=" + delayMs + "ms, lead=" + PLAYURL_AUTO_REFRESH_LEAD_MS + "ms");
            return Math.max(delayMs, 0L);
        } else {
            if (videoDurationMs != null && videoDurationMs >= PLAYURL_AUTO_REFRESH_FALLBACK_MIN_DURATION_MS) {
                Log.i(TAG, "No deadline, using fallback delay: " + PLAYURL_AUTO_REFRESH_FALLBACK_DELAY_MS + "ms");
                return PLAYURL_AUTO_REFRESH_FALLBACK_DELAY_MS;
            } else {
                Log.i(TAG, "Video too short or no deadline, skip auto refresh");
                return -1;
            }
        }
    }
    
    public boolean shouldRefresh() {
        long now = System.currentTimeMillis();
        if (now - lastReloadTime < PLAYURL_AUTO_REFRESH_MIN_RELOAD_INTERVAL_MS) {
            Log.i(TAG, "Refresh throttled, last reload was " + (now - lastReloadTime) + "ms ago");
            return false;
        }
        return true;
    }
    
    public void recordRefresh() {
        lastReloadTime = System.currentTimeMillis();
        refreshToken++;
        Log.i(TAG, "Refresh recorded, token=" + refreshToken);
    }
    
    public int getRefreshToken() {
        return refreshToken;
    }
    
    public boolean isTokenValid(int token) {
        return token == refreshToken;
    }
    
    public static boolean isLikelyExpiredUrlError(int httpCode) {
        return httpCode == 403 || httpCode == 404 || httpCode == 410;
    }
    
    public static boolean isLikelyExpiredUrlError(String errorMessage) {
        if (errorMessage == null) return false;
        String msg = errorMessage.toLowerCase();
        return msg.contains("403") || msg.contains("404") || msg.contains("410") || msg.contains("forbidden");
    }
}
