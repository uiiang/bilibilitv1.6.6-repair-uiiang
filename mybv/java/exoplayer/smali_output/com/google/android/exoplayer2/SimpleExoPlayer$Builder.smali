.class public final Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderersFactory"    # Lcom/google/android/exoplayer2/RenderersFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderersFactory"    # Lcom/google/android/exoplayer2/RenderersFactory;
    .param p3, "extractorsFactory"    # Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    new-instance v1, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p1, p3}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderersFactory"    # Lcom/google/android/exoplayer2/RenderersFactory;
    .param p3, "trackSelector"    # Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .param p4, "mediaSourceFactory"    # Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .param p5, "loadControl"    # Lcom/google/android/exoplayer2/LoadControl;
    .param p6, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .param p7, "analyticsCollector"    # Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v8, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V

    move-object v0, p0

    iput-object v8, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractorsFactory"    # Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    new-instance v1, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 4
    .param p1, "timeoutMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->experimentalSetForegroundModeTimeoutMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 149
    return-object p0
.end method

.method public setAnalyticsCollector(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "analyticsCollector"    # Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setAnalyticsCollector(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 209
    return-object p0
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 4
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 231
    return-object p0
.end method

.method public setBandwidthMeter(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setBandwidthMeter(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 189
    return-object p0
.end method

.method public setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "clock"    # Lcom/google/android/exoplayer2/util/Clock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 374
    return-object p0
.end method

.method public setDetachSurfaceTimeoutMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 4
    .param p1, "detachSurfaceTimeoutMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setDetachSurfaceTimeoutMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 342
    return-object p0
.end method

.method public setHandleAudioBecomingNoisy(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "handleAudioBecomingNoisy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setHandleAudioBecomingNoisy(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 251
    return-object p0
.end method

.method public setLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "livePlaybackSpeedControl"    # Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 363
    return-object p0
.end method

.method public setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "loadControl"    # Lcom/google/android/exoplayer2/LoadControl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 179
    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 199
    return-object p0
.end method

.method public setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "mediaSourceFactory"    # Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 169
    return-object p0
.end method

.method public setPauseAtEndOfMediaItems(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "pauseAtEndOfMediaItems"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setPauseAtEndOfMediaItems(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 352
    return-object p0
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "priorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 220
    return-object p0
.end method

.method public setReleaseTimeoutMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 4
    .param p1, "releaseTimeoutMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setReleaseTimeoutMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 332
    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 4
    .param p1, "seekBackIncrementMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setSeekBackIncrementMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 312
    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 4
    .param p1, "seekForwardIncrementMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setSeekForwardIncrementMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 322
    return-object p0
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 302
    return-object p0
.end method

.method public setSkipSilenceEnabled(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "skipSilenceEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setSkipSilenceEnabled(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 261
    return-object p0
.end method

.method public setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "trackSelector"    # Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 159
    return-object p0
.end method

.method public setUseLazyPreparation(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "useLazyPreparation"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setUseLazyPreparation(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 292
    return-object p0
.end method

.method public setVideoChangeFrameRateStrategy(I)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "videoChangeFrameRateStrategy"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setVideoChangeFrameRateStrategy(I)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 282
    return-object p0
.end method

.method public setVideoScalingMode(I)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "videoScalingMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setVideoScalingMode(I)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 271
    return-object p0
.end method

.method public setWakeMode(I)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .registers 3
    .param p1, "wakeMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setWakeMode(I)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 241
    return-object p0
.end method
