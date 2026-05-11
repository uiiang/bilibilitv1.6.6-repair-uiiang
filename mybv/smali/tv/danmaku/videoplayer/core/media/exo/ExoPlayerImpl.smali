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

.field private static final MAX_NETWORK_ERROR_RETRY:I = 0x3

.field private static final NETWORK_ERROR_RETRY_DELAY_MS:J = 0xbb8L

.field private static final POSITION_CACHE_VALIDITY_MS:J = 0x1f4L

.field private static final PREFS_NAME:Ljava/lang/String; = "bili_preference"

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"

.field private static final TEST_ERROR_INTERVAL_MS:J = 0x1d4c0L

.field private static final TEST_ERROR_REFRESH:Z


# instance fields
.field private appContext:Landroid/content/Context;

.field private bufferMonitorRunnable:Ljava/lang/Runnable;

.field private volatile cachedCurrentPosition:J

.field private volatile cachedDuration:J

.field private currentSpeed:F

.field private customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

.field private errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

.field private exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field private lastPlaybackState:I

.field private final lastPositionUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLooping:Z

.field private mainHandler:Landroid/os/Handler;

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

.field private pendingSurface:Landroid/view/Surface;

.field private pendingSurfaceHolder:Landroid/view/SurfaceHolder;

.field private playWhenReadyOnPrepare:Z

.field private positionUpdateRunnable:Ljava/lang/Runnable;

.field private testErrorCount:I

