.class public Lcom/google/android/exoplayer2/SimpleExoPlayer;
.super Lcom/google/android/exoplayer2/BasePlayer;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer;
.implements Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private final player:Lcom/google/android/exoplayer2/ExoPlayerImpl;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;ZLcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderersFactory"    # Lcom/google/android/exoplayer2/RenderersFactory;
    .param p3, "trackSelector"    # Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .param p4, "mediaSourceFactory"    # Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .param p5, "loadControl"    # Lcom/google/android/exoplayer2/LoadControl;
    .param p6, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .param p7, "analyticsCollector"    # Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .param p8, "useLazyPreparation"    # Z
    .param p9, "clock"    # Lcom/google/android/exoplayer2/util/Clock;
    .param p10, "applicationLooper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
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

    .line 413
    move/from16 v0, p8

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setUseLazyPreparation(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v1

    .line 414
    move-object/from16 v2, p9

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v1

    .line 415
    move-object/from16 v3, p10

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v1

    .line 404
    move-object v4, p0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;)V

    .line 416
    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 428
    invoke-direct {p0}, Lcom/google/android/exoplayer2/BasePlayer;-><init>()V

    .line 429
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 431
    :try_start_a
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-direct {v1, p1, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Lcom/google/android/exoplayer2/Player;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_16

    .line 433
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 434
    nop

    .line 435
    return-void

    .line 433
    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 434
    throw v0
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    .line 422
    # getter for: Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;)V

    .line 423
    return-void
.end method

.method private blockUntilConstructorFinished()V
    .registers 2

    .line 1332
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    .line 1333
    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 677
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 679
    return-void
.end method

.method public addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 586
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 587
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V

    .line 588
    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 779
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 780
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 781
    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 894
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 895
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaItems(ILjava/util/List;)V

    .line 896
    return-void
.end method

.method public addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 906
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 907
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V

    .line 908
    return-void
.end method

.method public addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 3
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 900
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 901
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 902
    return-void
.end method

.method public addMediaSources(ILjava/util/List;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 918
    .local p2, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 919
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    .line 920
    return-void
.end method

.method public addMediaSources(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 912
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 913
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(Ljava/util/List;)V

    .line 914
    return-void
.end method

.method public clearAuxEffectInfo()V
    .registers 2

    .line 628
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 629
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearAuxEffectInfo()V

    .line 630
    return-void
.end method

.method public clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    .line 747
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 748
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V

    .line 749
    return-void
.end method

.method public clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 735
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 736
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V

    .line 737
    return-void
.end method

.method public clearVideoSurface()V
    .registers 2

    .line 532
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface()V

    .line 534
    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 538
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 539
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface(Landroid/view/Surface;)V

    .line 540
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 556
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 558
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .registers 3
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 568
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 569
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 570
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .registers 3
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 580
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 581
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoTextureView(Landroid/view/TextureView;)V

    .line 582
    return-void
.end method

.method public createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3
    .param p1, "target"    # Lcom/google/android/exoplayer2/PlayerMessage$Target;

    .line 1074
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1075
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    return-object v0
.end method

.method public decreaseDeviceVolume()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1292
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1293
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->decreaseDeviceVolume()V

    .line 1294
    return-void
.end method

.method public decreaseDeviceVolume(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 1298
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1299
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->decreaseDeviceVolume(I)V

    .line 1300
    return-void
.end method

.method public experimentalIsSleepingForOffload()Z
    .registers 2

    .line 445
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 446
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->experimentalIsSleepingForOffload()Z

    move-result v0

    return v0
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .registers 3
    .param p1, "offloadSchedulingEnabled"    # Z

    .line 439
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->experimentalSetOffloadSchedulingEnabled(Z)V

    .line 441
    return-void
.end method

.method public getAnalyticsCollector()Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .registers 2

    .line 671
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 672
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAnalyticsCollector()Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .registers 2

    .line 767
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 768
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .registers 2

    .line 604
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getAudioComponent()Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 457
    return-object p0
.end method

.method public getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .registers 2

    .line 723
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 724
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object v0

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2

    .line 709
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 710
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAudioFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .line 616
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 617
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;
    .registers 2

    .line 810
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 811
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPosition()J
    .registers 3

    .line 1190
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1191
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClock()Lcom/google/android/exoplayer2/util/Clock;
    .registers 2

    .line 773
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 774
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getClock()Lcom/google/android/exoplayer2/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public getContentBufferedPosition()J
    .registers 3

    .line 1226
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1227
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .registers 3

    .line 1220
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1221
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .registers 2

    .line 1208
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1209
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .registers 2

    .line 1214
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1215
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentCues()Lcom/google/android/exoplayer2/text/CueGroup;
    .registers 2

    .line 753
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentCues()Lcom/google/android/exoplayer2/text/CueGroup;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .registers 2

    .line 1172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1173
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPeriodIndex()I
    .registers 2

    .line 1166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1167
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 1184
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1185
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    .line 1160
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1161
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1108
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1109
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1118
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1119
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;
    .registers 2

    .line 1124
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1125
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceComponent()Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 490
    return-object p0
.end method

.method public getDeviceInfo()Lcom/google/android/exoplayer2/DeviceInfo;
    .registers 2

    .line 1238
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1239
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getDeviceInfo()Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVolume()I
    .registers 2

    .line 1244
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1245
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getDeviceVolume()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .registers 3

    .line 1178
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1179
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .registers 3

    .line 1026
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1027
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getMaxSeekToPreviousPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2

    .line 1142
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1143
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPauseAtEndOfMediaItems()Z
    .registers 2

    .line 966
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 967
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPauseAtEndOfMediaItems()Z

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .registers 2

    .line 954
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 955
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .line 761
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 762
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 2

    .line 1038
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1039
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .registers 2

    .line 791
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .registers 2

    .line 797
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 798
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackSuppressionReason()I

    move-result v0

    return v0
.end method

.method public getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 2

    .line 804
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 805
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;
    .registers 2

    .line 60
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2

    .line 1148
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1149
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getRenderer(I)Lcom/google/android/exoplayer2/Renderer;
    .registers 3
    .param p1, "index"    # I

    .line 1092
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1093
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRenderer(I)Lcom/google/android/exoplayer2/Renderer;

    move-result-object v0

    return-object v0
.end method

.method public getRendererCount()I
    .registers 2

    .line 1080
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1081
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRendererCount()I

    move-result v0

    return v0
.end method

.method public getRendererType(I)I
    .registers 3
    .param p1, "index"    # I

    .line 1086
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1087
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRendererType(I)I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .line 972
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 973
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSeekBackIncrement()J
    .registers 3

    .line 1014
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1015
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSeekBackIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .registers 3

    .line 1020
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1021
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSeekForwardIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekParameters()Lcom/google/android/exoplayer2/SeekParameters;
    .registers 2

    .line 1050
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1051
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSeekParameters()Lcom/google/android/exoplayer2/SeekParameters;

    move-result-object v0

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .registers 2

    .line 990
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 991
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getSkipSilenceEnabled()Z
    .registers 2

    .line 653
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 654
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSkipSilenceEnabled()Z

    move-result v0

    return v0
.end method

.method public getSurfaceSize()Lcom/google/android/exoplayer2/util/Size;
    .registers 2

    .line 526
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSurfaceSize()Lcom/google/android/exoplayer2/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getTextComponent()Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 479
    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .registers 3

    .line 1196
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1197
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .registers 2

    .line 1130
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1131
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .registers 2

    .line 1098
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1099
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object v0

    return-object v0
.end method

.method public getVideoChangeFrameRateStrategy()I
    .registers 2

    .line 514
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getVideoChangeFrameRateStrategy()I

    move-result v0

    return v0
.end method

.method public getVideoComponent()Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    return-object p0
.end method

.method public getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .registers 2

    .line 716
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 717
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2

    .line 702
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 703
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getVideoScalingMode()I
    .registers 2

    .line 501
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getVideoScalingMode()I

    move-result v0

    return v0
.end method

.method public getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;
    .registers 2

    .line 520
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .registers 2

    .line 647
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getVolume()F

    move-result v0

    return v0
.end method

.method public increaseDeviceVolume()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1277
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->increaseDeviceVolume()V

    .line 1278
    return-void
.end method

.method public increaseDeviceVolume(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 1282
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1283
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->increaseDeviceVolume(I)V

    .line 1284
    return-void
.end method

.method public isDeviceMuted()Z
    .registers 2

    .line 1250
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1251
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isDeviceMuted()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .line 996
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 997
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPlayingAd()Z
    .registers 2

    .line 1202
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1203
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public isTunnelingEnabled()Z
    .registers 2

    .line 1320
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1321
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isTunnelingEnabled()Z

    move-result v0

    return v0
.end method

.method public moveMediaItems(III)V
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newIndex"    # I

    .line 924
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 925
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->moveMediaItems(III)V

    .line 926
    return-void
.end method

.method public prepare()V
    .registers 2

    .line 816
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 817
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare()V

    .line 818
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 3
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 827
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 828
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 829
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .registers 5
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetState"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 839
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 840
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 841
    return-void
.end method

.method public release()V
    .registers 2

    .line 1068
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1069
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->release()V

    .line 1070
    return-void
.end method

.method public removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 683
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 684
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 685
    return-void
.end method

.method public removeAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 592
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 593
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V

    .line 594
    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 785
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 786
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 787
    return-void
.end method

.method public removeMediaItems(II)V
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 936
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 937
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaItems(II)V

    .line 938
    return-void
.end method

.method public replaceMediaItems(IILjava/util/List;)V
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 930
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 931
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->replaceMediaItems(IILjava/util/List;)V

    .line 932
    return-void
.end method

.method public seekTo(IJIZ)V
    .registers 12
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J
    .param p4, "seekCommand"    # I
    .param p5, "isRepeatingCurrentItem"    # Z

    .line 1008
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1009
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekTo(IJIZ)V

    .line 1010
    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V
    .registers 4
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z

    .line 598
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 599
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 600
    return-void
.end method

.method public setAudioSessionId(I)V
    .registers 3
    .param p1, "audioSessionId"    # I

    .line 610
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 611
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setAudioSessionId(I)V

    .line 612
    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
    .registers 3
    .param p1, "auxEffectInfo"    # Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 622
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 623
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    .line 624
    return-void
.end method

.method public setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    .line 741
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 742
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V

    .line 743
    return-void
.end method

.method public setDeviceMuted(Z)V
    .registers 3
    .param p1, "muted"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1309
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setDeviceMuted(Z)V

    .line 1310
    return-void
.end method

.method public setDeviceMuted(ZI)V
    .registers 4
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 1314
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1315
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setDeviceMuted(ZI)V

    .line 1316
    return-void
.end method

.method public setDeviceVolume(I)V
    .registers 3
    .param p1, "volume"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1260
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1261
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setDeviceVolume(I)V

    .line 1262
    return-void
.end method

.method public setDeviceVolume(II)V
    .registers 4
    .param p1, "volume"    # I
    .param p2, "flags"    # I

    .line 1266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1267
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setDeviceVolume(II)V

    .line 1268
    return-void
.end method

.method public setForegroundMode(Z)V
    .registers 3
    .param p1, "foregroundMode"    # Z

    .line 1056
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1057
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setForegroundMode(Z)V

    .line 1058
    return-void
.end method

.method public setHandleAudioBecomingNoisy(Z)V
    .registers 3
    .param p1, "handleAudioBecomingNoisy"    # Z

    .line 689
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 690
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setHandleAudioBecomingNoisy(Z)V

    .line 691
    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .registers 6
    .param p2, "startIndex"    # I
    .param p3, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 851
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 852
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaItems(Ljava/util/List;IJ)V

    .line 853
    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .registers 4
    .param p2, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 845
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 846
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaItems(Ljava/util/List;Z)V

    .line 847
    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 3
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 876
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 877
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 878
    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .registers 5
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "startPositionMs"    # J

    .line 888
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 889
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V

    .line 890
    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .registers 4
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z

    .line 882
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 883
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 884
    return-void
.end method

.method public setMediaSources(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 857
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 858
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;)V

    .line 859
    return-void
.end method

.method public setMediaSources(Ljava/util/List;IJ)V
    .registers 6
    .param p2, "startMediaItemIndex"    # I
    .param p3, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation

    .line 870
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    .line 872
    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .registers 4
    .param p2, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 863
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 864
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    .line 865
    return-void
.end method

.method public setPauseAtEndOfMediaItems(Z)V
    .registers 3
    .param p1, "pauseAtEndOfMediaItems"    # Z

    .line 960
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 961
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPauseAtEndOfMediaItems(Z)V

    .line 962
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .registers 3
    .param p1, "playWhenReady"    # Z

    .line 948
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 949
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlayWhenReady(Z)V

    .line 950
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1032
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1033
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 1034
    return-void
.end method

.method public setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 3
    .param p1, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1154
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1155
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V

    .line 1156
    return-void
.end method

.method public setPreferredAudioDevice(Landroid/media/AudioDeviceInfo;)V
    .registers 3
    .param p1, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 635
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 636
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPreferredAudioDevice(Landroid/media/AudioDeviceInfo;)V

    .line 637
    return-void
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .registers 3
    .param p1, "priorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 695
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 696
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    .line 697
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3
    .param p1, "repeatMode"    # I

    .line 978
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 979
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setRepeatMode(I)V

    .line 980
    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .registers 3
    .param p1, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 1044
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1045
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    .line 1046
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .registers 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 984
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 985
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setShuffleModeEnabled(Z)V

    .line 986
    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 3
    .param p1, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 942
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 943
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 944
    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .registers 3
    .param p1, "skipSilenceEnabled"    # Z

    .line 665
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 666
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setSkipSilenceEnabled(Z)V

    .line 667
    return-void
.end method

.method setThrowsWhenUsingWrongThread(Z)V
    .registers 3
    .param p1, "throwsWhenUsingWrongThread"    # Z

    .line 1325
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1326
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setThrowsWhenUsingWrongThread(Z)V

    .line 1327
    return-void
.end method

.method public setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 3
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 1136
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1137
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 1138
    return-void
.end method

.method public setVideoChangeFrameRateStrategy(I)V
    .registers 3
    .param p1, "videoChangeFrameRateStrategy"    # I

    .line 508
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoChangeFrameRateStrategy(I)V

    .line 510
    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/Effect;",
            ">;)V"
        }
    .end annotation

    .line 659
    .local p1, "videoEffects":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/util/Effect;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 660
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoEffects(Ljava/util/List;)V

    .line 661
    return-void
.end method

.method public setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 729
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 730
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V

    .line 731
    return-void
.end method

.method public setVideoScalingMode(I)V
    .registers 3
    .param p1, "videoScalingMode"    # I

    .line 495
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 496
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoScalingMode(I)V

    .line 497
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 544
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoSurface(Landroid/view/Surface;)V

    .line 546
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 550
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 552
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .registers 3
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 562
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 563
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 564
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .registers 3
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 574
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 576
    return-void
.end method

.method public setVolume(F)V
    .registers 3
    .param p1, "volume"    # F

    .line 641
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 642
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVolume(F)V

    .line 643
    return-void
.end method

.method public setWakeMode(I)V
    .registers 3
    .param p1, "wakeMode"    # I

    .line 1232
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1233
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setWakeMode(I)V

    .line 1234
    return-void
.end method

.method public stop()V
    .registers 2

    .line 1062
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1063
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stop()V

    .line 1064
    return-void
.end method
