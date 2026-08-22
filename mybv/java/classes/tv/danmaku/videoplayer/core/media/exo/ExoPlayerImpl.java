package tv.danmaku.videoplayer.core.media.exo;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MergingMediaSource;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.DeviceInfo;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.Tracks;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkTimedText;
import tv.danmaku.ijk.media.player.MediaInfo;
import tv.danmaku.ijk.media.player.misc.IMediaDataSource;
import tv.danmaku.ijk.media.player.misc.ITrackInfo;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

public class ExoPlayerImpl implements IMediaPlayer {

    private static final String TAG = "ExoPlayerImpl";
    private static final String PREFS_NAME = "bili_preference";
    private static final String KEY_AUDIO_BALANCE_LEVEL = "audio_balance_level";

    private ExoPlayer exoPlayer;
    private Context appContext;
    private float currentSpeed = 1.0f;
    private boolean mLooping = false;
    private CustomRenderersFactory customRenderersFactory;

    private Surface pendingSurface;
    private SurfaceHolder pendingSurfaceHolder;

    private volatile long cachedCurrentPosition = 0;
    private volatile long cachedDuration = 0;
    private volatile boolean cachedIsPlaying = false;
    private volatile int cachedVideoWidth = 0;
    private volatile int cachedVideoHeight = 0;
    private volatile float cachedPixelWidthHeightRatio = 1.0f;
    private final AtomicLong lastPositionUpdateTime = new AtomicLong(0);
    private static final long POSITION_CACHE_VALIDITY_MS = 500;
    private Handler mainHandler;
    private Handler playerHandler;
    private Runnable positionUpdateRunnable;
    private Runnable bufferMonitorRunnable;
    // Seek debounce: prevent rapid seeks from interrupting CDN connection establishment
    private Runnable debouncedSeekRunnable;
    private long pendingSeekPosition = -1;
    private static final long SEEK_DEBOUNCE_DELAY_MS = 300;
    private int lastPlaybackState = Player.STATE_IDLE;
    private boolean hasPrepared = false;

    private OnPreparedListener onPreparedListener;
    private OnCompletionListener onCompletionListener;
    private OnErrorListener onErrorListener;
    private OnInfoListener onInfoListener;
    private OnSeekCompleteListener onSeekCompleteListener;
    private OnVideoSizeChangedListener onVideoSizeChangedListener;
    private OnBufferingUpdateListener onBufferingUpdateListener;
    private OnTimedTextListener onTimedTextListener;
    private PlayerErrorListener errorListener;
    
    private static final boolean TEST_ERROR_REFRESH = false;
    private static final long TEST_ERROR_INTERVAL_MS = 2 * 60 * 1000L;
    private Runnable testErrorRunnable;
    private int testErrorCount = 0;
    
    private static final int MAX_NETWORK_ERROR_RETRY = 3;
    private static final long NETWORK_ERROR_RETRY_DELAY_MS = 3000;
    private int networkErrorRetryCount = 0;
    private Runnable networkErrorRetryRunnable;
    
    private static final int MAX_LIVE_ERROR_RETRY = 5;
    private static final long LIVE_ERROR_RETRY_DELAY_MS = 2000;
    private static final long LIVE_BUFFERING_TIMEOUT_MS = 15000;
    private static final long VOD_BUFFERING_TIMEOUT_MS = 30000;
    private int liveErrorRetryCount = 0;
    private boolean isLiveStream = false;
    private long bufferingStartTime = 0;
    private long vodBufferingStartTime = 0;
    private int vodBufferingRetryCount = 0;
    private static final int MAX_VOD_BUFFERING_RETRY = 2;
    
    private static final int MAX_NAL_ERROR_RETRY = 3;
    private int nalErrorRetryCount = 0;
    private MediaSource savedMediaSource = null;
    private long savedSeekPosition = 0;
    
    public interface PlayerErrorListener {
        void onPlayerError(int errorCode, String errorMessage, Integer httpCode);
    }
    
    public void setErrorListener(PlayerErrorListener listener) {
        this.errorListener = listener;
        Log.i(TAG, "Error listener set: " + (listener != null ? "not null" : "null"));
    }
    
    public PlayerErrorListener getErrorListener() {
        return this.errorListener;
    }

    private boolean playWhenReadyOnPrepare = true;

