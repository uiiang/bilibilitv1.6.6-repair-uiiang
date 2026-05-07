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
    private long seekOnPrepare = -1;
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

    private OnPreparedListener onPreparedListener;
    private OnCompletionListener onCompletionListener;
    private OnErrorListener onErrorListener;
    private OnInfoListener onInfoListener;
    private OnSeekCompleteListener onSeekCompleteListener;
    private OnVideoSizeChangedListener onVideoSizeChangedListener;
    private OnBufferingUpdateListener onBufferingUpdateListener;
    private OnTimedTextListener onTimedTextListener;

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
                    switch (playbackState) {
                        case Player.STATE_READY:
                            if (seekOnPrepare > 0) {
                                exoPlayer.seekTo(seekOnPrepare);
                                seekOnPrepare = -1;
                            }
                            cachedDuration = exoPlayer.getDuration();
                            if (onPreparedListener != null) {
                                onPreparedListener.onPrepared(ExoPlayerImpl.this);
                            }
                            mainHandler.post(positionUpdateRunnable);
                            break;
                        case Player.STATE_ENDED:
                            mainHandler.removeCallbacks(positionUpdateRunnable);
                            if (onCompletionListener != null) {
                                onCompletionListener.onCompletion(ExoPlayerImpl.this);
                            }
                            break;
                        case Player.STATE_BUFFERING:
                            if (onInfoListener != null) {
                                onInfoListener.onInfo(ExoPlayerImpl.this,
                                    MEDIA_INFO_BUFFERING_START, 0);
                                onInfoListener.onInfo2(ExoPlayerImpl.this,
                                    MEDIA_INFO_BUFFERING_START, 0, 0);
                            }
                            break;
                        case Player.STATE_IDLE:
                            mainHandler.removeCallbacks(positionUpdateRunnable);
                            break;
                    }
                }

                @Override
                public void onPlayerError(PlaybackException error) {
                    Log.e(TAG, "Player error: " + error.getMessage());
                    if (onErrorListener != null) {
                        onErrorListener.onError(ExoPlayerImpl.this,
                            error.errorCode, 0);
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
                    if (isPlaying && onInfoListener != null) {
                        onInfoListener.onInfo(ExoPlayerImpl.this,
                            MEDIA_INFO_VIDEO_RENDERING_START, 0);
                        onInfoListener.onInfo2(ExoPlayerImpl.this,
                            MEDIA_INFO_VIDEO_RENDERING_START, 0, 0);
                    }
                }

                @Override
                public void onPositionDiscontinuity(Player.PositionInfo oldPosition, Player.PositionInfo newPosition, int reason) {
                    if (reason == Player.DISCONTINUITY_REASON_SEEK) {
                        if (onSeekCompleteListener != null) {
                            onSeekCompleteListener.onSeekComplete(ExoPlayerImpl.this);
                        }
                    }
                }

                @Override
                public void onTimelineChanged(Timeline timeline, int reason) {
                }

                @Override
                public void onAudioAttributesChanged(AudioAttributes audioAttributes) {
                }

                @Override
                public void onAudioSessionIdChanged(int audioSessionId) {
                }

                @Override
                public void onAvailableCommandsChanged(Player.Commands availableCommands) {
                }

                @Override
                public void onCues(CueGroup cueGroup) {
                }

                @Override
                public void onCues(List<Cue> cues) {
                }

                @Override
                public void onDeviceInfoChanged(DeviceInfo deviceInfo) {
                }

                @Override
                public void onDeviceVolumeChanged(int volume, boolean muted) {
                }

                @Override
                public void onEvents(Player player, Player.Events events) {
                }

                @Override
                public void onIsLoadingChanged(boolean isLoading) {
                }

                @Override
                public void onLoadingChanged(boolean isLoading) {
                }

                @Override
                public void onMaxSeekToPreviousPositionChanged(long maxSeekToPreviousPositionMs) {
                }

                @Override
                public void onMediaItemTransition(MediaItem mediaItem, int reason) {
                }

                @Override
                public void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
                }

                @Override
                public void onMetadata(Metadata metadata) {
                }

                @Override
                public void onPlayWhenReadyChanged(boolean playWhenReady, int reason) {
                }

                @Override
                public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                }

                @Override
                public void onPlaybackSuppressionReasonChanged(int playbackSuppressionReason) {
                }

                @Override
                public void onPlayerErrorChanged(PlaybackException error) {
                }

                @Override
                public void onPlayerStateChanged(boolean playWhenReady, int playbackState) {
                }

                @Override
                public void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
                }

                @Override
                public void onPositionDiscontinuity(int reason) {
                }

                @Override
                public void onRenderedFirstFrame() {
                }

                @Override
                public void onRepeatModeChanged(int repeatMode) {
                }

                @Override
                public void onSeekBackIncrementChanged(long seekBackIncrementMs) {
                }

                @Override
                public void onSeekForwardIncrementChanged(long seekForwardIncrementMs) {
                }

                @Override
                public void onShuffleModeEnabledChanged(boolean shuffleModeEnabled) {
                }

                @Override
                public void onSkipSilenceEnabledChanged(boolean skipSilenceEnabled) {
                }

                @Override
                public void onSurfaceSizeChanged(int width, int height) {
                }

                @Override
                public void onTrackSelectionParametersChanged(TrackSelectionParameters parameters) {
                }

                @Override
                public void onTracksChanged(Tracks tracks) {
                }

                @Override
                public void onVolumeChanged(float volume) {
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
        this.seekOnPrepare = seekMs;
        setDataSource(mediaSource);
    }

    public void setPlayWhenReadyOnPrepare(boolean playWhenReady) {
        this.playWhenReadyOnPrepare = playWhenReady;
    }

    @Override
    public void prepareAsync() throws IllegalStateException {
        Log.i(TAG, "prepareAsync");
        ensurePlayer();
        exoPlayer.prepare();
    }

    @Override
    public void start() throws IllegalStateException {
        Log.i(TAG, "start");
        if (exoPlayer != null) {
            exoPlayer.play();
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
    }

    @Override
    public void release() {
        Log.i(TAG, "release");
        mainHandler.removeCallbacks(positionUpdateRunnable);
        if (exoPlayer != null) {
            exoPlayer.release();
            exoPlayer = null;
        }
    }

    @Override
    public void reset() {
        Log.i(TAG, "reset");
        if (exoPlayer != null) {
            exoPlayer.stop();
            exoPlayer.clearMediaItems();
        }
        mainHandler.removeCallbacks(positionUpdateRunnable);
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
