package com.bilibili.tv.player;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import com.bilibili.lib.media.resource.MediaResource;
import com.bilibili.lib.media.resolver.params.ResolveMediaResourceParams;
import com.bilibili.lib.media.resolver.params.ResolveResourceExtra;
import com.bilibili.tv.player.basic.context.PlayerParams;
import com.bilibili.tv.player.basic.context.ResolveResourceParams;
import com.bilibili.tv.player.basic.context.VideoViewParams;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import bl.ql;
import bl.ps;
import bl.pu;
import tv.danmaku.videoplayer.core.media.resource.UrlAutoRefreshScheduler;

public class PlayerActivityUrlRefreshHelper {
    private static final String TAG = "PlayerUrlRefresh";
    
    private static BufferingOverlayController bufferingOverlayController;
    private static PlayerActivityUrlRefreshHelper currentInstance;
    
    private UrlAutoRefreshScheduler scheduler;
    private PlayerParams playerParams;
    private Context context;
    private ExecutorService executorService;
    private Handler mainHandler;
    private bl.xh playerController;
    
    private int errorRefreshAttemptCount = 0;
    private static final int MAX_ERROR_REFRESH_ATTEMPTS = 3;
    private long lastErrorRefreshTime = 0;
    private static final long ERROR_REFRESH_COOLDOWN_MS = 5000;
    
    public static void setBufferingOverlayController(BufferingOverlayController controller) {
        bufferingOverlayController = controller;
        Log.i(TAG, "BufferingOverlayController set: " + (controller != null ? "not null" : "null"));
    }
    
    public static BufferingOverlayController getBufferingOverlayController() {
        return bufferingOverlayController;
    }
    
    public static boolean shouldSuppressBufferingOverlay() {
        return bufferingOverlayController != null && bufferingOverlayController.isSuppressed();
    }
    
    public static void triggerErrorRefresh(int errorCode, String errorMessage) {
        Log.i(TAG, "[STATIC_ERROR_REFRESH] Triggering error refresh: code=" + errorCode + ", message=" + errorMessage);
        if (currentInstance != null) {
            currentInstance.handlePlayerError(errorCode, errorMessage);
        } else {
            Log.e(TAG, "[STATIC_ERROR_REFRESH] No current instance available");
        }
    }
    
    public PlayerActivityUrlRefreshHelper() {
        scheduler = new UrlAutoRefreshScheduler();
        executorService = Executors.newSingleThreadExecutor();
        mainHandler = new Handler(Looper.getMainLooper());
        currentInstance = this;
        Log.i(TAG, "Helper created, scheduler initialized");
    }
    
    public void setContext(Context ctx) {
        this.context = ctx.getApplicationContext();
        Log.i(TAG, "Context set: " + (context != null ? "not null" : "null"));
    }
    
    public void setPlayerController(bl.xh controller) {
        this.playerController = controller;
        Log.i(TAG, "PlayerController set: " + (controller != null ? "not null" : "null"));
    }
    
    public void trySetupErrorListener() {
        Log.i(TAG, "[ERROR_LISTENER] Trying to setup error listener...");
        setupErrorListener();
    }
    