    public ExoPlayerImpl(Context context) {
        this.appContext = context.getApplicationContext();
        this.mainHandler = new Handler(Looper.getMainLooper());
        
        this.positionUpdateRunnable = new Runnable() {
            @Override
            public void run() {
                if (exoPlayer != null) {
                    cachedCurrentPosition = exoPlayer.getCurrentPosition();
                    cachedDuration = exoPlayer.getDuration();
                    lastPositionUpdateTime.set(System.currentTimeMillis());
                    playerHandler.postDelayed(this, 200);
                }
            }
        };
        
        this.bufferMonitorRunnable = new Runnable() {
            @Override
            public void run() {
                if (exoPlayer != null) {
                    long position = exoPlayer.getCurrentPosition();
                    long duration = exoPlayer.getDuration();
                    int bufferedPercent = exoPlayer.getBufferedPercentage();
                    long bufferedPosition = exoPlayer.getBufferedPosition();
                    boolean isPlaying = exoPlayer.isPlaying();
                    int playbackState = exoPlayer.getPlaybackState();
                    
                    cachedIsPlaying = isPlaying;
                    
                    VideoSize videoSize = exoPlayer.getVideoSize();
                    cachedVideoWidth = videoSize.width;
                    cachedVideoHeight = videoSize.height;
                    cachedPixelWidthHeightRatio = videoSize.pixelWidthHeightRatio > 0 ? videoSize.pixelWidthHeightRatio : 1.0f;
                    
                    String stateStr = "";
                    switch (playbackState) {
                        case Player.STATE_IDLE: stateStr = "IDLE"; break;
                        case Player.STATE_BUFFERING: stateStr = "BUFFERING"; break;
                        case Player.STATE_READY: stateStr = "READY"; break;
                        case Player.STATE_ENDED: stateStr = "ENDED"; break;
                    }
                    
                    //Log.i(TAG, "[MONITOR] pos=" + position + "ms/" + duration + "ms, buffered=" 
                    //    + bufferedPercent + "% (" + bufferedPosition + "ms), playing=" + isPlaying 
                    //    + ", state=" + stateStr);
                    
                    // 移除硬 seek 追帧逻辑：直播位置落后时交给 ExoPlayer 自带的
                    // LivePlaybackSpeedControl 平滑追赶，避免 seek 打断播放造成卡顿/loading。
                    // 原逻辑：position < -2000ms 时 seekToDefaultPosition()。
                    
                    if (isLiveStream && playbackState == Player.STATE_BUFFERING && position == 0) {
                        if (bufferingStartTime == 0) {
                            bufferingStartTime = System.currentTimeMillis();
                            Log.w(TAG, "[MONITOR] Live stream buffering started at position 0");
                        } else {
                            long bufferingDuration = System.currentTimeMillis() - bufferingStartTime;
                            Log.w(TAG, "[MONITOR] Live stream buffering duration: " + bufferingDuration + "ms");
                            if (bufferingDuration > LIVE_BUFFERING_TIMEOUT_MS) {
                                Log.e(TAG, "[MONITOR] Live stream buffering timeout (" + bufferingDuration + "ms > " + LIVE_BUFFERING_TIMEOUT_MS + "ms), need URL refresh");
                                if (errorListener != null) {
                                    errorListener.onPlayerError(1002, "LIVE_BUFFERING_TIMEOUT", null);
                                }
                                bufferingStartTime = 0;
                            }
                        }
                    } else if (playbackState != Player.STATE_BUFFERING || position > 0) {
                        if (bufferingStartTime > 0) {
                            //Log.i(TAG, "[MONITOR] Live stream buffering ended or position changed, resetting timer");
                        }
                        bufferingStartTime = 0;
                    }
                    
                    if (!isLiveStream && playbackState == Player.STATE_BUFFERING) {
                        if (vodBufferingStartTime == 0) {
                            vodBufferingStartTime = System.currentTimeMillis();
                            Log.w(TAG, "[MONITOR] VOD buffering started at position=" + position + "ms");
                        } else {
                            long bufferingDuration = System.currentTimeMillis() - vodBufferingStartTime;
                            if (bufferingDuration > VOD_BUFFERING_TIMEOUT_MS) {
                                Log.e(TAG, "[MONITOR] VOD buffering timeout (" + bufferingDuration + "ms > " + VOD_BUFFERING_TIMEOUT_MS + "ms)");
                                Log.e(TAG, "[MONITOR] VOD buffering retry count: " + vodBufferingRetryCount + "/" + MAX_VOD_BUFFERING_RETRY);
                                
                                if (vodBufferingRetryCount < MAX_VOD_BUFFERING_RETRY) {
                                    vodBufferingRetryCount++;
                                    Log.w(TAG, "[MONITOR] Attempting VOD buffering recovery #" + vodBufferingRetryCount);
                                    
                                    if (errorListener != null) {
                                        errorListener.onPlayerError(1003, "VOD_BUFFERING_TIMEOUT_RETRY", null);
                                    }
                                    
                                    vodBufferingStartTime = 0;
                                } else {
                                    Log.e(TAG, "[MONITOR] Max VOD buffering retries reached, need URL refresh");
                                    if (errorListener != null) {
                                        errorListener.onPlayerError(1004, "VOD_BUFFERING_TIMEOUT_FINAL", null);
                                    }
                                    vodBufferingStartTime = 0;
                                    vodBufferingRetryCount = 0;
                                }
                            } else {
                                //Log.w(TAG, "[MONITOR] VOD buffering duration: " + bufferingDuration + "ms (timeout=" + VOD_BUFFERING_TIMEOUT_MS + "ms)");
                            }
                        }
                    } else if (!isLiveStream && playbackState != Player.STATE_BUFFERING) {
                        if (vodBufferingStartTime > 0) {
                            //Log.i(TAG, "[MONITOR] VOD buffering ended, state=" + stateStr + ", resetting timer");
                            if (playbackState == Player.STATE_READY) {
                                vodBufferingRetryCount = 0;
                                //Log.i(TAG, "[MONITOR] VOD buffering recovered successfully, resetting retry count");
                            }
                        }
                        vodBufferingStartTime = 0;
                    }
                    
                    playerHandler.postDelayed(this, 10000);
                }
            }
        };
        
        this.testErrorRunnable = new Runnable() {
            @Override
            public void run() {
                if (TEST_ERROR_REFRESH && errorListener != null && exoPlayer != null) {
                    testErrorCount++;
                    Log.i(TAG, "[TEST_ERROR] Simulating HTTP 403 error, count=" + testErrorCount + 
                          ", position=" + exoPlayer.getCurrentPosition() + "ms");
                    errorListener.onPlayerError(403, "Test HTTP 403 Forbidden", 403);
                }
                if (TEST_ERROR_REFRESH) {
                    mainHandler.postDelayed(this, TEST_ERROR_INTERVAL_MS);
                }
            }
        };
    }

