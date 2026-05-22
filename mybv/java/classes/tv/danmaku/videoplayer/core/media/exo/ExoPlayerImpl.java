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
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.DeviceInfo;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackParameters;
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
    private final AtomicLong lastPositionUpdateTime = new AtomicLong(0);
    private static final long POSITION_CACHE_VALIDITY_MS = 500;
    private Handler mainHandler;
    private Runnable positionUpdateRunnable;
    private Runnable bufferMonitorRunnable;
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
                    mainHandler.postDelayed(this, 200);
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
                    
                    String stateStr = "";
                    switch (playbackState) {
                        case Player.STATE_IDLE: stateStr = "IDLE"; break;
                        case Player.STATE_BUFFERING: stateStr = "BUFFERING"; break;
                        case Player.STATE_READY: stateStr = "READY"; break;
                        case Player.STATE_ENDED: stateStr = "ENDED"; break;
                    }
                    
                    Log.i(TAG, "[MONITOR] pos=" + position + "ms/" + duration + "ms, buffered=" 
                        + bufferedPercent + "% (" + bufferedPosition + "ms), playing=" + isPlaying 
                        + ", state=" + stateStr);
                    
                    mainHandler.postDelayed(this, 10000);
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
            
            customRenderersFactory = new CustomRenderersFactory(appContext);
            exoPlayer = new ExoPlayer.Builder(appContext)
                    .setRenderersFactory(customRenderersFactory)
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
                    switch (playbackState) {
                        case Player.STATE_READY:
                            stateName = "READY";
                            cachedDuration = exoPlayer.getDuration();
                            Log.i(TAG, "[STATE] READY - duration=" + cachedDuration + "ms, buffered=" + exoPlayer.getBufferedPercentage() + "%");
                            if (lastPlaybackState == Player.STATE_BUFFERING && onInfoListener != null) {
                                Log.i(TAG, "[STATE] Transition from BUFFERING to READY, sending BUFFERING_END");
                                onInfoListener.onInfo(ExoPlayerImpl.this,
                                    MEDIA_INFO_BUFFERING_END, 0);
                                onInfoListener.onInfo2(ExoPlayerImpl.this,
                                    MEDIA_INFO_BUFFERING_END, 0, 0);
                            }
                            if (networkErrorRetryCount > 0) {
                                Log.i(TAG, "[STATE] Network error retry succeeded, resetting retry count");
                                networkErrorRetryCount = 0;
                            }
                            if (onPreparedListener != null && !hasPrepared) {
                                hasPrepared = true;
                                Log.i(TAG, "[STATE] First READY, calling onPrepared");
                                onPreparedListener.onPrepared(ExoPlayerImpl.this);
                            }
                            mainHandler.post(positionUpdateRunnable);
                            break;
                        case Player.STATE_ENDED:
                            stateName = "ENDED";
                            mainHandler.removeCallbacks(positionUpdateRunnable);
                            if (onCompletionListener != null) {
                                onCompletionListener.onCompletion(ExoPlayerImpl.this);
                            }
                            break;
                        case Player.STATE_BUFFERING:
                            stateName = "BUFFERING";
                            Log.w(TAG, "[STATE] BUFFERING - position=" + exoPlayer.getCurrentPosition() + "ms, buffered=" + exoPlayer.getBufferedPercentage() + "%");
                            if (onInfoListener != null) {
                                onInfoListener.onInfo(ExoPlayerImpl.this,
                                    MEDIA_INFO_BUFFERING_START, 0);
                                onInfoListener.onInfo2(ExoPlayerImpl.this,
                                    MEDIA_INFO_BUFFERING_START, 0, 0);
                            }
                            break;
                        case Player.STATE_IDLE:
                            stateName = "IDLE";
                            mainHandler.removeCallbacks(positionUpdateRunnable);
                            break;
                    }
                    Log.i(TAG, "[STATE] " + stateName + " (playbackState=" + playbackState + ")");
                    lastPlaybackState = playbackState;
                }

                @Override
                public void onPlayerError(PlaybackException error) {
                    Log.e(TAG, "[ERROR] Player error occurred!");
                    Log.e(TAG, "[ERROR] Error code: " + error.errorCode);
                    Log.e(TAG, "[ERROR] Error message: " + error.getMessage());
                    Log.e(TAG, "[ERROR] Error type: " + error.getClass().getSimpleName());
                    if (error.getCause() != null) {
                        Log.e(TAG, "[ERROR] Cause: " + error.getCause().getMessage());
                    }
                    
                    if (exoPlayer != null) {
                        Log.e(TAG, "[ERROR] Position when error: " + exoPlayer.getCurrentPosition() + "ms / " + exoPlayer.getDuration() + "ms");
                        Log.e(TAG, "[ERROR] Buffered position: " + exoPlayer.getBufferedPosition() + "ms");
                        Log.e(TAG, "[ERROR] Playback state: " + exoPlayer.getPlaybackState());
                    }
                    
                    Integer httpCode = findHttpResponseCode(error);
                    if (httpCode != null) {
                        Log.e(TAG, "[ERROR] HTTP status code: " + httpCode);
                    }
                    
                    boolean isNalError = error.getCause() != null && 
                        error.getCause().getMessage() != null &&
                        error.getCause().getMessage().contains("Invalid NAL length");
                    
                    if (isNalError && savedMediaSource != null) {
                        long errorPosition = exoPlayer != null ? exoPlayer.getCurrentPosition() : savedSeekPosition;
                        long duration = exoPlayer != null ? exoPlayer.getDuration() : 0;
                        long skipPosition = errorPosition + 10000;
                        
                        if (duration > 0 && skipPosition < duration - 10000) {
                            Log.w(TAG, "[ERROR] NAL unit error detected, trying to skip 10 seconds from " + errorPosition + "ms to " + skipPosition + "ms");
                            
                            if (nalErrorRetryCount < MAX_NAL_ERROR_RETRY) {
                                nalErrorRetryCount++;
                                Log.w(TAG, "[ERROR] NAL error skip attempt " + nalErrorRetryCount + "/" + MAX_NAL_ERROR_RETRY);
                                
                                if (exoPlayer != null) {
                                    exoPlayer.release();
                                    exoPlayer = null;
                                }
                                
                                savedSeekPosition = skipPosition;
                                ensurePlayer();
                                exoPlayer.setMediaSource(savedMediaSource, skipPosition);
                                exoPlayer.prepare();
                                return;
                            } else {
                                Log.e(TAG, "[ERROR] Max NAL error retries reached, giving up");
                            }
                        } else {
                            Log.e(TAG, "[ERROR] NAL error near end of video, cannot skip");
                        }
                    }
                    
                    boolean isNetworkError = isNetworkError(error);
                    if (isNetworkError && networkErrorRetryCount < MAX_NETWORK_ERROR_RETRY) {
                        networkErrorRetryCount++;
                        Log.w(TAG, "[ERROR] Network error detected, retrying (" + networkErrorRetryCount + "/" + MAX_NETWORK_ERROR_RETRY + ") in " + NETWORK_ERROR_RETRY_DELAY_MS + "ms");
                        
                        if (networkErrorRetryRunnable != null) {
                            mainHandler.removeCallbacks(networkErrorRetryRunnable);
                        }
                        
                        networkErrorRetryRunnable = new Runnable() {
                            @Override
                            public void run() {
                                if (exoPlayer != null) {
                                    Log.i(TAG, "[ERROR] Retrying playback after network error");
                                    exoPlayer.prepare();
                                }
                            }
                        };
                        mainHandler.postDelayed(networkErrorRetryRunnable, NETWORK_ERROR_RETRY_DELAY_MS);
                        return;
                    }
                    
                    if (onErrorListener != null) {
                        onErrorListener.onError(ExoPlayerImpl.this,
                            error.errorCode, 0);
                    }
                    
                    if (errorListener != null) {
                        errorListener.onPlayerError(error.errorCode, error.getMessage(), httpCode);
                    }
                }

                @Override
                public void onVideoSizeChanged(VideoSize videoSize) {
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
                    Log.i(TAG, "[PLAY] isPlaying=" + isPlaying + ", position=" + exoPlayer.getCurrentPosition() + "ms");
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
                    Log.w(TAG, "[DISCONTINUITY] reason=" + reasonStr + ", oldPos=" + oldPosition.positionMs + "ms, newPos=" + newPosition.positionMs + "ms");
                    
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
                        Log.e(TAG, "[ERROR_CHANGED] Error changed to: " + error.getMessage());
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
                    Log.w(TAG, "[DISCONTINUITY_OLD] reason=" + reason);
                }

                @Override
                public void onRenderedFirstFrame() {
                    Log.i(TAG, "[RENDER] First frame rendered");
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
        ensurePlayer();
        exoPlayer.setMediaSource(mediaSource);
    }

    public void setDataSourceWithSeek(MediaSource mediaSource, long seekMs) {
        Log.i(TAG, "setDataSourceWithSeek(MediaSource, " + seekMs + ")");
        this.savedMediaSource = mediaSource;
        this.savedSeekPosition = seekMs;
        ensurePlayer();
        exoPlayer.setMediaSource(mediaSource, seekMs);
    }

    public void setPlayWhenReadyOnPrepare(boolean playWhenReady) {
        this.playWhenReadyOnPrepare = playWhenReady;
    }

    @Override
    public void prepareAsync() throws IllegalStateException {
        Log.i(TAG, "prepareAsync");
        ensurePlayer();
        exoPlayer.prepare();
        mainHandler.postDelayed(bufferMonitorRunnable, 10000);
    }

    @Override
    public void start() throws IllegalStateException {
        Log.i(TAG, "start");
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
        if (exoPlayer != null) {
            exoPlayer.pause();
        }
    }

    @Override
    public void stop() throws IllegalStateException {
        Log.i(TAG, "stop");
        if (exoPlayer != null) {
            exoPlayer.stop();
        }
        mainHandler.removeCallbacks(positionUpdateRunnable);
        mainHandler.removeCallbacks(bufferMonitorRunnable);
        mainHandler.removeCallbacks(testErrorRunnable);
    }

    @Override
    public void release() {
        Log.i(TAG, "release");
        mainHandler.removeCallbacks(positionUpdateRunnable);
        mainHandler.removeCallbacks(bufferMonitorRunnable);
        mainHandler.removeCallbacks(testErrorRunnable);
        mainHandler.removeCallbacks(networkErrorRetryRunnable);
        networkErrorRetryCount = 0;
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
        if (exoPlayer != null) {
            exoPlayer.stop();
            exoPlayer.clearMediaItems();
        }
        mainHandler.removeCallbacks(positionUpdateRunnable);
        mainHandler.removeCallbacks(bufferMonitorRunnable);
    }

    @Override
    public void seekTo(long msec) throws IllegalStateException {
        Log.i(TAG, "seekTo: " + msec);
        if (exoPlayer != null) {
            exoPlayer.seekTo(msec);
            cachedCurrentPosition = msec;
        }
    }

    @Override
    public long getCurrentPosition() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (exoPlayer != null) {
                cachedCurrentPosition = exoPlayer.getCurrentPosition();
                lastPositionUpdateTime.set(System.currentTimeMillis());
            }
            return cachedCurrentPosition;
        }
        return cachedCurrentPosition;
    }

    @Override
    public long getDuration() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (exoPlayer != null) {
                cachedDuration = exoPlayer.getDuration();
            }
            return cachedDuration >= 0 ? cachedDuration : 0;
        }
        return cachedDuration >= 0 ? cachedDuration : 0;
    }

    @Override
    public boolean isPlaying() {
        if (exoPlayer != null) {
            return exoPlayer.isPlaying();
        }
        return false;
    }

    @Override
    public void setSpeed(float speed) {
        Log.i(TAG, "setSpeed: " + speed);
        this.currentSpeed = speed;
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
        if (exoPlayer != null) {
            VideoSize size = exoPlayer.getVideoSize();
            return size.width;
        }
        return 0;
    }

    @Override
    public int getVideoHeight() {
        if (exoPlayer != null) {
            VideoSize size = exoPlayer.getVideoSize();
            return size.height;
        }
        return 0;
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
        return 1;
    }

    @Override
    public int getVideoSarNum() {
        return 1;
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
                className.contains("PortUnreachableException")) {
                return true;
            }
            
            if (message != null) {
                String lowerMessage = message.toLowerCase();
                if (lowerMessage.contains("network") ||
                    lowerMessage.contains("connection") ||
                    lowerMessage.contains("timeout") ||
                    lowerMessage.contains("unreachable") ||
                    lowerMessage.contains("no address")) {
                    return true;
                }
            }
            
            cur = cur.getCause();
            if (cur == null) break;
        }
        
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