.field private testErrorRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->currentSpeed:F

    .line 53
    iput-boolean v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mLooping:Z

    .line 59
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    .line 60
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPositionUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    iput v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPlaybackState:I

    .line 81
    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->testErrorCount:I

    .line 85
    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    .line 101
    iput-boolean v4, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playWhenReadyOnPrepare:Z

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->appContext:Landroid/content/Context;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$1;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$1;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    .line 119
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferMonitorRunnable:Ljava/lang/Runnable;

    .line 147
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$3;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$3;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->testErrorRunnable:Ljava/lang/Runnable;

    .line 161
    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$102(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    return-wide p1
.end method

.method static synthetic access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->findHttpResponseCode(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->isNetworkError(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1302(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1400(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1500(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    return-object v0
.end method

.method static synthetic access$1600(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$1700(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$200(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    return-wide v0
.end method

.method static synthetic access$202(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    return-wide p1
.end method

.method static synthetic access$300(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPositionUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$400(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPlaybackState:I

    return v0
.end method

.method static synthetic access$502(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPlaybackState:I

    return p1
.end method

.method static synthetic access$600(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$700(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    return v0
.end method

.method static synthetic access$702(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    return p1
.end method

.method static synthetic access$708(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)I
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    return v0
.end method

.method static synthetic access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private applySavedAudioBalanceLevel()V
    .locals 4

    .prologue
    .line 913
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    if-nez v0, :cond_5

    .line 923
    :cond_4
    :goto_4
    return-void

    .line 915
    :cond_5
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;->getVolumeBalanceAudioProcessor()Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_4

    .line 918
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->appContext:Landroid/content/Context;

    const-string v2, "bili_preference"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 919
    const-string v2, "audio_balance_level"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 920
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->fromPrefValue(Ljava/lang/String;)Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    move-result-object v1

    .line 921
    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->setLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    .line 922
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
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_60

    .line 165
    const-string v0, "ExoPlayerImpl"

    const-string v1, "ensurePlayer: creating new ExoPlayer instance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    .line 168
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 171
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-boolean v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playWhenReadyOnPrepare:Z

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 173
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->applySavedAudioBalanceLevel()V

    .line 175
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    if-eqz v0, :cond_61

    .line 176
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

    .line 177
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 183
    :cond_56
    :goto_56
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;

    invoke-direct {v1, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$4;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 503
    :cond_60
    return-void

    .line 178
    :cond_61
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_56

    .line 179
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

    .line 180
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    goto :goto_56
.end method

.method private findHttpResponseCode(Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 885
    if-nez p1, :cond_6

    move-object v0, v1

    .line 909
    :goto_5
    return-object v0

    :cond_6
    move v2, v0

    .line 888
    :goto_7
    const/16 v0, 0xc

    if-ge v2, v0, :cond_43

    .line 889
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    if-eqz v0, :cond_11

    move-object v0, v1

    .line 890
    goto :goto_5

    .line 894
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

    .line 895
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getResponseCode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 896
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 897
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_3d

    .line 898
    check-cast v0, Ljava/lang/Integer;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3b} :catch_3c

    goto :goto_5

    .line 901
    :catch_3c
    move-exception v0

    .line 905
    :cond_3d
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 906
    if-nez p1, :cond_45

    :cond_43
    move-object v0, v1

    .line 909
    goto :goto_5

    .line 888
    :cond_45
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7
.end method

.method private isNetworkError(Ljava/lang/Throwable;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 851
    if-nez p1, :cond_5

    .line 881
    :cond_4
    :goto_4
    return v0

    :cond_5
    move v2, v0

    .line 854
    :goto_6
    const/16 v3, 0xc

    if-ge v2, v3, :cond_4

    .line 855
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 856
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 858
    const-string v5, "UnknownHostException"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    const-string v5, "SocketTimeoutException"

    .line 859
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    const-string v5, "ConnectException"

    .line 860
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    const-string v5, "NoRouteToHostException"

    .line 861
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    const-string v5, "PortUnreachableException"

    .line 862
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    :cond_3e
    move v0, v1

    .line 863
    goto :goto_4

    .line 866
    :cond_40
    if-eqz v4, :cond_70

    .line 867
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 868
    const-string v4, "network"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6e

    const-string v4, "connection"

    .line 869
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6e

    const-string v4, "timeout"

    .line 870
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6e

    const-string v4, "unreachable"

    .line 871
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6e

    const-string v4, "no address"

    .line 872
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_70

    :cond_6e
    move v0, v1

    .line 873
    goto :goto_4

    .line 877
    :cond_70
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 878
    if-eqz p1, :cond_4

    .line 854
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .prologue
    .line 646
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_22

    .line 647
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1f

    .line 648
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    .line 649
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPositionUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 651
    :cond_1f
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    .line 653
    :goto_21
    return-wide v0

    :cond_22
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    goto :goto_21
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 658
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_21

    .line 659
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v2, :cond_18

    .line 660
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v2

    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    .line 662
    :cond_18
    iget-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_20

    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    .line 664
    :cond_20
    :goto_20
    return-wide v0

    :cond_21
    iget-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_20

    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    goto :goto_20
.end method

.method public getErrorListener()Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    return-object v0
.end method

.method public getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object v0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x0

    new-array v0, v0, [Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_d

    .line 726
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object v0

    .line 727
    iget v0, v0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    .line 729
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getVideoSarDen()I
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_d

    .line 717
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object v0

    .line 718
    iget v0, v0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    .line 720
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mLooping:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 770
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_b

    .line 670
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->isPlaying()Z

    move-result v0

    .line 672
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 593
    const-string v0, "ExoPlayerImpl"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_10

    .line 595
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->pause()V

    .line 597
    :cond_10
    return-void
.end method

.method public prepareAsync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 570
    const-string v0, "ExoPlayerImpl"

    const-string v1, "prepareAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 572
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 573
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferMonitorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 574
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 612
    const-string v0, "ExoPlayerImpl"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 614
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferMonitorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 615
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->testErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 616
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 617
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->networkErrorRetryCount:I

    .line 618
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_32

    .line 619
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 622
    :cond_32
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 626
    const-string v0, "ExoPlayerImpl"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_15

    .line 628
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 629
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->clearMediaItems()V

    .line 631
    :cond_15
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 632
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferMonitorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 633
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 637
    const-string v0, "ExoPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_23

    .line 639
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 640
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    .line 642
    :cond_23
    return-void
.end method

.method public setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    if-eqz v0, :cond_f

    .line 927
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;->getVolumeBalanceAudioProcessor()Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;

    move-result-object v0

    .line 928
    if-eqz v0, :cond_f

    .line 929
    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->setLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    .line 932
    :cond_f
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    .prologue
    .line 775
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
    .line 515
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Ljava/lang/String;)V

    .line 516
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

    .line 520
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

    .line 521
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 523
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    const-string v1, "Bilibili Freedoooooom/MarkII"

    .line 524
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 525
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 526
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v1

    .line 528
    if-eqz p3, :cond_5c

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 529
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

    .line 531
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 530
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    goto :goto_40

    .line 536
    :cond_5c
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 537
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v0

    .line 539
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 540
    return-void
.end method

.method public setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 2

    .prologue
    .line 553
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setDataSource(MediaSource)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 555
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 556
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
    .line 544
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setDataSource(FileDescriptor) - unsupported via ExoPlayer, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
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
    .line 507
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

    .line 508
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 509
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    .line 510
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 511
    return-void
.end method

.method public setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .locals 2

    .prologue
    .line 549
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setDataSource(IMediaDataSource) - unsupported via ExoPlayer, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-void
.end method

.method public setDataSourceWithSeek(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .locals 4

    .prologue
    .line 559
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

    .line 560
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 561
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V

    .line 562
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 693
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

    .line 694
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 695
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    .line 696
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_26

    .line 697
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 699
    :cond_26
    return-void
.end method

.method public setErrorListener(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;)V
    .locals 3

    .prologue
    .line 93
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    .line 94
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

    .line 95
    return-void

    .line 94
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method

.method public setKeepInBackground(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 780
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 785
    return-void
.end method

.method public setLooping(Z)V
    .locals 2

    .prologue
    .line 789
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mLooping:Z

    .line 790
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_e

    .line 791
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_f

    const/4 v0, 0x2

    :goto_b
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setRepeatMode(I)V

    .line 794
    :cond_e
    return-void

    .line 791
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 838
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 813
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 818
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 823
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 808
    return-void
.end method

.method public setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 828
    return-void
.end method

.method public setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 843
    return-void
.end method

.method public setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .prologue
    .line 832
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 833
    return-void
.end method

.method public setPlayWhenReadyOnPrepare(Z)V
    .locals 0

    .prologue
    .line 565
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playWhenReadyOnPrepare:Z

    .line 566
    return-void
.end method

.method public setPlayerErrorListener(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;)V
    .locals 3

    .prologue
    .line 846
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->errorListener:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$PlayerErrorListener;

    .line 847
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

    .line 848
    return-void

    .line 847
    :cond_1f
    const-string v0, "null"

    goto :goto_13
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    .prologue
    .line 798
    return-void
.end method

.method public setSpeed(F)V
    .locals 3

    .prologue
    .line 677
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

    .line 678
    iput p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->currentSpeed:F

    .line 679
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_23

    .line 680
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlaybackSpeed(F)V

    .line 682
    :cond_23
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    .prologue
    .line 703
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

    .line 704
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    .line 705
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 706
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3a

    .line 707
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setSurface: calling exoPlayer.setVideoSurface()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 712
    :goto_39
    return-void

    .line 710
    :cond_3a
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setSurface: exoPlayer is null, caching surface for later"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public setVolume(FF)V
    .locals 3

    .prologue
    .line 686
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_e

    .line 687
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    add-float v1, p1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVolume(F)V

    .line 689
    :cond_e
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 803
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
    .line 578
    const-string v0, "ExoPlayerImpl"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_10

    .line 580
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->play()V

    .line 589
    :cond_10
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 601
    const-string v0, "ExoPlayerImpl"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_10

    .line 603
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 605
    :cond_10
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 606
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->bufferMonitorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 607
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->testErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 608
    return-void
.end method
