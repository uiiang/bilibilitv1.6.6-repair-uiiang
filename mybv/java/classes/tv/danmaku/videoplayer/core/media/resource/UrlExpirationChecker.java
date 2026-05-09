package tv.danmaku.videoplayer.core.media.resource;

import android.net.Uri;
import android.util.Log;
import java.util.List;

public class UrlExpirationChecker {
    private static final String TAG = "UrlExpirationChecker";
    
    public static class ExpirationInfo {
        public final long deadlineEpochSec;
        public final long remainingSeconds;
        public final boolean isExpired;
        public final boolean isExpiringSoon;
        public final String timeParam;
        
        public ExpirationInfo(long deadlineEpochSec, long remainingSeconds, String timeParam) {
            this.deadlineEpochSec = deadlineEpochSec;
            this.remainingSeconds = remainingSeconds;
            this.isExpired = remainingSeconds < 0;
            this.isExpiringSoon = remainingSeconds >= 0 && remainingSeconds < 600;
            this.timeParam = timeParam;
        }
    }
    
    public static ExpirationInfo checkUrlExpiration(String url, String type) {
        if (url == null || url.isEmpty()) {
            Log.w(TAG, "[" + type + "] URL is empty");
            return null;
        }
        
        try {
            Uri uri = Uri.parse(url);
            
            String deadlineStr = uri.getQueryParameter("deadline");
            String expiresStr = uri.getQueryParameter("expires");
            
            long deadline = 0;
            String timeParam = "";
            
            if (deadlineStr != null) {
                deadline = Long.parseLong(deadlineStr);
                timeParam = "deadline";
            } else if (expiresStr != null) {
                deadline = Long.parseLong(expiresStr);
                timeParam = "expires";
            }
            
            if (deadline > 0) {
                long currentTime = System.currentTimeMillis() / 1000;
                long remaining = deadline - currentTime;
                
                ExpirationInfo info = new ExpirationInfo(deadline, remaining, timeParam);
                
                if (remaining < 0) {
                    Log.e(TAG, "[" + type + "] URL EXPIRED! Expired " + Math.abs(remaining) + " seconds ago (" + timeParam + "=" + deadline + ")");
                } else if (remaining < 300) {
                    Log.w(TAG, "[" + type + "] URL will expire in " + remaining + " seconds (" + timeParam + "=" + deadline + ")");
                } else if (remaining < 600) {
                    Log.w(TAG, "[" + type + "] URL will expire in " + (remaining/60) + " minutes (" + timeParam + "=" + deadline + ")");
                } else {
                    long minutes = remaining / 60;
                    Log.i(TAG, "[" + type + "] URL valid for " + minutes + " minutes (" + timeParam + "=" + deadline + ")");
                }
                
                return info;
            } else {
                Log.i(TAG, "[" + type + "] URL has no expiration parameter");
                return null;
            }
        } catch (Exception e) {
            Log.w(TAG, "[" + type + "] Failed to check expiration: " + e.getMessage());
            return null;
        }
    }
    
    public static Long pickEarliestDeadlineEpochSec(List<String> urls) {
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
    
    public static boolean isLikelyExpiredUrlError(int httpCode) {
        return httpCode == 403 || httpCode == 404 || httpCode == 410;
    }
    
    public static boolean isLikelyExpiredUrlError(String errorMessage) {
        if (errorMessage == null) return false;
        String msg = errorMessage.toLowerCase();
        return msg.contains("403") || msg.contains("404") || msg.contains("410") || msg.contains("forbidden");
    }
}
