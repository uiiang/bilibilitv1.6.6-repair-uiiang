.class public Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    }
.end annotation


# static fields
.field private static final KEY_AUDIO_BALANCE_LEVEL:Ljava/lang/String; = "audio_balance_level"

.field private static final LIVE_BUFFERING_TIMEOUT_MS:J = 0x3a98L

.field private static final LIVE_ERROR_RETRY_DELAY_MS:J = 0x7d0L

.field private static final MAX_LIVE_ERROR_RETRY:I = 0x5

.field private static final MAX_NAL_ERROR_RETRY:I = 0x3

.field private static final MAX_NETWORK_ERROR_RETRY:I = 0x3

.field private static final MAX_VOD_BUFFERING_RETRY:I = 0x2

.field private static final NETWORK_ERROR_RETRY_DELAY_MS:J = 0xbb8L

.field private static final POSITION_CACHE_VALIDITY_MS:J = 0x1f4L

.field private static final PREFS_NAME:Ljava/lang/String; = "bili_preference"

.field private static final SEEK_DEBOUNCE_DELAY_MS:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"

.field private static final TEST_ERROR_INTERVAL_MS:J = 0x1d4c0L

.field private static final TEST_ERROR_REFRESH:Z = false

.field private static final VOD_BUFFERING_TIMEOUT_MS:J = 0x7530L


# instance fields
.field private appContext:Landroid/content/Context;

.field private bufferMonitorRunnable:Ljava/lang/Runnable;

.field private bufferingStartTime:J

.field private volatile cachedCurrentPosition:J

.field private volatile cachedDuration:J

.field private volatile cachedIsPlaying:Z

.field private volatile cachedPixelWidthHeightRatio:F

.field private volatile cachedVideoHeight:I

.field private volatile cachedVideoWidth:I

.field private currentSpeed:F

.field private customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

.field private debouncedSeekRunnable:Ljava/lang/Runnable;

.field private errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

.field private exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field private hasPrepared:Z

.field private isLiveStream:Z

.field private lastPlaybackState:I

.field private final lastPositionUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private liveErrorRetryCount:I

.field private mLooping:Z

.field private mainHandler:Landroid/os/Handler;

.field private nalErrorRetryCount:I

.field private networkErrorRetryCount:I

.field private networkErrorRetryRunnable:Ljava/lang/Runnable;

.field private onBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private onErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private onSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private onTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private onVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private pendingSeekPosition:J

.field private pendingSurface:Landroid/view/Surface;

.field private pendingSurfaceHolder:Landroid/view/SurfaceHolder;

.field private playWhenReadyOnPrepare:Z

.field private playerHandler:Landroid/os/Handler;

.field private positionUpdateRunnable:Ljava/lang/Runnable;

.field private savedMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private savedSeekPosition:J

.field private testErrorCount:I

.field private testErrorRunnable:Ljava/lang/Runnable;

.field private vodBufferingRetryCount:I

.field private vodBufferingStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->currentSpeed:F

    .line 56
    iput-boolean v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mLooping:Z

    .line 62
    iput-wide v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    .line 63
    iput-wide v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    .line 64
    iput-boolean v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedIsPlaying:Z

    .line 65
    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedVideoWidth:I

    .line 66
    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedVideoHeight:I

    .line 67
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedPixelWidthHeightRatio:F

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPositionUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSeekPosition:J

    .line 78
    iput v3, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPlaybackState:I

    .line 79
    iput-boolean v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->hasPrepared:Z

    .line 94
    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->testErrorCount:I

    .line 98
    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    .line 105
    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->liveErrorRetryCount:I

    .line 106
    iput-boolean v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z

    .line 107
    iput-wide v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J

    .line 108
    iput-wide v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J

    .line 109
    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I

    .line 113
    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->nalErrorRetryCount:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->savedMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 115
    iput-wide v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->savedSeekPosition:J

    .line 130
    iput-boolean v3, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playWhenReadyOnPrepare:Z

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->appContext:Landroid/content/Context;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$1;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$1;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    .line 148
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferMonitorRunnable:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$3;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$3;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->testErrorRunnable:Ljava/lang/Runnable;

    .line 266
    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object v0