    private void ensurePlayer() {
        if (exoPlayer == null) {
            Log.i(TAG, "ensurePlayer: creating new ExoPlayer instance");
            playerHandler = new Handler(Looper.myLooper());
            
            customRenderersFactory = new CustomRenderersFactory(appContext);
            
            com.google.android.exoplayer2.LoadControl loadControl;
            if (isLiveStream) {
                // 直播专用缓冲配置（参考 MyTVB）：min=8s, max=30s, 起播=1s, 重缓冲=2s
                // 小缓冲让播放贴近 live edge，减少落后幅度，避免追帧卡顿
                loadControl = new com.google.android.exoplayer2.DefaultLoadControl.Builder()
                    .setBufferDurationsMs(8000, 30000, 1000, 2000)
                    .build();
                Log.i(TAG, "ensurePlayer: Live LoadControl configured (8s/30s/1s/2s)");
            } else {
                // 点播保持原有翻倍缓冲配置
                loadControl = new com.google.android.exoplayer2.DefaultLoadControl.Builder()
                    .setBufferDurationsMs(
                        com.google.android.exoplayer2.DefaultLoadControl.DEFAULT_MIN_BUFFER_MS * 2,
                        com.google.android.exoplayer2.DefaultLoadControl.DEFAULT_MAX_BUFFER_MS * 2,
                        com.google.android.exoplayer2.DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS,
                        com.google.android.exoplayer2.DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS
                    )
                    .build();
                Log.i(TAG, "ensurePlayer: VOD LoadControl configured with doubled buffer sizes");
            }
            
            com.google.android.exoplayer2.LivePlaybackSpeedControl livePlaybackSpeedControl =
                new DefaultLivePlaybackSpeedControl.Builder()
                    .setFallbackMinPlaybackSpeed(0.95f)
                    .setFallbackMaxPlaybackSpeed(1.5f)
                    .setMinUpdateIntervalMs(500)
                    .setProportionalControlFactor(0.5f)
                    .setMaxLiveOffsetErrorMsForUnitSpeed(1000)
                    .setTargetLiveOffsetIncrementOnRebufferMs(500)
                    .build();
            Log.i(TAG, "ensurePlayer: LivePlaybackSpeedControl configured for live streaming (aggressive catch-up)");
            
            exoPlayer = new ExoPlayer.Builder(appContext)
                    .setRenderersFactory(customRenderersFactory)
                    .setLoadControl(loadControl)
                    .setLivePlaybackSpeedControl(livePlaybackSpeedControl)
                    .build();
            exoPlayer.setPlayWhenReady(playWhenReadyOnPrepare);

            applySavedAudioBalanceLevel();

            if (pendingSurface != null) {
                Log.i(TAG, "ensurePlayer: setting pendingSurface=" + pendingSurface);
                exoPlayer.setVideoSurface(pendingSurface);
            } else if (pendingSurfaceHolder != null) {
                Log.i(TAG, "ensurePlayer: setting pendingSurfaceHolder=" + pendingSurfaceHolder);
                exoPlayer.setVideoSurfaceHolder(pendingSurfaceHolder);
            }

            exoPlayer.addListener(new Player.Listener() {
                @Override
                public void onPlaybackStateChanged(int playbackState) {
                    String stateName = "";
                    String lastStateName = "";
                    switch (lastPlaybackState) {
                        case Player.STATE_IDLE: lastStateName = "IDLE"; break;
                        case Player.STATE_BUFFERING: lastStateName = "BUFFERING"; break;
                        case Player.STATE_READY: lastStateName = "READY"; break;
                        case Player.STATE_ENDED: lastStateName = "ENDED"; break;
                    }
                    
                    //Log.i(TAG, "[STATE_CHANGE] State transition: " + lastStateName + " -> ???");
                    //Log.i(TAG, "[STATE_CHANGE] Current position: " + exoPlayer.getCurrentPosition() + "ms, buffered: " + exoPlayer.getBufferedPercentage() + "%");
                    //Log.i(TAG, "[STATE_CHANGE] isPlaying: " + exoPlayer.isPlaying() + ", playWhenReady: " + exoPlayer.getPlayWhenReady());
                    
                    switch (playbackState) {
                        case Player.STATE_READY:
                            stateName = "READY";
                            cachedDuration = exoPlayer.getDuration();
                            //Log.i(TAG, "[STATE] READY - duration=" + cachedDuration + "ms, buffered=" + exoPlayer.getBufferedPercentage() + "%");
                            //Log.i(TAG, "[STATE] READY - position=" + exoPlayer.getCurrentPosition() + "ms, speed=" + exoPlayer.getPlaybackParameters().speed);
                            if (lastPlaybackState == Player.STATE_BUFFERING && onInfoListener != null) {
                                Log.i(TAG, "[STATE] Transition from BUFFERING to READY, sending BUFFERING_END");
                                onInfoListener.onInfo(ExoPlayerImpl.this,
                                    MEDIA_INFO_BUFFERING_END, 0);
                                onInfoListener.onInfo2(ExoPlayerImpl.this,
                                    MEDIA_INFO_BUFFERING_END, 0, 0);
                            }
                            if (networkErrorRetryCount > 0) {
                                //Log.i(TAG, "[STATE] Network error retry succeeded, resetting retry count from " + networkErrorRetryCount + " to 0");
                                networkErrorRetryCount = 0;
                            }
                            if (onPreparedListener != null && !hasPrepared) {
                                hasPrepared = true;
                                Log.i(TAG, "[STATE] First READY, calling onPrepared");
                                onPreparedListener.onPrepared(ExoPlayerImpl.this);
                            }
                            playerHandler.post(positionUpdateRunnable);
                            break;
                        case Player.STATE_ENDED:
                            stateName = "ENDED";
                            //Log.i(TAG, "[STATE] ENDED - video playback completed at position=" + exoPlayer.getCurrentPosition() + "ms");
                            playerHandler.removeCallbacks(positionUpdateRunnable);
                            if (onCompletionListener != null) {
                                //Log.i(TAG, "[STATE] Calling onCompletion");
                                onCompletionListener.onCompletion(ExoPlayerImpl.this);
                            }
                            break;
                        case Player.STATE_BUFFERING:
                            stateName = "BUFFERING";
                            Log.w(TAG, "[STATE] BUFFERING START - position=" + exoPlayer.getCurrentPosition() + "ms, buffered=" + exoPlayer.getBufferedPercentage() + "%");
                            Log.w(TAG, "[STATE] BUFFERING - lastState=" + lastStateName + ", isPlaying=" + exoPlayer.isPlaying());
                            Log.w(TAG, "[STATE] BUFFERING - networkErrorRetryCount=" + networkErrorRetryCount + ", nalErrorRetryCount=" + nalErrorRetryCount);
                            if (onInfoListener != null) {
                                Log.i(TAG, "[STATE] Sending BUFFERING_START to listener");
                                onInfoListener.onInfo(ExoPlayerImpl.this,
                                    MEDIA_INFO_BUFFERING_START, 0);
                                onInfoListener.onInfo2(ExoPlayerImpl.this,
                                    MEDIA_INFO_BUFFERING_START, 0, 0);
                            }
                            break;
                        case Player.STATE_IDLE:
                            stateName = "IDLE";
                            //Log.i(TAG, "[STATE] IDLE - player stopped or reset");
                            playerHandler.removeCallbacks(positionUpdateRunnable);
                            break;
                    }
                    //Log.i(TAG, "[STATE_CHANGE] State transition completed: " + lastStateName + " -> " + stateName);
                    lastPlaybackState = playbackState;
                }

                @Override
                public void onPlayerError(PlaybackException error) {
                    Log.e(TAG, "[ERROR] ========== PLAYER ERROR OCCURRED ==========");
                    Log.e(TAG, "[ERROR] Error code: " + error.errorCode);
                    Log.e(TAG, "[ERROR] Error message: " + error.getMessage());
                    Log.e(TAG, "[ERROR] Error type: " + error.getClass().getSimpleName());
                    if (error.getCause() != null) {
                        Log.e(TAG, "[ERROR] Cause class: " + error.getCause().getClass().getName());
                        Log.e(TAG, "[ERROR] Cause message: " + error.getCause().getMessage());
                        Throwable causeCause = error.getCause().getCause();
                        if (causeCause != null) {
                            Log.e(TAG, "[ERROR] Cause's cause: " + causeCause.getClass().getName() + " - " + causeCause.getMessage());
                        }
                    }
                    
                    if (exoPlayer != null) {
                        Log.e(TAG, "[ERROR] Position when error: " + exoPlayer.getCurrentPosition() + "ms / " + exoPlayer.getDuration() + "ms");
                        Log.e(TAG, "[ERROR] Buffered position: " + exoPlayer.getBufferedPosition() + "ms");
                        Log.e(TAG, "[ERROR] Buffered percentage: " + exoPlayer.getBufferedPercentage() + "%");
                        Log.e(TAG, "[ERROR] Playback state: " + exoPlayer.getPlaybackState());
                        Log.e(TAG, "[ERROR] isPlaying: " + exoPlayer.isPlaying());
                        Log.e(TAG, "[ERROR] playWhenReady: " + exoPlayer.getPlayWhenReady());
                    }
                    
                    Log.e(TAG, "[ERROR] Retry counters: network=" + networkErrorRetryCount + "/" + MAX_NETWORK_ERROR_RETRY + 
                          ", nal=" + nalErrorRetryCount + "/" + MAX_NAL_ERROR_RETRY + 
                          ", live=" + liveErrorRetryCount + "/" + MAX_LIVE_ERROR_RETRY);
                    Log.e(TAG, "[ERROR] isLiveStream=" + isLiveStream + ", savedMediaSource=" + (savedMediaSource != null ? "exists" : "null"));
                    
                    Integer httpCode = findHttpResponseCode(error);
                    if (httpCode != null) {
                        Log.e(TAG, "[ERROR] HTTP status code: " + httpCode);
                    } else {
                        Log.e(TAG, "[ERROR] No HTTP status code found in error");
                    }
                    
                    String errorMessage = error.getCause() != null ? error.getCause().getMessage() : null;
                    boolean isNalError = errorMessage != null && errorMessage.contains("Invalid NAL length");
                    boolean isParserError = errorMessage != null && 
                        (errorMessage.contains("Error parsing AVC config") || 
                         errorMessage.contains("Error parsing HEVC config") ||
                         errorMessage.contains("ArrayIndexOutOfBoundsException"));
                    
                    Log.i(TAG, "[ERROR] Checking error type: isNalError=" + isNalError + ", isParserError=" + isParserError);
                    
                    if ((isNalError || isParserError) && savedMediaSource != null) {
                        Log.w(TAG, "[ERROR] NAL/Parser error branch entered");
                        long errorPosition = exoPlayer != null ? exoPlayer.getCurrentPosition() : savedSeekPosition;
                        long duration = exoPlayer != null ? exoPlayer.getDuration() : 0;
                        long skipPosition = errorPosition + 10000;
                        
                        Log.w(TAG, "[ERROR] NAL/Parser error details: errorPosition=" + errorPosition + "ms, duration=" + duration + "ms, skipPosition=" + skipPosition + "ms, isLiveStream=" + isLiveStream);
                        
                        if (isLiveStream) {
                            Log.w(TAG, "[ERROR] Parser error in live stream, reloading instead of skipping");
                            if (liveErrorRetryCount < MAX_LIVE_ERROR_RETRY) {
                                liveErrorRetryCount++;
                                Log.w(TAG, "[ERROR] Live stream parser error reload attempt " + liveErrorRetryCount + "/" + MAX_LIVE_ERROR_RETRY);
                                
                                if (exoPlayer != null) {
                                    Log.i(TAG, "[ERROR] Stopping player for live stream reload");
                                    exoPlayer.stop();
                                }
                                
                                final int retryNum = liveErrorRetryCount;
                                playerHandler.postDelayed(new Runnable() {
                                    @Override
                                    public void run() {
                                        Log.i(TAG, "[ERROR] Executing delayed live stream reload for parser error, retry #" + retryNum);
                                        if (exoPlayer != null && savedMediaSource != null) {
                                            Log.i(TAG, "[ERROR] Reloading live stream after parser error");
                                            exoPlayer.setMediaSource(savedMediaSource, true);
                                            exoPlayer.prepare();
                                            Log.i(TAG, "[ERROR] Live stream reload: prepare() called");
                                        } else {
                                            Log.e(TAG, "[ERROR] Cannot reload: exoPlayer or savedMediaSource is null");
                                        }
                                    }
                                }, 500);
                                Log.i(TAG, "[ERROR] Scheduled live stream reload in 500ms");
                                return;
                            } else {
                                Log.e(TAG, "[ERROR] Max live parser error retries reached (" + liveErrorRetryCount + "/" + MAX_LIVE_ERROR_RETRY + ")");
                                Log.e(TAG, "[ERROR] Parser error indicates stream format incompatible with ExoPlayer, need to switch player");
                                if (errorListener != null) {
                                    Log.i(TAG, "[ERROR] Notifying error listener: EXO_PLAYER_FORMAT_INCOMPATIBLE");
                                    errorListener.onPlayerError(1005, "EXO_PLAYER_FORMAT_INCOMPATIBLE", null);
                                }
                                return;
                            }
                        } else if (duration > 0 && skipPosition < duration - 10000) {
                            Log.w(TAG, "[ERROR] NAL/Parser error in VOD stream, trying to skip 10 seconds from " + errorPosition + "ms to " + skipPosition + "ms");
                            
                            if (nalErrorRetryCount < MAX_NAL_ERROR_RETRY) {
                                nalErrorRetryCount++;
                                Log.w(TAG, "[ERROR] NAL error skip attempt " + nalErrorRetryCount + "/" + MAX_NAL_ERROR_RETRY);
                                
                                Log.w(TAG, "[ERROR] Releasing old player and creating new one");
                                if (exoPlayer != null) {
                                    exoPlayer.release();
                                    exoPlayer = null;
                                }
                                
                                savedSeekPosition = skipPosition;
                                Log.i(TAG, "[ERROR] Creating new player with seek position " + skipPosition + "ms");
                                ensurePlayer();
                                exoPlayer.setMediaSource(savedMediaSource, skipPosition);
                                exoPlayer.prepare();
                                Log.i(TAG, "[ERROR] NAL error recovery: prepare() called");
                                return;
                            } else {
                                Log.e(TAG, "[ERROR] Max NAL error retries reached (" + nalErrorRetryCount + "/" + MAX_NAL_ERROR_RETRY + "), giving up");
                            }
                        } else {
                            Log.e(TAG, "[ERROR] NAL error near end of video (skipPosition=" + skipPosition + " >= duration-10000=" + (duration - 10000) + "), cannot skip");
                        }
                    }
                    
                    boolean isBehindLiveWindow = false;
                    Throwable cause = error.getCause();
                    int causeDepth = 0;
                    Log.i(TAG, "[ERROR] Checking for BehindLiveWindowException in cause chain...");
                    while (cause != null) {
                        causeDepth++;
                        Log.i(TAG, "[ERROR] Cause depth " + causeDepth + ": " + cause.getClass().getName());
                        if (cause instanceof BehindLiveWindowException) {
                            isBehindLiveWindow = true;
                            Log.w(TAG, "[ERROR] Found BehindLiveWindowException at depth " + causeDepth);
                            break;
                        }
                        cause = cause.getCause();
                    }
                    Log.i(TAG, "[ERROR] BehindLiveWindowException check result: " + isBehindLiveWindow);
                    
                    if (isBehindLiveWindow && isLiveStream && savedMediaSource != null) {
                        Log.w(TAG, "[ERROR] BehindLiveWindow branch entered, isLiveStream=" + isLiveStream);
                        if (liveErrorRetryCount < MAX_LIVE_ERROR_RETRY) {
                            liveErrorRetryCount++;
                            Log.w(TAG, "[ERROR] BehindLiveWindowException detected, reloading live stream (" + liveErrorRetryCount + "/" + MAX_LIVE_ERROR_RETRY + ")");
                            
                            if (exoPlayer != null) {
                                Log.i(TAG, "[ERROR] Stopping player for live stream reload");
                                exoPlayer.stop();
                            }
                            
                            final int retryNum = liveErrorRetryCount;
                            playerHandler.postDelayed(new Runnable() {
                                @Override
                                public void run() {
                                    Log.i(TAG, "[ERROR] Executing delayed live stream reload, retry #" + retryNum);
                                    if (exoPlayer != null && savedMediaSource != null) {
                                        Log.i(TAG, "[ERROR] Reloading live stream after BehindLiveWindowException");
                                        exoPlayer.setMediaSource(savedMediaSource, true);
                                        exoPlayer.prepare();
                                        Log.i(TAG, "[ERROR] Live stream reload: prepare() called");
                                    } else {
                                        Log.e(TAG, "[ERROR] Cannot reload: exoPlayer=" + (exoPlayer != null ? "exists" : "null") + 
                                              ", savedMediaSource=" + (savedMediaSource != null ? "exists" : "null"));
                                    }
                                }
                            }, LIVE_ERROR_RETRY_DELAY_MS);
                            return;
                        } else {
                            Log.e(TAG, "[ERROR] Max live error retries reached (" + liveErrorRetryCount + "/" + MAX_LIVE_ERROR_RETRY + "), need URL refresh");
                            if (errorListener != null) {
                                Log.i(TAG, "[ERROR] Notifying error listener: LIVE_STREAM_NEED_REFRESH");
                                errorListener.onPlayerError(1001, "LIVE_STREAM_NEED_REFRESH", null);
                            }
                        }
                    }
                    
                    if (httpCode != null && (httpCode == 404 || httpCode == 403) && isLiveStream) {
                        Log.w(TAG, "[ERROR] Live stream HTTP " + httpCode + " error branch entered");
                        Log.w(TAG, "[ERROR] Notifying error listener for CDN switch");
                    }
                    
                    Log.i(TAG, "[ERROR] Calling isNetworkError() to check error type...");
                    boolean isNetworkError = isNetworkError(error);
                    Log.i(TAG, "[ERROR] isNetworkError result: " + isNetworkError);
                    
                    if (isNetworkError && networkErrorRetryCount < MAX_NETWORK_ERROR_RETRY) {
                        networkErrorRetryCount++;
                        Log.w(TAG, "[ERROR] Network error detected, retrying (" + networkErrorRetryCount + "/" + MAX_NETWORK_ERROR_RETRY + ") in " + NETWORK_ERROR_RETRY_DELAY_MS + "ms");
                        Log.w(TAG, "[ERROR] Network error retry scheduled on mainHandler");
                        
                        if (networkErrorRetryRunnable != null) {
                            Log.i(TAG, "[ERROR] Removing previous retry runnable");
                            mainHandler.removeCallbacks(networkErrorRetryRunnable);
                        }
                        
                        final int retryNum = networkErrorRetryCount;
                        networkErrorRetryRunnable = new Runnable() {
                            @Override
                            public void run() {
                                Log.i(TAG, "[ERROR] ========== NETWORK ERROR RETRY #" + retryNum + " ========== ");
                                if (exoPlayer != null) {
                                    Log.i(TAG, "[ERROR] Retrying playback after network error, calling prepare()");
                                    Log.i(TAG, "[ERROR] Current state before retry: position=" + exoPlayer.getCurrentPosition() + "ms, state=" + exoPlayer.getPlaybackState());
                                    exoPlayer.prepare();
                                    Log.i(TAG, "[ERROR] prepare() called, waiting for state change...");
                                } else {
                                    Log.e(TAG, "[ERROR] Cannot retry: exoPlayer is null!");
                                }
                            }
                        };
                        mainHandler.postDelayed(networkErrorRetryRunnable, NETWORK_ERROR_RETRY_DELAY_MS);
                        Log.i(TAG, "[ERROR] Network error retry runnable posted, returning from error handler");
                        return;
                    }
                    
                    Log.e(TAG, "[ERROR] No recovery branch matched, forwarding to error listeners");
                    Log.e(TAG, "[ERROR] isNetworkError=" + isNetworkError + ", networkErrorRetryCount=" + networkErrorRetryCount);
                    
                    if (onErrorListener != null) {
                        Log.i(TAG, "[ERROR] Calling onErrorListener.onError()");
                        onErrorListener.onError(ExoPlayerImpl.this,
                            error.errorCode, 0);
                    }
                    
                    if (errorListener != null) {
                        Log.i(TAG, "[ERROR] Calling errorListener.onPlayerError()");
                        errorListener.onPlayerError(error.errorCode, error.getMessage(), httpCode);
                    }
                    
                    Log.e(TAG, "[ERROR] ========== ERROR HANDLING COMPLETED ==========");
                }

                @Override
                public void onVideoSizeChanged(VideoSize videoSize) {
                    cachedVideoWidth = videoSize.width;
                    cachedVideoHeight = videoSize.height;
                    cachedPixelWidthHeightRatio = videoSize.pixelWidthHeightRatio > 0 ? videoSize.pixelWidthHeightRatio : 1.0f;
                    Log.i(TAG, "[VIDEO_SIZE] width=" + videoSize.width + ", height=" + videoSize.height + ", pixelRatio=" + cachedPixelWidthHeightRatio);
                    if (onVideoSizeChangedListener != null) {
                        onVideoSizeChangedListener.onVideoSizeChanged(
                            ExoPlayerImpl.this,
                            videoSize.width,
                            videoSize.height,
                            videoSize.pixelWidthHeightRatio > 0 ?
                                (int)(videoSize.pixelWidthHeightRatio * 1000) : 1,
                            1000
                        );
                    }
                }

                @Override
                public void onIsPlayingChanged(boolean isPlaying) {
                    // 实时更新播放状态缓存（ExoPlayer 应用线程内回调，volatile 线程安全）
                    cachedIsPlaying = isPlaying;
                    //Log.i(TAG, "[PLAY] isPlaying=" + isPlaying + ", position=" + exoPlayer.getCurrentPosition() + "ms");
                    if (isPlaying && onInfoListener != null) {
                        onInfoListener.onInfo(ExoPlayerImpl.this,
                            MEDIA_INFO_VIDEO_RENDERING_START, 0);
                        onInfoListener.onInfo2(ExoPlayerImpl.this,
                            MEDIA_INFO_VIDEO_RENDERING_START, 0, 0);
                    }
                }

                @Override
                public void onPositionDiscontinuity(Player.PositionInfo oldPosition, Player.PositionInfo newPosition, int reason) {
                    String reasonStr = "";
                    switch (reason) {
                        case Player.DISCONTINUITY_REASON_SEEK: reasonStr = "SEEK"; break;
                        case Player.DISCONTINUITY_REASON_SEEK_ADJUSTMENT: reasonStr = "SEEK_ADJUSTMENT"; break;
                        case Player.DISCONTINUITY_REASON_AUTO_TRANSITION: reasonStr = "AUTO_TRANSITION"; break;
                        case Player.DISCONTINUITY_REASON_REMOVE: reasonStr = "REMOVE"; break;
                        case Player.DISCONTINUITY_REASON_SKIP: reasonStr = "SKIP"; break;
                        case Player.DISCONTINUITY_REASON_INTERNAL: reasonStr = "INTERNAL"; break;
                        default: reasonStr = "UNKNOWN(" + reason + ")"; break;
                    }
                    //Log.w(TAG, "[DISCONTINUITY] reason=" + reasonStr + ", oldPos=" + oldPosition.positionMs + "ms, newPos=" + newPosition.positionMs + "ms");
                    
                    if (reason == Player.DISCONTINUITY_REASON_SEEK) {
                        if (onSeekCompleteListener != null) {
                            onSeekCompleteListener.onSeekComplete(ExoPlayerImpl.this);
                        }
                    }
                }

                @Override
                public void onTimelineChanged(Timeline timeline, int reason) {
                    Log.i(TAG, "[TIMELINE] reason=" + reason + ", windowCount=" + timeline.getWindowCount());
                }

                @Override
                public void onAudioAttributesChanged(AudioAttributes audioAttributes) {
                    Log.i(TAG, "[AUDIO] attributes changed");
                }

                @Override
                public void onAudioSessionIdChanged(int audioSessionId) {
                    Log.i(TAG, "[AUDIO] sessionId=" + audioSessionId);
                }

                @Override
                public void onAvailableCommandsChanged(Player.Commands availableCommands) {
                    Log.d(TAG, "[COMMANDS] available commands changed");
                }

                @Override
                public void onCues(CueGroup cueGroup) {
                }

                @Override
                public void onCues(List<Cue> cues) {
                }

                @Override
                public void onDeviceInfoChanged(DeviceInfo deviceInfo) {
                    Log.d(TAG, "[DEVICE] info changed");
                }

                @Override
                public void onDeviceVolumeChanged(int volume, boolean muted) {
                    Log.i(TAG, "[VOLUME] volume=" + volume + ", muted=" + muted);
                }

                @Override
                public void onEvents(Player player, Player.Events events) {
                }

                @Override
                public void onIsLoadingChanged(boolean isLoading) {
                    Log.i(TAG, "[LOADING] isLoading=" + isLoading + ", position=" + exoPlayer.getCurrentPosition() + "ms");
                }

                @Override
                public void onLoadingChanged(boolean isLoading) {
                    Log.i(TAG, "[LOADING] onLoadingChanged=" + isLoading);
                }

                @Override
                public void onMaxSeekToPreviousPositionChanged(long maxSeekToPreviousPositionMs) {
                }

                @Override
                public void onMediaItemTransition(MediaItem mediaItem, int reason) {
                    Log.i(TAG, "[MEDIA_ITEM] transition, reason=" + reason);
                    if (mediaItem != null && mediaItem.localConfiguration != null) {
                        Log.i(TAG, "[MEDIA_ITEM] URI: " + mediaItem.localConfiguration.uri);
                    }
                }

                @Override
                public void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
                    Log.d(TAG, "[METADATA] changed");
                }

                @Override
                public void onMetadata(Metadata metadata) {
                    Log.d(TAG, "[METADATA] received");
                }

                @Override
                public void onPlayWhenReadyChanged(boolean playWhenReady, int reason) {
                    String reasonStr = "";
                    switch (reason) {
                        case Player.PLAY_WHEN_READY_CHANGE_REASON_USER_REQUEST: reasonStr = "USER_REQUEST"; break;
                        case Player.PLAY_WHEN_READY_CHANGE_REASON_AUDIO_BECOMING_NOISY: reasonStr = "AUDIO_NOISY"; break;
                        case Player.PLAY_WHEN_READY_CHANGE_REASON_AUDIO_FOCUS_LOSS: reasonStr = "AUDIO_FOCUS_LOSS"; break;
                        case Player.PLAY_WHEN_READY_CHANGE_REASON_REMOTE: reasonStr = "REMOTE"; break;
                        case Player.PLAY_WHEN_READY_CHANGE_REASON_END_OF_MEDIA_ITEM: reasonStr = "END_OF_MEDIA"; break;
                        default: reasonStr = "UNKNOWN(" + reason + ")"; break;
                    }
                    Log.w(TAG, "[PLAY_WHEN_READY] playWhenReady=" + playWhenReady + ", reason=" + reasonStr);
                }

                @Override
                public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                    Log.i(TAG, "[PLAYBACK] speed=" + playbackParameters.speed + ", pitch=" + playbackParameters.pitch);
                }

                @Override
                public void onPlaybackSuppressionReasonChanged(int playbackSuppressionReason) {
                    Log.w(TAG, "[SUPPRESSION] reason=" + playbackSuppressionReason);
                }

                @Override
                public void onPlayerErrorChanged(PlaybackException error) {
                    if (error != null) {
                        //Log.e(TAG, "[ERROR_CHANGED] Error changed to: " + error.getMessage());
                    }
                }

                @Override
                public void onPlayerStateChanged(boolean playWhenReady, int playbackState) {
                    String stateStr = "";
                    switch (playbackState) {
                        case Player.STATE_IDLE: stateStr = "IDLE"; break;
                        case Player.STATE_BUFFERING: stateStr = "BUFFERING"; break;
                        case Player.STATE_READY: stateStr = "READY"; break;
                        case Player.STATE_ENDED: stateStr = "ENDED"; break;
                    }
                    Log.i(TAG, "[PLAYER_STATE] playWhenReady=" + playWhenReady + ", state=" + stateStr);
                }

                @Override
                public void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
                    Log.d(TAG, "[PLAYLIST] metadata changed");
                }

                @Override
                public void onPositionDiscontinuity(int reason) {
                    //Log.w(TAG, "[DISCONTINUITY_OLD] reason=" + reason);
                }

                @Override
                public void onRenderedFirstFrame() {
                    //Log.i(TAG, "[RENDER] First frame rendered");
                }

                @Override
                public void onRepeatModeChanged(int repeatMode) {
                    Log.i(TAG, "[REPEAT] mode=" + repeatMode);
                }

                @Override
                public void onSeekBackIncrementChanged(long seekBackIncrementMs) {
                }

                @Override
                public void onSeekForwardIncrementChanged(long seekForwardIncrementMs) {
                }

                @Override
                public void onShuffleModeEnabledChanged(boolean shuffleModeEnabled) {
                    Log.i(TAG, "[SHUFFLE] enabled=" + shuffleModeEnabled);
                }

                @Override
                public void onSkipSilenceEnabledChanged(boolean skipSilenceEnabled) {
                    Log.i(TAG, "[SILENCE] skip=" + skipSilenceEnabled);
                }

                @Override
                public void onSurfaceSizeChanged(int width, int height) {
                    Log.d(TAG, "[SURFACE] size=" + width + "x" + height);
                }

                @Override
                public void onTrackSelectionParametersChanged(TrackSelectionParameters parameters) {
                    Log.d(TAG, "[TRACK_SELECTION] parameters changed");
                }

                @Override
                public void onTracksChanged(Tracks tracks) {
                    Log.i(TAG, "[TRACKS] changed");
                }

                @Override
                public void onVolumeChanged(float volume) {
                    Log.i(TAG, "[VOLUME] volume=" + volume);
                }
            });
        }
    }

    @Override
    public void setDataSource(String path) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        Log.i(TAG, "setDataSource: " + path);
        ensurePlayer();
        MediaItem mediaItem = MediaItem.fromUri(path);
        exoPlayer.setMediaItem(mediaItem);
    }

    @Override
    public void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        setDataSource(uri.toString());
    }

    @Override
    public void setDataSource(Context context, Uri uri, Map<String, String> headers) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        Log.i(TAG, "setDataSource with headers: " + uri);
        ensurePlayer();

        DefaultHttpDataSource.Factory httpFactory = new DefaultHttpDataSource.Factory()
            .setUserAgent("Bilibili Freedoooooom/MarkII")
            .setConnectTimeoutMs(DefaultHttpDataSource.DEFAULT_CONNECT_TIMEOUT_MILLIS)
            .setReadTimeoutMs(DefaultHttpDataSource.DEFAULT_READ_TIMEOUT_MILLIS);

        if (headers != null && !headers.isEmpty()) {
            for (Map.Entry<String, String> entry : headers.entrySet()) {
                httpFactory.setDefaultRequestProperties(
                    java.util.Collections.singletonMap(entry.getKey(), entry.getValue()));
            }
        }

        DataSource.Factory dataSourceFactory = httpFactory;
        MediaSource mediaSource = new ProgressiveMediaSource.Factory(dataSourceFactory)
            .createMediaSource(MediaItem.fromUri(uri));

        exoPlayer.setMediaSource(mediaSource);
    }

    @Override
    public void setDataSource(FileDescriptor fileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException {
        Log.i(TAG, "setDataSource(FileDescriptor) - unsupported via ExoPlayer, ignored");
    }

    @Override
    public void setDataSource(IMediaDataSource iMediaDataSource) {
        Log.i(TAG, "setDataSource(IMediaDataSource) - unsupported via ExoPlayer, ignored");
    }

    public void setDataSource(MediaSource mediaSource) {
        Log.i(TAG, "setDataSource(MediaSource)");
        this.savedMediaSource = mediaSource;
        this.isLiveStream = mediaSource instanceof HlsMediaSource;
        Log.i(TAG, "setDataSource: isLiveStream=" + isLiveStream);
        ensurePlayer();
        exoPlayer.setMediaSource(mediaSource);
    }

    public void setDataSourceWithSeek(MediaSource mediaSource, long seekMs) {
        Log.i(TAG, "setDataSourceWithSeek(MediaSource, " + seekMs + ")");
        this.savedMediaSource = mediaSource;
        this.savedSeekPosition = seekMs;
        this.isLiveStream = mediaSource instanceof HlsMediaSource;
        Log.i(TAG, "setDataSourceWithSeek: isLiveStream=" + isLiveStream);
        ensurePlayer();
        exoPlayer.setMediaSource(mediaSource, seekMs);
    }
    
    public void setIsLiveStream(boolean isLive) {
        this.isLiveStream = isLive;
        Log.i(TAG, "setIsLiveStream: " + isLive);
    }

    public void setPlayWhenReadyOnPrepare(boolean playWhenReady) {
        this.playWhenReadyOnPrepare = playWhenReady;
    }

    @Override
    public void prepareAsync() throws IllegalStateException {
        Log.i(TAG, "prepareAsync");
        ensurePlayer();
        exoPlayer.prepare();
        playerHandler.postDelayed(bufferMonitorRunnable, 10000);
    }

    @Override
    public void start() throws IllegalStateException {
        Log.i(TAG, "start");
        if (playerHandler != null && Looper.myLooper() != playerHandler.getLooper()) {
            playerHandler.post(new Runnable() {
                @Override
                public void run() {
                    start();
                }
            });
            return;
        }
        if (exoPlayer != null) {
            exoPlayer.play();
        }
        
        if (TEST_ERROR_REFRESH) {
            Log.i(TAG, "[TEST_ERROR] Starting test error simulation, interval=" + TEST_ERROR_INTERVAL_MS + "ms");
            testErrorCount = 0;
            mainHandler.removeCallbacks(testErrorRunnable);
            mainHandler.postDelayed(testErrorRunnable, TEST_ERROR_INTERVAL_MS);
        }
    }

    @Override
    public void pause() throws IllegalStateException {
        Log.i(TAG, "pause");
        if (playerHandler != null && Looper.myLooper() != playerHandler.getLooper()) {
            playerHandler.post(new Runnable() {
                @Override
                public void run() {
                    pause();
                }
            });
            return;
        }
        if (exoPlayer != null) {
            exoPlayer.pause();
        }
    }

    @Override
    public void stop() throws IllegalStateException {
        Log.i(TAG, "stop");
        if (playerHandler != null && Looper.myLooper() != playerHandler.getLooper()) {
            playerHandler.post(new Runnable() {
                @Override
                public void run() {
                    stop();
                }
            });
            return;
        }
        if (exoPlayer != null) {
            exoPlayer.stop();
        }
        playerHandler.removeCallbacks(positionUpdateRunnable);
        playerHandler.removeCallbacks(bufferMonitorRunnable);
        mainHandler.removeCallbacks(testErrorRunnable);
    }

    @Override
    public void release() {
        Log.i(TAG, "release");
        playerHandler.removeCallbacks(positionUpdateRunnable);
        playerHandler.removeCallbacks(bufferMonitorRunnable);
        playerHandler.removeCallbacks(debouncedSeekRunnable);
        mainHandler.removeCallbacks(testErrorRunnable);
        mainHandler.removeCallbacks(networkErrorRetryRunnable);
        networkErrorRetryCount = 0;
        debouncedSeekRunnable = null;
        pendingSeekPosition = -1;
        if (exoPlayer != null) {
            exoPlayer.release();
            exoPlayer = null;
        }
    }

    @Override
    public void reset() {
        Log.i(TAG, "reset");
        hasPrepared = false;
        nalErrorRetryCount = 0;
        networkErrorRetryCount = 0;
        liveErrorRetryCount = 0;
        vodBufferingRetryCount = 0;
        vodBufferingStartTime = 0;
        bufferingStartTime = 0;
        isLiveStream = false;
        if (exoPlayer != null) {
            exoPlayer.stop();
            exoPlayer.clearMediaItems();
        }
        playerHandler.removeCallbacks(positionUpdateRunnable);
        playerHandler.removeCallbacks(bufferMonitorRunnable);
        playerHandler.removeCallbacks(debouncedSeekRunnable);
        debouncedSeekRunnable = null;
        pendingSeekPosition = -1;
    }

    @Override
    public void seekTo(long msec) throws IllegalStateException {
        //Log.i(TAG, "[SEEK] seekTo called: target=" + msec + "ms");
        //Log.i(TAG, "[SEEK] Current state: position=" + cachedCurrentPosition + "ms, duration=" + cachedDuration + "ms, isPlaying=" + cachedIsPlaying);
        if (exoPlayer != null) {
            //Log.i(TAG, "[SEEK] ExoPlayer state: playbackState=" + exoPlayer.getPlaybackState() + ", buffered=" + exoPlayer.getBufferedPercentage() + "%");
        }
        
        if (playerHandler != null && Looper.myLooper() != playerHandler.getLooper()) {
            //Log.i(TAG, "[SEEK] Called from different thread, posting to playerHandler");
            final long pos = msec;
            playerHandler.post(new Runnable() {
                @Override
                public void run() {
                    //Log.i(TAG, "[SEEK] Executing seekTo on playerHandler thread, target=" + pos + "ms");
                    seekTo(pos);
                }
            });
            return;
        }
        
        if (exoPlayer == null) {
            Log.e(TAG, "[SEEK] ERROR: exoPlayer is null, cannot seek!");
            return;
        }
        
        // Debounce rapid seeks: if player is BUFFERING from a previous seek,
        // delay the new seek to let CDN connections establish first
        if (exoPlayer.getPlaybackState() == Player.STATE_BUFFERING) {
            Log.i(TAG, "[SEEK] Player is BUFFERING, debouncing seek. Target=" + msec + "ms, delay=" + SEEK_DEBOUNCE_DELAY_MS + "ms");
            pendingSeekPosition = msec;
            
            // Remove previous debounce callback
            if (debouncedSeekRunnable != null) {
                playerHandler.removeCallbacks(debouncedSeekRunnable);
            }
            
            final long finalMsec = msec;
            debouncedSeekRunnable = new Runnable() {
                @Override
                public void run() {
                    //Log.i(TAG, "[SEEK] Debounce timer fired, executing delayed seek to " + finalMsec + "ms");
                    performSeek(finalMsec);
                }
            };
            playerHandler.postDelayed(debouncedSeekRunnable, SEEK_DEBOUNCE_DELAY_MS);
            // Update cached position immediately for UI responsiveness
            cachedCurrentPosition = msec;
            return;
        }
        
        performSeek(msec);
    }
    
    private void performSeek(long msec) {
        if (exoPlayer == null) return;
        //Log.i(TAG, "[SEEK] Calling exoPlayer.seekTo(" + msec + ")");
        exoPlayer.seekTo(msec);
        cachedCurrentPosition = msec;
        //Log.i(TAG, "[SEEK] Seek completed, cachedCurrentPosition updated to " + msec + "ms");
    }

    public void seekToLivePosition() {
        Log.i(TAG, "seekToLivePosition: seeking to live edge for live stream");
        if (playerHandler != null && Looper.myLooper() != playerHandler.getLooper()) {
            playerHandler.post(new Runnable() {
                @Override
                public void run() {
                    seekToLivePosition();
                }
            });
            return;
        }
        if (exoPlayer != null && isLiveStream) {
            exoPlayer.seekToDefaultPosition();
            Log.i(TAG, "seekToLivePosition: called seekToDefaultPosition()");
        }
    }

    @Override
    public long getCurrentPosition() {
        return cachedCurrentPosition;
    }

    @Override
    public long getDuration() {
        return cachedDuration >= 0 ? cachedDuration : 0;
    }

    @Override
    public boolean isPlaying() {
        // cachedIsPlaying 由 onIsPlayingChanged 回调实时更新（ExoPlayer 应用线程内回调，volatile 线程安全）。
        // 注意：不能直接调用 exoPlayer.isPlaying()——ExoPlayer 绑定在 VideoManager 线程，
        // 主线程（如 onPause）调用会抛 IllegalStateException: Player is accessed on the wrong thread
        return cachedIsPlaying;
    }

    @Override
    public void setSpeed(float speed) {
        Log.i(TAG, "setSpeed: " + speed);
        this.currentSpeed = speed;
        if (playerHandler != null && Looper.myLooper() != playerHandler.getLooper()) {
            final float spd = speed;
            playerHandler.post(new Runnable() {
                @Override
                public void run() {
                    setSpeed(spd);
                }
            });
            return;
        }
        if (exoPlayer != null) {
            exoPlayer.setPlaybackSpeed(speed);
        }
    }

    @Override
    public void setVolume(float leftVolume, float rightVolume) {
        if (exoPlayer != null) {
            exoPlayer.setVolume((leftVolume + rightVolume) / 2);
        }
    }

    @Override
    public void setDisplay(SurfaceHolder sh) {
        Log.i(TAG, "setDisplay: holder=" + sh);
        pendingSurfaceHolder = sh;
        pendingSurface = null;
        if (exoPlayer != null) {
            exoPlayer.setVideoSurfaceHolder(sh);
        }
    }

    @Override
    public void setSurface(Surface surface) {
        Log.i(TAG, "setSurface: surface=" + surface + ", exoPlayer=" + exoPlayer);
        pendingSurface = surface;
        pendingSurfaceHolder = null;
        if (exoPlayer != null) {
            Log.i(TAG, "setSurface: calling exoPlayer.setVideoSurface()");
            exoPlayer.setVideoSurface(surface);
        } else {
            Log.i(TAG, "setSurface: exoPlayer is null, caching surface for later");
        }
    }

    @Override
    public int getVideoWidth() {
        return cachedVideoWidth;
    }

    @Override
    public int getVideoHeight() {
        return cachedVideoHeight;
    }

    @Override
    public int getAudioSessionId() {
        return 0;
    }

    @Override
    public String getDataSource() {
        return null;
    }

    @Override
    public MediaInfo getMediaInfo() {
        return null;
    }

    @Override
    public ITrackInfo[] getTrackInfo() {
        return new ITrackInfo[0];
    }

    @Override
    public int getVideoSarDen() {
        return 1000;
    }

    @Override
    public int getVideoSarNum() {
        return (int)(cachedPixelWidthHeightRatio * 1000);
    }

    @Override
    public boolean isLooping() {
        return mLooping;
    }

    @Override
    @Deprecated
    public boolean isPlayable() {
        return true;
    }

    @Override
    public void setAudioStreamType(int streamtype) {
    }

    @Override
    @Deprecated
    public void setKeepInBackground(boolean keepInBackground) {
    }

    @Override
    @Deprecated
    public void setLogEnabled(boolean enable) {
    }

    @Override
    public void setLooping(boolean looping) {
        this.mLooping = looping;
        if (playerHandler != null && Looper.myLooper() != playerHandler.getLooper()) {
            final boolean loop = looping;
            playerHandler.post(new Runnable() {
                @Override
                public void run() {
                    setLooping(loop);
                }
            });
            return;
        }
        if (exoPlayer != null) {
            exoPlayer.setRepeatMode(looping ?
                Player.REPEAT_MODE_ALL : Player.REPEAT_MODE_OFF);
        }
    }

    @Override
    public void setScreenOnWhilePlaying(boolean screenOn) {
    }

    @Override
    @Deprecated
    public void setWakeMode(Context context, int mode) {
    }

    @Override
    public void setOnPreparedListener(OnPreparedListener listener) {
        this.onPreparedListener = listener;
    }

    @Override
    public void setOnCompletionListener(OnCompletionListener listener) {
        this.onCompletionListener = listener;
    }

    @Override
    public void setOnErrorListener(OnErrorListener listener) {
        this.onErrorListener = listener;
    }

    @Override
    public void setOnInfoListener(OnInfoListener listener) {
        this.onInfoListener = listener;
    }

    @Override
    public void setOnSeekCompleteListener(OnSeekCompleteListener listener) {
        this.onSeekCompleteListener = listener;
    }

    @Override
    public void setOnVideoSizeChangedListener(OnVideoSizeChangedListener listener) {
        this.onVideoSizeChangedListener = listener;
    }

    @Override
    public void setOnBufferingUpdateListener(OnBufferingUpdateListener listener) {
        this.onBufferingUpdateListener = listener;
    }

    @Override
    public void setOnTimedTextListener(OnTimedTextListener listener) {
        this.onTimedTextListener = listener;
    }
    
    public void setPlayerErrorListener(PlayerErrorListener listener) {
        this.errorListener = listener;
        Log.i(TAG, "PlayerErrorListener set: " + (listener != null ? "not null" : "null"));
    }
    
    private boolean isNetworkError(Throwable t) {
        if (t == null) return false;
        
        Throwable cur = t;
        for (int i = 0; i < 12; i++) {
            String className = cur.getClass().getName();
            String message = cur.getMessage();
            
            if (className.contains("UnknownHostException") ||
                className.contains("SocketTimeoutException") ||
                className.contains("ConnectException") ||
                className.contains("NoRouteToHostException") ||
                className.contains("PortUnreachableException") ||
                className.contains("InterruptedIOException")) {
                Log.w(TAG, "[NETWORK_ERROR] Detected network error: " + className + ", message: " + message);
                return true;
            }
            
            if (message != null) {
                String lowerMessage = message.toLowerCase();
                if (lowerMessage.contains("network") ||
                    lowerMessage.contains("connection") ||
                    lowerMessage.contains("timeout") ||
                    lowerMessage.contains("unreachable") ||
                    lowerMessage.contains("no address") ||
                    lowerMessage.contains("interrupted")) {
                    Log.w(TAG, "[NETWORK_ERROR] Detected network error by message: " + className + ", message: " + message);
                    return true;
                }
            }
            
            cur = cur.getCause();
            if (cur == null) break;
        }
        
        Log.w(TAG, "[NETWORK_ERROR] Not a network error: " + (t != null ? t.getClass().getName() : "null"));
        return false;
    }
    
    private Integer findHttpResponseCode(Throwable t) {
        if (t == null) return null;
        
        Throwable cur = t;
        for (int i = 0; i < 12; i++) {
            if (cur instanceof com.google.android.exoplayer2.source.UnrecognizedInputFormatException) {
                return null;
            }
            
            try {
                if (cur.getClass().getName().contains("InvalidResponseCodeException")) {
                    java.lang.reflect.Method getResponseCodeMethod = cur.getClass().getMethod("getResponseCode");
                    Object code = getResponseCodeMethod.invoke(cur);
                    if (code instanceof Integer) {
                        return (Integer) code;
                    }
                }
            } catch (Exception e) {
                // Ignore reflection errors
            }
            
            cur = cur.getCause();
            if (cur == null) break;
        }
        
        return null;
    }

    private void applySavedAudioBalanceLevel() {
        if (customRenderersFactory == null) return;
        
        VolumeBalanceAudioProcessor processor = customRenderersFactory.getVolumeBalanceAudioProcessor();
        if (processor == null) return;
        
        SharedPreferences prefs = appContext.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);
        String savedLevel = prefs.getString(KEY_AUDIO_BALANCE_LEVEL, "off");
        AudioBalanceLevel level = AudioBalanceLevel.fromPrefValue(savedLevel);
        processor.setLevel(level);
        Log.i(TAG, "Audio balance: " + level);
    }

    public void setAudioBalanceLevel(AudioBalanceLevel level) {
        if (customRenderersFactory != null) {
            VolumeBalanceAudioProcessor processor = customRenderersFactory.getVolumeBalanceAudioProcessor();
            if (processor != null) {
                processor.setLevel(level);
            }
        }
    }

    public ExoPlayer getExoPlayer() {
        return exoPlayer;
    }
}