    private void setupErrorListener() {
        Log.i(TAG, "[ERROR_LISTENER] Setting up error listener...");
        
        if (playerController == null) {
            Log.w(TAG, "[ERROR_LISTENER] PlayerController is null, cannot setup error listener");
            return;
        }
        
        try {
            tv.danmaku.videoplayer.core.context.IPlayerContext playerContext = playerController.n();
            if (playerContext == null) {
                Log.w(TAG, "[ERROR_LISTENER] PlayerContext is null, cannot setup error listener");
                return;
            }
            
            tv.danmaku.videoplayer.core.videoview.IVideoView videoView = playerContext.getIVideoView();
            if (videoView == null) {
                Log.w(TAG, "[ERROR_LISTENER] VideoView is null, cannot setup error listener");
                return;
            }
            
            tv.danmaku.ijk.media.player.IMediaPlayer mediaPlayer = videoView.getMediaPlayer();
            if (mediaPlayer == null) {
                Log.w(TAG, "[ERROR_LISTENER] MediaPlayer is null, cannot setup error listener");
                return;
            }
            
            if (mediaPlayer instanceof tv.danmaku.videoplayer.core.media.exo.ExoPlayerImpl) {
                tv.danmaku.videoplayer.core.media.exo.ExoPlayerImpl exoPlayer = 
                    (tv.danmaku.videoplayer.core.media.exo.ExoPlayerImpl) mediaPlayer;
                
                exoPlayer.setErrorListener(new tv.danmaku.videoplayer.core.media.exo.ExoPlayerImpl.PlayerErrorListener() {
                    @Override
                    public void onPlayerError(int errorCode, String errorMessage, Integer httpCode) {
                        Log.i(TAG, "[ERROR_LISTENER_CALLBACK] Received player error: code=" + errorCode + 
                              ", http=" + (httpCode != null ? httpCode : "null") + ", message=" + errorMessage);
                        
                        int effectiveErrorCode = (httpCode != null) ? httpCode : errorCode;
                        handlePlayerError(effectiveErrorCode, errorMessage);
                    }
                });
                
                Log.i(TAG, "[ERROR_LISTENER] Error listener setup successfully for ExoPlayer");
            } else {
                Log.i(TAG, "[ERROR_LISTENER] MediaPlayer is not ExoPlayerImpl, type=" + mediaPlayer.getClass().getSimpleName());
            }
        } catch (Exception e) {
            Log.e(TAG, "[ERROR_LISTENER] Failed to setup error listener: " + e.getMessage());
            e.printStackTrace();
        }
    }
    