.end method

.method static synthetic access$002(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;Lcom/google/android/exoplayer2/ExoPlayer;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object p1
.end method

.method static synthetic access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J

    return-wide p1
.end method

.method static synthetic access$102(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    return-wide p1
.end method

.method static synthetic access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    return-object v0
.end method

.method static synthetic access$1200(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I

    return v0
.end method

.method static synthetic access$1302(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I

    return p1
.end method

.method static synthetic access$1308(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I

    return v0
.end method

.method static synthetic access$1400(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPlaybackState:I

    return v0
.end method

.method static synthetic access$1402(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPlaybackState:I

    return p1
.end method

.method static synthetic access$1500(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1600(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    return v0
.end method

.method static synthetic access$1602(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    return p1
.end method

.method static synthetic access$1608(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    return v0
.end method

.method static synthetic access$1700(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$1800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->hasPrepared:Z

    return v0
.end method

.method static synthetic access$1802(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->hasPrepared:Z

    return p1
.end method

.method static synthetic access$1900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$202(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    return-wide p1
.end method

.method static synthetic access$2100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->nalErrorRetryCount:I

    return v0
.end method

.method static synthetic access$2108(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->nalErrorRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->nalErrorRetryCount:I

    return v0
.end method

.method static synthetic access$2200(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->liveErrorRetryCount:I

    return v0
.end method

.method static synthetic access$2208(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->liveErrorRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->liveErrorRetryCount:I

    return v0
.end method

.method static synthetic access$2300(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->savedMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    return-object v0
.end method

.method static synthetic access$2400(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->findHttpResponseCode(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->savedSeekPosition:J

    return-wide v0
.end method

.method static synthetic access$2502(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->savedSeekPosition:J

    return-wide p1
.end method

.method static synthetic access$2600(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    return-void
.end method

.method static synthetic access$2700(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isNetworkError(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2802(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPositionUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$3000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$3100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$3200(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$3300(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->performSeek(J)V

    return-void
.end method

.method static synthetic access$400(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedIsPlaying:Z

    return p1
.end method

.method static synthetic access$602(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedVideoWidth:I

    return p1
.end method

.method static synthetic access$702(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedVideoHeight:I

    return p1
.end method

.method static synthetic access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedPixelWidthHeightRatio:F

    return v0
.end method

.method static synthetic access$802(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;F)F
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedPixelWidthHeightRatio:F

    return p1
.end method

.method static synthetic access$900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z

    return v0
.end method

.method private applySavedAudioBalanceLevel()V
    .locals 4

    .prologue
    .line 1373
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    if-nez v0, :cond_5

    .line 1383
    :cond_4
    :goto_4
    return-void

    .line 1375
    :cond_5
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;->getVolumeBalanceAudioProcessor()Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;

    move-result-object v0

    .line 1376
    if-eqz v0, :cond_4

    .line 1378
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->appContext:Landroid/content/Context;

    const-string v2, "bili_preference"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1379
    const-string v2, "audio_balance_level"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1380
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->fromPrefValue(Ljava/lang/String;)Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    move-result-object v1

    .line 1381
    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->setLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    .line 1382
    const-string v0, "ExoPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio balance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private ensurePlayer()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const v3, 0x186a0

    .line 269
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_c1

    .line 270
    const-string v0, "ExoPlayerImpl"

    const-string v1, "ensurePlayer: creating new ExoPlayer instance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    .line 273
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    .line 275
    new-instance v0, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;-><init>()V

    const/16 v1, 0x9c4

    const/16 v2, 0x1388

    .line 277
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->build()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object v0

    .line 284
    const-string v1, "ExoPlayerImpl"

    const-string v2, "ensurePlayer: LoadControl configured with doubled buffer sizes for live streaming"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v1, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    const v2, 0x3f733333    # 0.95f

    .line 288
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setFallbackMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object v1

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 289
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setFallbackMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object v1

    .line 290
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setMinUpdateIntervalMs(J)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 291
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setProportionalControlFactor(F)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 292
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setMaxLiveOffsetErrorMsForUnitSpeed(J)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object v1

    .line 293
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->setTargetLiveOffsetIncrementOnRebufferMs(J)Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->build()Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;

    move-result-object v1

    .line 295
    const-string v2, "ExoPlayerImpl"

    const-string v3, "ensurePlayer: LivePlaybackSpeedControl configured for live streaming (aggressive catch-up)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->appContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    .line 298
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v2

    .line 299
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 302
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-boolean v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playWhenReadyOnPrepare:Z

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 304
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->applySavedAudioBalanceLevel()V

    .line 306
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c2

    .line 307
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensurePlayer: setting pendingSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 314
    :cond_b7
    :goto_b7
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    invoke-direct {v1, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 839
    :cond_c1
    return-void

    .line 309
    :cond_c2
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_b7

    .line 310
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensurePlayer: setting pendingSurfaceHolder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    goto :goto_b7
.end method

.method private findHttpResponseCode(Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1345
    if-nez p1, :cond_6

    move-object v0, v1

    .line 1369
    :goto_5
    return-object v0

    :cond_6
    move v2, v0

    .line 1348
    :goto_7
    const/16 v0, 0xc

    if-ge v2, v0, :cond_43

    .line 1349
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    if-eqz v0, :cond_11

    move-object v0, v1

    .line 1350
    goto :goto_5

    .line 1354
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "InvalidResponseCodeException"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getResponseCode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1356
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1357
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_3d

    .line 1358
    check-cast v0, Ljava/lang/Integer;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3b} :catch_3c

    goto :goto_5

    .line 1361
    :catch_3c
    move-exception v0

    .line 1365
    :cond_3d
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 1366
    if-nez p1, :cond_45

    :cond_43
    move-object v0, v1

    .line 1369
    goto :goto_5

    .line 1348
    :cond_45
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7
.end method

.method private isNetworkError(Ljava/lang/Throwable;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1306
    if-nez p1, :cond_6

    move v0, v1

    .line 1341
    :goto_5
    return v0

    :cond_6
    move v2, v1

    move-object v3, p1

    .line 1309
    :goto_8
    const/16 v4, 0xc

    if-ge v2, v4, :cond_cb

    .line 1310
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1311
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 1313
    const-string v6, "UnknownHostException"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_48

    const-string v6, "SocketTimeoutException"

    .line 1314
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_48

    const-string v6, "ConnectException"

    .line 1315
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_48

    const-string v6, "NoRouteToHostException"

    .line 1316
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_48

    const-string v6, "PortUnreachableException"

    .line 1317
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_48

    const-string v6, "InterruptedIOException"

    .line 1318
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 1319
    :cond_48
    const-string v1, "ExoPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NETWORK_ERROR] Detected network error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1323
    :cond_6b
    if-eqz v5, :cond_c5

    .line 1324
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1325
    const-string v7, "network"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a1

    const-string v7, "connection"

    .line 1326
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a1

    const-string v7, "timeout"

    .line 1327
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a1

    const-string v7, "unreachable"

    .line 1328
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a1

    const-string v7, "no address"

    .line 1329
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a1

    const-string v7, "interrupted"

    .line 1330
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 1331
    :cond_a1
    const-string v1, "ExoPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NETWORK_ERROR] Detected network error by message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1336
    :cond_c5
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 1337
    if-nez v3, :cond_f0

    .line 1340
    :cond_cb
    const-string v2, "ExoPlayerImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NETWORK_ERROR] Not a network error: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_f4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_e2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1341
    goto/16 :goto_5

    .line 1309
    :cond_f0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 1340
    :cond_f4
    const-string v0, "null"

    goto :goto_e2
.end method

.method private performSeek(J)V
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_5

    .line 1084
    :goto_4
    return-void

    .line 1081
    :cond_5
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 1082
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    goto :goto_4
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1179
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 1105
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 1110
    iget-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_a

    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    :cond_a
    return-wide v0
.end method

.method public getErrorListener()Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    return-object v0
.end method

.method public getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object v0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 1

    .prologue
    .line 1189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 1194
    const/4 v0, 0x0

    new-array v0, v0, [Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 1174
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .prologue
    .line 1199
    const/16 v0, 0x3e8

    return v0
.end method

.method public getVideoSarNum()I
    .locals 2

    .prologue
    .line 1204
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedPixelWidthHeightRatio:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 1169
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedVideoWidth:I

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 1209
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mLooping:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1215
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedIsPlaying:Z

    return v0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 950
    const-string v0, "ExoPlayerImpl"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_22

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 952
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$6;

    invoke-direct {v1, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$6;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 963
    :cond_21
    :goto_21
    return-void

    .line 960
    :cond_22
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_21

    .line 961
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->pause()V

    goto :goto_21
.end method

.method public prepareAsync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 918
    const-string v0, "ExoPlayerImpl"

    const-string v1, "prepareAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 920
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 921
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferMonitorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 922
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 987
    const-string v0, "ExoPlayerImpl"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 989
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferMonitorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 990
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->debouncedSeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 991
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->testErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 992
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 993
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    .line 994
    iput-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->debouncedSeekRunnable:Ljava/lang/Runnable;

    .line 995
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSeekPosition:J

    .line 996
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3f

    .line 997
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    .line 998
    iput-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 1000
    :cond_3f
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 1004
    const-string v0, "ExoPlayerImpl"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iput-boolean v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->hasPrepared:Z

    .line 1006
    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->nalErrorRetryCount:I

    .line 1007
    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    .line 1008
    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->liveErrorRetryCount:I

    .line 1009
    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingRetryCount:I

    .line 1010
    iput-wide v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->vodBufferingStartTime:J

    .line 1011
    iput-wide v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferingStartTime:J

    .line 1012
    iput-boolean v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z

    .line 1013
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_28

    .line 1014
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 1015
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->clearMediaItems()V

    .line 1017
    :cond_28
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1018
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferMonitorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1019
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->debouncedSeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1020
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->debouncedSeekRunnable:Ljava/lang/Runnable;

    .line 1021
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSeekPosition:J

    .line 1022
    return-void
.end method

.method public seekTo(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x12c

    .line 1028
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_6

    .line 1032
    :cond_6
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_21

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_21

    .line 1035
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$8;

    invoke-direct {v1, p0, p1, p2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$8;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1076
    :goto_20
    return-void

    .line 1045
    :cond_21
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_2d

    .line 1046
    const-string v0, "ExoPlayerImpl"

    const-string v1, "[SEEK] ERROR: exoPlayer is null, cannot seek!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1052
    :cond_2d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7c

    .line 1053
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SEEK] Player is BUFFERING, debouncing seek. Target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSeekPosition:J

    .line 1057
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->debouncedSeekRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6b

    .line 1058
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->debouncedSeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1062
    :cond_6b
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$9;

    invoke-direct {v0, p0, p1, p2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$9;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->debouncedSeekRunnable:Ljava/lang/Runnable;

    .line 1069
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->debouncedSeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1071
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    goto :goto_20

    .line 1075
    :cond_7c
    invoke-direct {p0, p1, p2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->performSeek(J)V

    goto :goto_20
.end method

.method public seekToLivePosition()V
    .locals 2

    .prologue
    .line 1087
    const-string v0, "ExoPlayerImpl"

    const-string v1, "seekToLivePosition: seeking to live edge for live stream"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_22

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 1089
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$10;

    invoke-direct {v1, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$10;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1101
    :cond_21
    :goto_21
    return-void

    .line 1097
    :cond_22
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z

    if-eqz v0, :cond_21

    .line 1098
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->seekToDefaultPosition()V

    .line 1099
    const-string v0, "ExoPlayerImpl"

    const-string v1, "seekToLivePosition: called seekToDefaultPosition()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    if-eqz v0, :cond_f

    .line 1387
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;->getVolumeBalanceAudioProcessor()Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;

    move-result-object v0

    .line 1388
    if-eqz v0, :cond_f

    .line 1389
    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->setLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    .line 1392
    :cond_f
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    .prologue
    .line 1220
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1f40

    .line 856
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource with headers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 859
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    const-string v1, "Bilibili Freedoooooom/MarkII"

    .line 860
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 861
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 862
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v1

    .line 864
    if-eqz p3, :cond_5c

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 865
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 867
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 866
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    goto :goto_40

    .line 872
    :cond_5c
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 873
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v0

    .line 875
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 876
    return-void
.end method

.method public setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 3

    .prologue
    .line 889
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setDataSource(MediaSource)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->savedMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 891
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z

    .line 892
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource: isLiveStream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 894
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 895
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 880
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setDataSource(FileDescriptor) - unsupported via ExoPlayer, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 843
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 845
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    .line 846
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 847
    return-void
.end method

.method public setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .locals 2

    .prologue
    .line 885
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setDataSource(IMediaDataSource) - unsupported via ExoPlayer, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return-void
.end method

.method public setDataSourceWithSeek(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .locals 4

    .prologue
    .line 898
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSourceWithSeek(MediaSource, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->savedMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 900
    iput-wide p2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->savedSeekPosition:J

    .line 901
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z

    .line 902
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSourceWithSeek: isLiveStream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 904
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V

    .line 905
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 1146
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplay: holder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1148
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    .line 1149
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_26

    .line 1150
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1152
    :cond_26
    return-void
.end method

.method public setErrorListener(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;)V
    .locals 3

    .prologue
    .line 122
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    .line 123
    const-string v1, "ExoPlayerImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error listener set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1f

    const-string v0, "not null"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 123
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method

.method public setIsLiveStream(Z)V
    .locals 3

    .prologue
    .line 908
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isLiveStream:Z

    .line 909
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsLiveStream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1225
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1230
    return-void
.end method

.method public setLooping(Z)V
    .locals 2

    .prologue
    .line 1234
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mLooping:Z

    .line 1235
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1d

    .line 1237
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$12;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$12;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1249
    :cond_1c
    :goto_1c
    return-void

    .line 1245
    :cond_1d
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1c

    .line 1246
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_2a

    const/4 v0, 0x2

    :goto_26
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setRepeatMode(I)V

    goto :goto_1c

    :cond_2a
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .prologue
    .line 1292
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 1293
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 1268
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 1272
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 1273
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .prologue
    .line 1277
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 1278
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 1262
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 1263
    return-void
.end method

.method public setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 1282
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 1283
    return-void
.end method

.method public setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 1298
    return-void
.end method

.method public setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .prologue
    .line 1287
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 1288
    return-void
.end method

.method public setPlayWhenReadyOnPrepare(Z)V
    .locals 0

    .prologue
    .line 913
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playWhenReadyOnPrepare:Z

    .line 914
    return-void
.end method

.method public setPlayerErrorListener(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;)V
    .locals 3

    .prologue
    .line 1301
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    .line 1302
    const-string v1, "ExoPlayerImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerErrorListener set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1f

    const-string v0, "not null"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    return-void

    .line 1302
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    .prologue
    .line 1253
    return-void
.end method

.method public setSpeed(F)V
    .locals 3

    .prologue
    .line 1120
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iput p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->currentSpeed:F

    .line 1122
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_35

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_35

    .line 1124
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$11;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$11;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1135
    :cond_34
    :goto_34
    return-void

    .line 1132
    :cond_35
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_34

    .line 1133
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlaybackSpeed(F)V

    goto :goto_34
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    .prologue
    .line 1156
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurface: surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exoPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    .line 1158
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1159
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3a

    .line 1160
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setSurface: calling exoPlayer.setVideoSurface()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 1165
    :goto_39
    return-void

    .line 1163
    :cond_3a
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setSurface: exoPlayer is null, caching surface for later"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public setVolume(FF)V
    .locals 3

    .prologue
    .line 1139
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_e

    .line 1140
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    add-float v1, p1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVolume(F)V

    .line 1142
    :cond_e
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1258
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 926
    const-string v0, "ExoPlayerImpl"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_22

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 928
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$5;

    invoke-direct {v1, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$5;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 946
    :cond_21
    :goto_21
    return-void

    .line 936
    :cond_22
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_21

    .line 937
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->play()V

    goto :goto_21
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 967
    const-string v0, "ExoPlayerImpl"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_22

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 969
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$7;

    invoke-direct {v1, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$7;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 983
    :goto_21
    return-void

    .line 977
    :cond_22
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2b

    .line 978
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 980
    :cond_2b
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 981
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playerHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferMonitorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 982
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->testErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_21
.end method
