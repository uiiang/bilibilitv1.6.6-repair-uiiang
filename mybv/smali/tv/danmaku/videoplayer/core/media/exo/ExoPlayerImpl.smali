.class public Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer;


# static fields
.field private static final KEY_AUDIO_BALANCE_LEVEL:Ljava/lang/String; = "audio_balance_level"

.field private static final POSITION_CACHE_VALIDITY_MS:J = 0x1f4L

.field private static final PREFS_NAME:Ljava/lang/String; = "bili_preference"

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private appContext:Landroid/content/Context;

.field private volatile cachedCurrentPosition:J

.field private volatile cachedDuration:J

.field private currentSpeed:F

.field private customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

.field private exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final lastPositionUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLooping:Z

.field private mainHandler:Landroid/os/Handler;

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

.field private seekOnPrepare:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->currentSpeed:F

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->seekOnPrepare:J

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mLooping:Z

    .line 60
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    .line 61
    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPositionUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playWhenReadyOnPrepare:Z

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->appContext:Landroid/content/Context;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$1;

    invoke-direct {v0, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$1;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    .line 92
    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$102(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    return-wide p1
.end method

.method static synthetic access$1100(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$1200(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    return-object v0
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

.method static synthetic access$500(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->seekOnPrepare:J

    return-wide v0
.end method

.method static synthetic access$502(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;J)J
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->seekOnPrepare:J

    return-wide p1
.end method

.method static synthetic access$600(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$900(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method private applySavedAudioBalanceLevel()V
    .locals 4

    .prologue
    .line 647
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    if-nez v0, :cond_5

    .line 657
    :cond_4
    :goto_4
    return-void

    .line 649
    :cond_5
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;->getVolumeBalanceAudioProcessor()Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_4

    .line 652
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->appContext:Landroid/content/Context;

    const-string v2, "bili_preference"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 653
    const-string v2, "audio_balance_level"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-static {v1}, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;->fromPrefValue(Ljava/lang/String;)Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    move-result-object v1

    .line 655
    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->setLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    .line 656
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
    .line 95
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_60

    .line 96
    const-string v0, "ExoPlayerImpl"

    const-string v1, "ensurePlayer: creating new ExoPlayer instance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 102
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-boolean v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playWhenReadyOnPrepare:Z

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 104
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->applySavedAudioBalanceLevel()V

    .line 106
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    if-eqz v0, :cond_61

    .line 107
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

    .line 108
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 114
    :cond_56
    :goto_56
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;

    invoke-direct {v1, p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl$2;-><init>(Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 320
    :cond_60
    return-void

    .line 109
    :cond_61
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_56

    .line 110
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

    .line 111
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    goto :goto_56
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .prologue
    .line 447
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_22

    .line 448
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1f

    .line 449
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    .line 450
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->lastPositionUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 452
    :cond_1f
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    .line 454
    :goto_21
    return-wide v0

    :cond_22
    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    goto :goto_21
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 459
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_21

    .line 460
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v2, :cond_18

    .line 461
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v2

    iput-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    .line 463
    :cond_18
    iget-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_20

    iget-wide v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedDuration:J

    .line 465
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

.method public getExoPlayer()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object v0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    new-array v0, v0, [Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_d

    .line 527
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object v0

    .line 528
    iget v0, v0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    .line 530
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getVideoSarDen()I
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_d

    .line 518
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object v0

    .line 519
    iget v0, v0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    .line 521
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mLooping:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 571
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_b

    .line 471
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->isPlaying()Z

    move-result v0

    .line 473
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
    .line 401
    const-string v0, "ExoPlayerImpl"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_10

    .line 403
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->pause()V

    .line 405
    :cond_10
    return-void
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 386
    const-string v0, "ExoPlayerImpl"

    const-string v1, "prepareAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 388
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 389
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 418
    const-string v0, "ExoPlayerImpl"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1a

    .line 421
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 424
    :cond_1a
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 428
    const-string v0, "ExoPlayerImpl"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_15

    .line 430
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 431
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->clearMediaItems()V

    .line 433
    :cond_15
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 434
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
    .line 438
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

    .line 439
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_23

    .line 440
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 441
    iput-wide p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->cachedCurrentPosition:J

    .line 443
    :cond_23
    return-void
.end method

.method public setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    if-eqz v0, :cond_f

    .line 661
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->customRenderersFactory:Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;

    invoke-virtual {v0}, Ltv/danmaku/videoplayer/core/media/exo/CustomRenderersFactory;->getVolumeBalanceAudioProcessor()Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_f

    .line 663
    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/media/exo/VolumeBalanceAudioProcessor;->setLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    .line 666
    :cond_f
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    .prologue
    .line 576
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
    .line 332
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Ljava/lang/String;)V

    .line 333
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

    .line 337
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

    .line 338
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 340
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    const-string v1, "Bilibili Freedoooooom/MarkII"

    .line 341
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 343
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v1

    .line 345
    if-eqz p3, :cond_5c

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 346
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

    .line 348
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 347
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    goto :goto_40

    .line 353
    :cond_5c
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 354
    invoke-static {p2}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v0

    .line 356
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 357
    return-void
.end method

.method public setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 2

    .prologue
    .line 370
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setDataSource(MediaSource)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 372
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 373
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
    .line 361
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setDataSource(FileDescriptor) - unsupported via ExoPlayer, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
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
    .line 324
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

    .line 325
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->ensurePlayer()V

    .line 326
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    .line 327
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 328
    return-void
.end method

.method public setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .locals 2

    .prologue
    .line 366
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setDataSource(IMediaDataSource) - unsupported via ExoPlayer, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method public setDataSourceWithSeek(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .locals 0

    .prologue
    .line 376
    iput-wide p2, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->seekOnPrepare:J

    .line 377
    invoke-virtual {p0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 378
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 494
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

    .line 495
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    .line 497
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_26

    .line 498
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 500
    :cond_26
    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 581
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    return-void
.end method

.method public setLooping(Z)V
    .locals 2

    .prologue
    .line 590
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mLooping:Z

    .line 591
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_e

    .line 592
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_f

    const/4 v0, 0x2

    :goto_b
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setRepeatMode(I)V

    .line 595
    :cond_e
    return-void

    .line 592
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 639
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 614
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 619
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 624
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 609
    return-void
.end method

.method public setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 629
    return-void
.end method

.method public setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 644
    return-void
.end method

.method public setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->onVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 634
    return-void
.end method

.method public setPlayWhenReadyOnPrepare(Z)V
    .locals 0

    .prologue
    .line 381
    iput-boolean p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->playWhenReadyOnPrepare:Z

    .line 382
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public setSpeed(F)V
    .locals 3

    .prologue
    .line 478
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

    .line 479
    iput p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->currentSpeed:F

    .line 480
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_23

    .line 481
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlaybackSpeed(F)V

    .line 483
    :cond_23
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    .prologue
    .line 504
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

    .line 505
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurface:Landroid/view/Surface;

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->pendingSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 507
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3a

    .line 508
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setSurface: calling exoPlayer.setVideoSurface()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 513
    :goto_39
    return-void

    .line 511
    :cond_3a
    const-string v0, "ExoPlayerImpl"

    const-string v1, "setSurface: exoPlayer is null, caching surface for later"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public setVolume(FF)V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_e

    .line 488
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    add-float v1, p1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVolume(F)V

    .line 490
    :cond_e
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 604
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
    .line 393
    const-string v0, "ExoPlayerImpl"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_10

    .line 395
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->play()V

    .line 397
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
    .line 409
    const-string v0, "ExoPlayerImpl"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_10

    .line 411
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 413
    :cond_10
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->positionUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method