    private Object getMediaPlayerFromContext(tv.danmaku.videoplayer.core.context.IPlayerContext playerContext) {
        try {
            java.lang.reflect.Method getMediaPlayerMethod = playerContext.getClass().getMethod("getMediaPlayer");
            Object mediaPlayer = getMediaPlayerMethod.invoke(playerContext);
            Log.i(TAG, "[REFLECTION] getMediaPlayer() returned: " + (mediaPlayer != null ? mediaPlayer.getClass().getSimpleName() : "null"));
            return mediaPlayer;
        } catch (Exception e) {
            Log.e(TAG, "[REFLECTION] Failed to get MediaPlayer: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }
    
    public void setPlayerParams(PlayerParams params) {
        this.playerParams = params;
        Log.i(TAG, "PlayerParams set: " + (params != null ? "not null" : "null"));
    }
    
    public void scheduleAutoRefresh() {
        Log.i(TAG, "scheduleAutoRefresh() called");
        
        if (playerParams == null) {
            Log.w(TAG, "PlayerParams is null, cannot schedule auto refresh");
            return;
        }
        
        VideoViewParams videoParams = playerParams.mVideoParams;
        if (videoParams == null) {
            Log.w(TAG, "VideoViewParams is null, cannot schedule auto refresh");
            return;
        }
        
        MediaResource mediaResource = videoParams.mMediaResource;
        if (mediaResource == null) {
            Log.w(TAG, "MediaResource is null, cannot schedule auto refresh");
            return;
        }
        
        if (mediaResource.dash == null) {
            Log.w(TAG, "MediaResource.dash is null, cannot schedule auto refresh");
            return;
        }
        
        ResolveResourceParams resolveParams = videoParams.obtainResolveParams();
        
        Log.i(TAG, "Video info: bvid=" + (resolveParams != null ? resolveParams.mBvid : "null") + 
              ", cid=" + (resolveParams != null ? resolveParams.mCid : 0) + 
              ", avid=" + (resolveParams != null ? resolveParams.mAvid : 0));
        
        List<String> videoUrls = new ArrayList<>();
        List<String> audioUrls = new ArrayList<>();
        
        try {
            JSONObject dash = mediaResource.dash;
            
            JSONArray videoArray = dash.optJSONArray("video");
            if (videoArray != null) {
                Log.i(TAG, "Processing video array, size=" + videoArray.length());
                for (int i = 0; i < videoArray.length(); i++) {
                    JSONObject video = videoArray.optJSONObject(i);
                    if (video != null) {
                        String baseUrl = video.optString("base_url");
                        if (baseUrl != null && !baseUrl.isEmpty()) {
                            videoUrls.add(baseUrl);
                            Log.i(TAG, "Added video URL: " + baseUrl.substring(0, Math.min(50, baseUrl.length())) + "...");
                        }
                        JSONArray backupUrls = video.optJSONArray("backup_url");
                        if (backupUrls != null) {
                            for (int j = 0; j < backupUrls.length(); j++) {
                                String backup = backupUrls.optString(j);
                                if (backup != null && !backup.isEmpty()) {
                                    videoUrls.add(backup);
                                }
                            }
                        }
                    }
                }
            }
            
            JSONArray audioArray = dash.optJSONArray("audio");
            if (audioArray != null) {
                Log.i(TAG, "Processing audio array, size=" + audioArray.length());
                for (int i = 0; i < audioArray.length(); i++) {
                    JSONObject audio = audioArray.optJSONObject(i);
                    if (audio != null) {
                        String baseUrl = audio.optString("base_url");
                        if (baseUrl != null && !baseUrl.isEmpty()) {
                            audioUrls.add(baseUrl);
                            Log.i(TAG, "Added audio URL: " + baseUrl.substring(0, Math.min(50, baseUrl.length())) + "...");
                        }
                        JSONArray backupUrls = audio.optJSONArray("backup_url");
                        if (backupUrls != null) {
                            for (int j = 0; j < backupUrls.length(); j++) {
                                String backup = backupUrls.optString(j);
                                if (backup != null && !backup.isEmpty()) {
                                    audioUrls.add(backup);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to extract URLs: " + e.getMessage());
            return;
        }
        
        Log.i(TAG, "Extracted URLs: video=" + videoUrls.size() + ", audio=" + audioUrls.size());
        
        long durationMs = playerParams.getDuration();
        Log.i(TAG, "Video duration: " + durationMs + "ms");
        
        scheduler.scheduleAutoRefresh(videoUrls, audioUrls, durationMs);
        
        Log.i(TAG, "Auto refresh scheduled successfully");
    }
    
    public void tryScheduleAutoRefresh() {
        Log.i(TAG, "tryScheduleAutoRefresh() called");
        scheduleAutoRefresh();
    }
    
    public void cancelAutoRefresh() {
        Log.i(TAG, "cancelAutoRefresh() called");
        if (scheduler != null) {
            scheduler.cancelAutoRefresh();
            Log.i(TAG, "Auto refresh cancelled");
        }
    }
    
    public void setRefreshCallback(UrlAutoRefreshScheduler scheduler, Runnable callback) {
        Log.i(TAG, "setRefreshCallback() called");
        if (scheduler != null) {
            scheduler.setRefreshCallback(new tv.danmaku.videoplayer.core.media.resource.UrlAutoRefreshManager.RefreshCallback() {
                @Override
                public void onRefreshNeeded() {
                    Log.i(TAG, "onRefreshNeeded() callback triggered");
                    if (callback != null) {
                        callback.run();
                    }
                }
            });
            Log.i(TAG, "Refresh callback set");
        }
    }
    
    public void reloadStreamWithPosition() {
        Log.i(TAG, "[RELOAD_START] reloadStreamWithPosition() called");
        
        if (context == null) {
            Log.e(TAG, "[RELOAD_ERROR] Context is null, cannot reload stream");
            return;
        }
        
        if (playerParams == null) {
            Log.e(TAG, "[RELOAD_ERROR] PlayerParams is null, cannot reload stream");
            return;
        }
        
        if (playerController == null) {
            Log.e(TAG, "[RELOAD_ERROR] PlayerController is null, cannot reload stream");
            return;
        }
        
        if (bufferingOverlayController != null) {
            Log.i(TAG, "[RELOAD_SUPPRESS] Suppressing buffering overlay for URL refresh");
            bufferingOverlayController.suppressFor(10000L, 2000L);
        }
        
        executorService.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    reloadStreamInBackground();
                } catch (Exception e) {
                    Log.e(TAG, "[RELOAD_ERROR] Failed to reload stream: " + e.getMessage());
                    e.printStackTrace();
                    if (bufferingOverlayController != null) {
                        mainHandler.post(new Runnable() {
                            @Override
                            public void run() {
                                bufferingOverlayController.clearSuppression();
                            }
                        });
                    }
                }
            }
        });
    }
    
    private void reloadStreamInBackground() throws Exception {
        Log.i(TAG, "[RELOAD_BG_START] Starting background reload");
        
        int currentPosition = 0;
        try {
            tv.danmaku.videoplayer.core.context.IPlayerContext playerContext = playerController.n();
            if (playerContext != null) {
                currentPosition = playerContext.getCurrentPosition();
                Log.i(TAG, "[RELOAD_POSITION] Current position saved: " + currentPosition + "ms");
            } else {
                Log.w(TAG, "[RELOAD_POSITION] PlayerContext is null, cannot get position");
            }
        } catch (Exception e) {
            Log.e(TAG, "[RELOAD_POSITION_ERROR] Failed to get current position: " + e.getMessage());
        }
        
        VideoViewParams videoParams = playerParams.mVideoParams;
        if (videoParams == null) {
            Log.e(TAG, "[RELOAD_ERROR] VideoViewParams is null");
            return;
        }
        
        ResolveResourceParams resolveParams = videoParams.obtainResolveParams();
        if (resolveParams == null) {
            Log.e(TAG, "[RELOAD_ERROR] ResolveResourceParams is null");
            return;
        }
        
        long avid = resolveParams.mAvid;
        long cid = resolveParams.mCid;
        int expectedQuality = resolveParams.mExpectedQuality;
        String expectedTypeTag = resolveParams.mExpectedTypeTag;
        String from = resolveParams.mFrom;
        String type = resolveParams.mType;
        
        Log.i(TAG, "[RELOAD_PARAMS] avid=" + avid + ", cid=" + cid + ", qn=" + expectedQuality + ", from=" + from);
        
        ResolveMediaResourceParams resolveMediaParams = new ResolveMediaResourceParams(
            avid,
            cid,
            expectedQuality,
            expectedTypeTag,
            from,
            false,
            type
        );
        
        ResolveResourceExtra resolveExtra = resolveParams.obtainResourceExtra();
        
        Log.i(TAG, "[RELOAD_API] Creating media resolver...");
        
        bl.ze mediaResolver = new bl.ze();
        
        Log.i(TAG, "[RELOAD_API] Calling resolveMediaResource()...");
        long apiStart = System.currentTimeMillis();
        
        MediaResource newMediaResource = mediaResolver.a(context, playerParams, 3);
        
        long apiElapsed = System.currentTimeMillis() - apiStart;
        Log.i(TAG, "[RELOAD_API_DONE] API call completed, elapsed=" + apiElapsed + "ms");
        
        if (newMediaResource == null) {
            Log.e(TAG, "[RELOAD_ERROR] New MediaResource is null");
            return;
        }
        
        if (newMediaResource.dash == null) {
            Log.e(TAG, "[RELOAD_ERROR] New MediaResource.dash is null");
            return;
        }
        
        Log.i(TAG, "[RELOAD_SUCCESS] New MediaResource obtained successfully");
        
        final int finalPosition = currentPosition;
        final MediaResource finalMediaResource = newMediaResource;
        
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                updateMediaResourceAndSeek(finalMediaResource, finalPosition);
            }
        });
    }
    
    private void updateMediaResourceAndSeek(MediaResource newMediaResource, int position) {
        Log.i(TAG, "[UPDATE_START] Updating MediaResource and seeking to position=" + position + "ms");
        
        try {
            VideoViewParams videoParams = playerParams.mVideoParams;
            if (videoParams == null) {
                Log.e(TAG, "[UPDATE_ERROR] VideoViewParams is null");
                return;
            }
            
            videoParams.mMediaResource = newMediaResource;
            Log.i(TAG, "[UPDATE_RESOURCE] MediaResource updated");
            
            tv.danmaku.videoplayer.core.context.IPlayerContext playerContext = playerController.n();
            if (playerContext != null) {
                int adjustedPosition = position + 500;
                Log.i(TAG, "[UPDATE_SEEK_ADJUST] Adjusted position: " + position + "ms -> " + adjustedPosition + "ms (added 500ms to compensate for seek delay)");
                
                playerContext.seekTo(adjustedPosition);
                Log.i(TAG, "[UPDATE_SEEK] Seeked to adjusted position: " + adjustedPosition + "ms");
                
                playerContext.start();
                Log.i(TAG, "[UPDATE_START] Playback started");
                
                if (bufferingOverlayController != null) {
                    Log.i(TAG, "[UPDATE_CLEAR_SUPPRESS] Clearing buffering overlay suppression");
                    bufferingOverlayController.clearSuppression();
                }
                
                Log.i(TAG, "[UPDATE_COMPLETE] Stream reload completed successfully");
            } else {
                Log.e(TAG, "[UPDATE_ERROR] PlayerContext is null, cannot seek");
            }
        } catch (Exception e) {
            Log.e(TAG, "[UPDATE_ERROR] Failed to update and seek: " + e.getMessage());
            e.printStackTrace();
            if (bufferingOverlayController != null) {
                bufferingOverlayController.clearSuppression();
            }
        }
    }
    
    public UrlAutoRefreshScheduler getScheduler() {
        return scheduler;
    }
    
    public void handlePlayerError(int errorCode, String errorMessage) {
        Log.i(TAG, "[ERROR_HANDLE_START] errorCode=" + errorCode + ", message=" + errorMessage);
        
        if (isUrlExpiredError(errorCode, errorMessage)) {
            Log.i(TAG, "[ERROR_HANDLE] URL expired error detected");
            
            long currentTime = System.currentTimeMillis();
            long timeSinceLastError = currentTime - lastErrorRefreshTime;
            
            if (timeSinceLastError < ERROR_REFRESH_COOLDOWN_MS) {
                Log.w(TAG, "[ERROR_HANDLE] Cooldown active, time since last error=" + timeSinceLastError + "ms, skipping refresh");
                return;
            }
            
            if (errorRefreshAttemptCount >= MAX_ERROR_REFRESH_ATTEMPTS) {
                Log.e(TAG, "[ERROR_HANDLE] Max refresh attempts reached (" + errorRefreshAttemptCount + "), stopping");
                return;
            }
            
            errorRefreshAttemptCount++;
            lastErrorRefreshTime = currentTime;
            
            Log.i(TAG, "[ERROR_HANDLE] Triggering URL refresh, attempt " + errorRefreshAttemptCount + "/" + MAX_ERROR_REFRESH_ATTEMPTS);
            
            reloadStreamWithPosition();
        } else {
            Log.i(TAG, "[ERROR_HANDLE] Not a URL expired error, skipping refresh");
        }
    }
    
    private boolean isUrlExpiredError(int errorCode, String errorMessage) {
        Log.i(TAG, "[ERROR_CHECK] Checking if error indicates URL expiration");
        Log.i(TAG, "[ERROR_CHECK] errorCode=" + errorCode);
        
        if (errorCode == 403 || errorCode == 404 || errorCode == 410) {
            Log.i(TAG, "[ERROR_CHECK] HTTP error code indicates URL expiration: " + errorCode);
            return true;
        }
        
        if (errorMessage != null && !errorMessage.isEmpty()) {
            String lowerMsg = errorMessage.toLowerCase();
            Log.i(TAG, "[ERROR_CHECK] Checking error message: " + lowerMsg);
            
            if (lowerMsg.contains("403") || lowerMsg.contains("forbidden")) {
                Log.i(TAG, "[ERROR_CHECK] Message contains 403/forbidden");
                return true;
            }
            if (lowerMsg.contains("404") || lowerMsg.contains("not found")) {
                Log.i(TAG, "[ERROR_CHECK] Message contains 404/not found");
                return true;
            }
            if (lowerMsg.contains("410") || lowerMsg.contains("gone")) {
                Log.i(TAG, "[ERROR_CHECK] Message contains 410/gone");
                return true;
            }
            if (lowerMsg.contains("expired") || lowerMsg.contains("timeout")) {
                Log.i(TAG, "[ERROR_CHECK] Message contains expired/timeout");
                return true;
            }
        }
        
        Log.i(TAG, "[ERROR_CHECK] Error does not indicate URL expiration");
        return false;
    }
    
    public void resetErrorRefreshCount() {
        Log.i(TAG, "[ERROR_RESET] Resetting error refresh count");
        errorRefreshAttemptCount = 0;
        lastErrorRefreshTime = 0;
    }
    
    public void destroy() {
        Log.i(TAG, "[DESTROY] Destroying helper");
        cancelAutoRefresh();
        resetErrorRefreshCount();
        if (executorService != null) {
            executorService.shutdown();
        }
    }
}
