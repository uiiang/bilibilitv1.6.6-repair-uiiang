.class final Lcom/google/android/exoplayer2/ExoPlayerImpl;
.super Lcom/google/android/exoplayer2/BasePlayer;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer;
.implements Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;,
        Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;,
        Lcom/google/android/exoplayer2/ExoPlayerImpl$Api31;,
        Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field private final applicationContext:Landroid/content/Context;

.field private final applicationLooper:Landroid/os/Looper;

.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private final audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

.field private audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private final audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

.field private audioFormat:Lcom/google/android/exoplayer2/Format;

.field private final audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:I

.field private availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

.field private final constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;

.field private final detachSurfaceTimeoutMs:J

.field private deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

.field final emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field private foregroundMode:Z

.field private final frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

.field private hasNotifiedFullWrongThreadWarning:Z

.field private final internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

.field private isPriorityTaskManagerRegistered:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private final listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ListenerSet<",
            "Lcom/google/android/exoplayer2/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private maskingPeriodIndex:I

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private final mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

.field private final mediaSourceHolderSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private ownedSurface:Landroid/view/Surface;

.field private pauseAtEndOfMediaItems:Z

.field private pendingDiscontinuity:Z

.field private pendingDiscontinuityReason:I

.field private pendingOperationAcks:I

.field private pendingPlayWhenReadyChangeReason:I

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field final permanentAvailableCommands:Lcom/google/android/exoplayer2/Player$Commands;

.field private playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

.field private final playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private final playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field private playerReleased:Z

.field private playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private repeatMode:I

.field private final seekBackIncrementMs:J

.field private final seekForwardIncrementMs:J

.field private seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

.field private shuffleModeEnabled:Z

.field private shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

.field private skipSilenceEnabled:Z

.field private sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

.field private staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private final streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceHolderSurfaceIsVideoOutput:Z

.field private surfaceSize:Lcom/google/android/exoplayer2/util/Size;

.field private textureView:Landroid/view/TextureView;

.field private throwsWhenUsingWrongThread:Z

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final useLazyPreparation:Z

.field private videoChangeFrameRateStrategy:I

.field private videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private videoFormat:Lcom/google/android/exoplayer2/Format;

.field private videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private videoOutput:Ljava/lang/Object;

.field private videoScalingMode:I

.field private videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field private volume:F

.field private final wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

.field private final wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

.field private final wrappingPlayer:Lcom/google/android/exoplayer2/Player;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 128
    const-string v0, "goog.exo.exoplayer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Lcom/google/android/exoplayer2/Player;)V
    .registers 42
    .param p1, "builder"    # Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .param p2, "wrappingPlayer"    # Lcom/google/android/exoplayer2/Player;

    .line 229
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/BasePlayer;-><init>()V

    .line 230
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 232
    :try_start_e
    const-string v3, "ExoPlayerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Init "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 235
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ExoPlayerLib/2.19.1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v3, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    .line 242
    iget-object v4, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v4, v5}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 243
    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 244
    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 245
    iget v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->videoScalingMode:I

    iput v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoScalingMode:I

    .line 246
    iget v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    iput v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 247
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->skipSilenceEnabled:Z

    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    .line 248
    iget-wide v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-wide v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    .line 249
    new-instance v15, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    const/4 v14, 0x0

    invoke-direct {v15, v1, v14}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/ExoPlayerImpl$1;)V

    iput-object v15, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    .line 250
    new-instance v13, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {v13, v14}, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$1;)V

    iput-object v13, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    .line 251
    new-instance v5, Landroid/os/Handler;

    iget-object v6, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v6, v5

    .line 252
    .local v6, "eventHandler":Landroid/os/Handler;
    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    .line 255
    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/google/android/exoplayer2/RenderersFactory;

    .line 256
    move-object v8, v6

    move-object v9, v15

    move-object v10, v15

    move-object v11, v15

    move-object v12, v15

    invoke-interface/range {v7 .. v12}, Lcom/google/android/exoplayer2/RenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 262
    array-length v5, v7

    const/4 v12, 0x0

    if-lez v5, :cond_a9

    const/4 v5, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v5, 0x0

    :goto_aa
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 263
    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iput-object v10, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 264
    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 265
    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iput-object v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 266
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->useLazyPreparation:Z

    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->useLazyPreparation:Z

    .line 267
    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    .line 268
    move-object/from16 v16, v15

    iget-wide v14, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekBackIncrementMs:J

    iput-wide v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekBackIncrementMs:J

    .line 269
    iget-wide v14, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekForwardIncrementMs:J

    iput-wide v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekForwardIncrementMs:J

    .line 270
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    .line 271
    iget-object v15, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    iput-object v15, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    .line 272
    iget-object v14, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    iput-object v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 273
    if-nez p2, :cond_ef

    move-object v5, v1

    goto :goto_f1

    :cond_ef
    move-object/from16 v5, p2

    :goto_f1
    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wrappingPlayer:Lcom/google/android/exoplayer2/Player;

    .line 274
    new-instance v8, Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v11, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v11, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    invoke-direct {v8, v15, v14, v11}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 279
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 280
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 281
    new-instance v8, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v8, v12}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 282
    new-instance v8, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    array-length v11, v7

    new-array v11, v11, [Lcom/google/android/exoplayer2/RendererConfiguration;

    array-length v12, v7

    new-array v12, v12, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-object/from16 v20, v6

    .end local v6    # "eventHandler":Landroid/os/Handler;
    .local v20, "eventHandler":Landroid/os/Handler;
    sget-object v6, Lcom/google/android/exoplayer2/Tracks;->EMPTY:Lcom/google/android/exoplayer2/Tracks;

    move-object/from16 v21, v9

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v6, v9}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/Tracks;Ljava/lang/Object;)V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 288
    new-instance v6, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 289
    new-instance v6, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    const/16 v9, 0x13

    new-array v9, v9, [I

    fill-array-data v9, :array_342

    .line 291
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll([I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    .line 312
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v9

    .line 311
    const/16 v11, 0x1d

    invoke-virtual {v6, v11, v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    iget-boolean v9, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 313
    const/16 v11, 0x17

    invoke-virtual {v6, v11, v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    iget-boolean v9, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 314
    const/16 v11, 0x19

    invoke-virtual {v6, v11, v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    iget-boolean v9, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 315
    const/16 v11, 0x21

    invoke-virtual {v6, v11, v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    iget-boolean v9, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 316
    const/16 v11, 0x1a

    invoke-virtual {v6, v11, v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    iget-boolean v9, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 317
    const/16 v11, 0x22

    invoke-virtual {v6, v11, v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    .line 318
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->permanentAvailableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 319
    new-instance v9, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    .line 321
    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    .line 322
    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->add(I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    .line 323
    const/16 v11, 0xa

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->add(I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    .line 324
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 325
    const/4 v9, 0x0

    invoke-interface {v14, v15, v9}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 326
    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    iput-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 329
    invoke-static {v8}, Lcom/google/android/exoplayer2/PlaybackInfo;->createDummy(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v9

    iput-object v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 330
    invoke-interface {v4, v5, v15}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->setPlayer(Lcom/google/android/exoplayer2/Player;Landroid/os/Looper;)V

    .line 332
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v9, 0x1f

    if-ge v5, v9, :cond_1b6

    .line 333
    new-instance v5, Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>()V

    move-object/from16 v22, v5

    goto :goto_1be

    .line 334
    :cond_1b6
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    invoke-static {v3, v1, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl$Api31;->registerMediaMetricsListener(Landroid/content/Context;Lcom/google/android/exoplayer2/ExoPlayerImpl;Z)Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v5

    move-object/from16 v22, v5

    :goto_1be
    nop

    .line 336
    .local v22, "playerId":Lcom/google/android/exoplayer2/analytics/PlayerId;
    new-instance v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 341
    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v23, v5

    check-cast v23, Lcom/google/android/exoplayer2/LoadControl;

    iget v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    iget-boolean v12, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    move-object/from16 v24, v14

    iget-object v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    move-object/from16 v25, v15

    iget-object v15, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    iget-wide v14, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->releaseTimeoutMs:J

    move-object/from16 v28, v0

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    move-object/from16 v29, v3

    iget-object v3, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->playbackLooper:Landroid/os/Looper;
    :try_end_1e5
    .catchall {:try_start_e .. :try_end_1e5} :catchall_33b

    move/from16 v30, v5

    move-object v5, v9

    move-object/from16 v32, v6

    move-object/from16 v31, v20

    .end local v20    # "eventHandler":Landroid/os/Handler;
    .local v31, "eventHandler":Landroid/os/Handler;
    move-object v6, v7

    move-object v7, v10

    move-object v2, v9

    move-object/from16 v33, v21

    const/16 v17, 0x0

    move-object/from16 v9, v23

    move-object/from16 v34, v10

    move-object/from16 v10, v33

    move/from16 v11, v30

    move-object/from16 v35, v13

    move-object v13, v4

    move-object/from16 v20, v24

    move-wide/from16 v37, v14

    move-object/from16 v15, v17

    move-wide/from16 v17, v37

    move-object/from16 v14, v26

    move-object/from16 v36, v16

    move-object/from16 v15, v27

    move-wide/from16 v16, v17

    move/from16 v18, v0

    move-object/from16 v19, v25

    move-object/from16 v21, v32

    move-object/from16 v23, v3

    :try_start_216
    invoke-direct/range {v5 .. v23}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IZLcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/SeekParameters;Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Lcom/google/android/exoplayer2/analytics/PlayerId;Landroid/os/Looper;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 356
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->volume:F

    .line 357
    const/4 v0, 0x0

    iput v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    .line 358
    sget-object v3, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 359
    sget-object v3, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 360
    sget-object v3, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 361
    const/4 v3, -0x1

    iput v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 362
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v3, v5, :cond_23e

    .line 363
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->initializeKeepSessionIdAudioTrack(I)I

    move-result v3

    iput v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    goto :goto_244

    .line 365
    :cond_23e
    invoke-static/range {v29 .. v29}, Lcom/google/android/exoplayer2/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    .line 367
    :goto_244
    sget-object v3, Lcom/google/android/exoplayer2/text/CueGroup;->EMPTY_TIME_ZERO:Lcom/google/android/exoplayer2/text/CueGroup;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;

    .line 368
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    .line 370
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 371
    new-instance v5, Landroid/os/Handler;

    move-object/from16 v6, v25

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v6, v33

    invoke-interface {v6, v5, v4}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 372
    move-object/from16 v4, v36

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    :try_end_25f
    .catchall {:try_start_216 .. :try_end_25f} :catchall_337

    .line 373
    move-object v5, v2

    move-object/from16 v2, p1

    :try_start_262
    iget-wide v6, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_26f

    .line 374
    iget-wide v6, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->experimentalSetForegroundModeTimeoutMs(J)V

    .line 377
    :cond_26f
    new-instance v5, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    iget-object v6, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    move-object/from16 v7, v31

    .end local v31    # "eventHandler":Landroid/os/Handler;
    .local v7, "eventHandler":Landroid/os/Handler;
    invoke-direct {v5, v6, v7, v4}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    .line 379
    iget-boolean v6, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 380
    new-instance v5, Lcom/google/android/exoplayer2/AudioFocusManager;

    iget-object v6, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v5, v6, v7, v4}, Lcom/google/android/exoplayer2/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    .line 381
    iget-boolean v6, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->handleAudioFocus:Z

    if-eqz v6, :cond_28f

    iget-object v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    goto :goto_290

    :cond_28f
    const/4 v14, 0x0

    :goto_290
    invoke-virtual {v5, v14}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 382
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    if-eqz v5, :cond_2ac

    .line 383
    new-instance v5, Lcom/google/android/exoplayer2/StreamVolumeManager;

    iget-object v6, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v5, v6, v7, v4}, Lcom/google/android/exoplayer2/StreamVolumeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 385
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v4, v4, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setStreamType(I)V

    goto :goto_2af

    .line 387
    :cond_2ac
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 389
    :goto_2af
    new-instance v4, Lcom/google/android/exoplayer2/WakeLockManager;

    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/WakeLockManager;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    .line 390
    iget v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->wakeMode:I

    if-eqz v5, :cond_2be

    const/4 v12, 0x1

    goto :goto_2bf

    :cond_2be
    const/4 v12, 0x0

    :goto_2bf
    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 391
    new-instance v4, Lcom/google/android/exoplayer2/WifiLockManager;

    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/WifiLockManager;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    .line 392
    iget v5, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->wakeMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2d2

    const/4 v12, 0x1

    goto :goto_2d3

    :cond_2d2
    const/4 v12, 0x0

    :goto_2d3
    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    .line 393
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    .line 394
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 395
    sget-object v0, Lcom/google/android/exoplayer2/util/Size;->UNKNOWN:Lcom/google/android/exoplayer2/util/Size;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 397
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-object/from16 v5, v34

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 398
    iget v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 399
    iget v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v6, v4, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 400
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 401
    iget v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoScalingMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x4

    invoke-direct {v1, v6, v4, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 402
    iget v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 403
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 402
    const/4 v4, 0x5

    invoke-direct {v1, v6, v4, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 404
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v4, 0x9

    invoke-direct {v1, v3, v4, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 405
    const/4 v0, 0x7

    move-object/from16 v3, v35

    invoke-direct {v1, v6, v0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 407
    const/4 v0, 0x6

    const/16 v4, 0x8

    invoke-direct {v1, v0, v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V
    :try_end_332
    .catchall {:try_start_262 .. :try_end_332} :catchall_33b

    .line 410
    .end local v7    # "eventHandler":Landroid/os/Handler;
    .end local v22    # "playerId":Lcom/google/android/exoplayer2/analytics/PlayerId;
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 411
    nop

    .line 412
    return-void

    .line 410
    :catchall_337
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_33c

    :catchall_33b
    move-exception v0

    :goto_33c
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 411
    throw v0

    :array_342
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method static synthetic access$1002(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/Format;

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 120
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/exoplayer2/ExoPlayerImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Z

    .line 120
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/text/CueGroup;)Lcom/google/android/exoplayer2/text/CueGroup;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/text/CueGroup;

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 120
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->buildUpdatedMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 120
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 120
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .line 120
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 120
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendVolumeToRenderers()V

    return-void
.end method

.method static synthetic access$2100(ZI)I
    .registers 3
    .param p0, "x0"    # Z
    .param p1, "x1"    # I

    .line 120
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/ExoPlayerImpl;ZII)V
    .registers 4
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/StreamVolumeManager;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 120
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/DeviceInfo;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/DeviceInfo;)Lcom/google/android/exoplayer2/DeviceInfo;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/DeviceInfo;

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 120
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateWakeAndWifiLock()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/Format;

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/video/VideoSize;)Lcom/google/android/exoplayer2/video/VideoSize;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method private addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;
    .registers 11
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation

    .line 2342
    .local p2, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2343
    .local v0, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 2344
    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 2345
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/MediaSource;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->useLazyPreparation:Z

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 2346
    .local v2, "holder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2347
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    add-int v4, v1, p1

    new-instance v5, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v6, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    iget-object v7, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 2348
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline;)V

    .line 2347
    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2343
    .end local v2    # "holder":Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2350
    .end local v1    # "i":I
    :cond_33
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 2352
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 2351
    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 2353
    return-object v0
.end method

.method private addMediaSourcesInternal(Lcom/google/android/exoplayer2/PlaybackInfo;ILjava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .registers 13
    .param p1, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/PlaybackInfo;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)",
            "Lcom/google/android/exoplayer2/PlaybackInfo;"
        }
    .end annotation

    .line 2358
    .local p3, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    iget-object v6, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2359
    .local v6, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2360
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 2361
    .local v7, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v8

    .line 2362
    .local v8, "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    nop

    .line 2369
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)I

    move-result v3

    .line 2370
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPositionInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v4

    .line 2366
    move-object v0, p0

    move-object v1, v6

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPeriodPositionUsAfterTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2363
    invoke-direct {p0, p1, v8, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 2371
    .local v0, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-virtual {v1, p2, v7, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 2372
    return-object v0
.end method

.method private buildUpdatedMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 5

    .line 2608
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 2609
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2610
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object v1

    .line 2612
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 2614
    .local v1, "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->populate(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v2

    return-object v2
.end method

.method private static createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;
    .registers 4
    .param p0, "streamVolumeManager"    # Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 2858
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;-><init>(I)V

    .line 2859
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMinVolume()I

    move-result v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->setMinVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    move-result-object v0

    .line 2860
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMaxVolume()I

    move-result v1

    :cond_18
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->setMaxVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    move-result-object v0

    .line 2861
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->build()Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    .line 2858
    return-object v0
.end method

.method private createMaskingTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 4

    .line 2412
    new-instance v0, Lcom/google/android/exoplayer2/PlaylistTimeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-object v0
.end method

.method private createMediaSources(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation

    .line 1896
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1897
    .local v0, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1898
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/MediaItem;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1897
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1900
    .end local v1    # "i":I
    :cond_1e
    return-object v0
.end method

.method private createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 11
    .param p1, "target"    # Lcom/google/android/exoplayer2/PlayerMessage$Target;

    .line 2590
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)I

    move-result v0

    .line 2591
    .local v0, "currentWindowIndex":I
    new-instance v8, Lcom/google/android/exoplayer2/PlayerMessage;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2595
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_15

    :cond_14
    move v5, v0

    :goto_15
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clock:Lcom/google/android/exoplayer2/util/Clock;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 2597
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/PlayerMessage;-><init>(Lcom/google/android/exoplayer2/PlayerMessage$Sender;Lcom/google/android/exoplayer2/PlayerMessage$Target;Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;)V

    .line 2591
    return-object v8
.end method

.method private evaluateMediaItemTransitionReason(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;ZIZZ)Landroid/util/Pair;
    .registers 24
    .param p1, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p2, "oldPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p3, "positionDiscontinuity"    # Z
    .param p4, "positionDiscontinuityReason"    # I
    .param p5, "timelineChanged"    # Z
    .param p6, "repeatCurrentMediaItem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/PlaybackInfo;",
            "Lcom/google/android/exoplayer2/PlaybackInfo;",
            "ZIZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2224
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    iget-object v4, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2225
    .local v4, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget-object v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2226
    .local v5, "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    const/4 v7, -0x1

    .line 2227
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2226
    const/4 v8, 0x0

    .line 2227
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 2226
    if-eqz v6, :cond_28

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 2227
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 2228
    :cond_28
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v10

    const/4 v11, 0x1

    if-eq v6, v10, :cond_42

    .line 2229
    new-instance v6, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 2232
    :cond_42
    iget-object v6, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2233
    invoke-virtual {v4, v6, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v6

    iget v6, v6, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2234
    .local v6, "oldWindowIndex":I
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v4, v6, v10}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2235
    .local v10, "oldWindowUid":Ljava/lang/Object;
    iget-object v12, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v12, v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2236
    invoke-virtual {v5, v12, v13}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v12

    iget v12, v12, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2237
    .local v12, "newWindowIndex":I
    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v5, v12, v13}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2238
    .local v13, "newWindowUid":Ljava/lang/Object;
    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_93

    .line 2240
    if-eqz p3, :cond_76

    if-nez v3, :cond_76

    .line 2242
    const/4 v7, 0x1

    .local v7, "transitionReason":I
    goto :goto_7f

    .line 2243
    .end local v7    # "transitionReason":I
    :cond_76
    if-eqz p3, :cond_7c

    if-ne v3, v11, :cond_7c

    .line 2245
    const/4 v7, 0x2

    .restart local v7    # "transitionReason":I
    goto :goto_7f

    .line 2246
    .end local v7    # "transitionReason":I
    :cond_7c
    if-eqz p5, :cond_8d

    .line 2247
    const/4 v7, 0x3

    .line 2252
    .restart local v7    # "transitionReason":I
    :goto_7f
    new-instance v8, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v8, v9, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8

    .line 2250
    .end local v7    # "transitionReason":I
    :cond_8d
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 2256
    :cond_93
    if-eqz p3, :cond_b5

    if-nez v3, :cond_b5

    iget-object v14, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v14, v14, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move/from16 v16, v12

    .end local v12    # "newWindowIndex":I
    .local v16, "newWindowIndex":I
    iget-wide v11, v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v8, v14, v11

    if-gez v8, :cond_b7

    .line 2260
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 2256
    .end local v16    # "newWindowIndex":I
    .restart local v12    # "newWindowIndex":I
    :cond_b5
    move/from16 v16, v12

    .line 2262
    .end local v12    # "newWindowIndex":I
    .restart local v16    # "newWindowIndex":I
    :cond_b7
    if-eqz p3, :cond_cd

    const/4 v8, 0x1

    if-ne v3, v8, :cond_cd

    if-eqz p6, :cond_cd

    .line 2265
    new-instance v7, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 2268
    :cond_cd
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method private getContentPositionInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J
    .registers 7
    .param p1, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1866
    iget-object v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1867
    iget-object v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1868
    iget-wide v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_2f

    .line 1872
    iget-object v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1871
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    .line 1872
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    goto :goto_3c

    .line 1873
    :cond_2f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1868
    :goto_3c
    return-wide v0

    .line 1875
    :cond_3d
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J
    .registers 6
    .param p1, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1879
    iget-object v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1880
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    .line 1884
    :cond_f
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v0, :cond_18

    .line 1885
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->getEstimatedPositionUs()J

    move-result-wide v0

    goto :goto_1a

    .line 1886
    :cond_18
    iget-wide v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    :goto_1a
    nop

    .line 1888
    .local v0, "positionUs":J
    iget-object v2, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1889
    return-wide v0

    .line 1891
    :cond_24
    iget-object v2, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private getCurrentWindowIndexInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)I
    .registers 5
    .param p1, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1858
    iget-object v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1859
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    return v0

    .line 1861
    :cond_b
    iget-object v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    return v0
.end method

.method private getPeriodPositionUsAfterTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .registers 20
    .param p1, "oldTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p3, "currentWindowIndexInternal"    # I
    .param p4, "contentPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Lcom/google/android/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2528
    move-object v0, p0

    move-object/from16 v8, p2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, -0x1

    if-nez v1, :cond_67

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_67

    .line 2536
    :cond_16
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2538
    invoke-static/range {p4 .. p5}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v6

    .line 2537
    move-object v2, p1

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v12

    .line 2539
    .local v12, "oldPeriodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v13, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2540
    .local v13, "periodUid":Ljava/lang/Object;
    invoke-virtual {v8, v13}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v11, :cond_34

    .line 2542
    return-object v12

    .line 2546
    :cond_34
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 2547
    move-object v5, v13

    move-object v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object v1

    .line 2549
    .local v1, "nextPeriodUid":Ljava/lang/Object;
    if-eqz v1, :cond_62

    .line 2551
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v8, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2552
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 2555
    invoke-virtual {v8, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v3

    .line 2552
    invoke-direct {p0, v8, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 2558
    :cond_62
    invoke-direct {p0, v8, v11, v9, v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 2529
    .end local v1    # "nextPeriodUid":Ljava/lang/Object;
    .end local v12    # "oldPeriodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v13    # "periodUid":Ljava/lang/Object;
    :cond_67
    :goto_67
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_75

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 v1, 0x1

    goto :goto_76

    :cond_75
    const/4 v1, 0x0

    .line 2530
    .local v1, "isCleared":Z
    :goto_76
    nop

    .line 2532
    if-eqz v1, :cond_7a

    goto :goto_7c

    :cond_7a
    move/from16 v11, p3

    .line 2533
    :goto_7c
    if-eqz v1, :cond_7f

    goto :goto_81

    :cond_7f
    move-wide/from16 v9, p4

    .line 2530
    :goto_81
    invoke-direct {p0, v8, v11, v9, v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static getPlayWhenReadyChangeReason(ZI)I
    .registers 3
    .param p0, "playWhenReady"    # Z
    .param p1, "playerCommand"    # I

    .line 2865
    const/4 v0, 0x1

    if-eqz p0, :cond_7

    if-eq p1, v0, :cond_7

    .line 2866
    const/4 v0, 0x2

    goto :goto_8

    .line 2867
    :cond_7
    nop

    .line 2865
    :goto_8
    return v0
.end method

.method private getPositionInfo(J)Lcom/google/android/exoplayer2/Player$PositionInfo;
    .registers 24
    .param p1, "discontinuityWindowStartPositionUs"    # J

    .line 2180
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2181
    .local v1, "newWindowUid":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 2182
    .local v2, "newPeriodUid":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v15

    .line 2183
    .local v15, "newMediaItemIndex":I
    const/4 v3, -0x1

    .line 2184
    .local v3, "newPeriodIndex":I
    const/4 v4, 0x0

    .line 2185
    .local v4, "newMediaItem":Lcom/google/android/exoplayer2/MediaItem;
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_40

    .line 2186
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2187
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v2, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2188
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 2189
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v5, v15, v6}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v5

    iget-object v1, v5, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2190
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v4, v5, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move/from16 v16, v3

    move-object/from16 v17, v4

    goto :goto_44

    .line 2185
    :cond_40
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 2192
    .end local v3    # "newPeriodIndex":I
    .end local v4    # "newMediaItem":Lcom/google/android/exoplayer2/MediaItem;
    .local v16, "newPeriodIndex":I
    .local v17, "newMediaItem":Lcom/google/android/exoplayer2/MediaItem;
    :goto_44
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v18

    .line 2193
    .local v18, "positionMs":J
    new-instance v20, Lcom/google/android/exoplayer2/Player$PositionInfo;

    .line 2200
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 2201
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v3

    move-wide v11, v3

    goto :goto_62

    .line 2202
    :cond_60
    move-wide/from16 v11, v18

    :goto_62
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v13, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v14, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move-object/from16 v3, v20

    move-object v4, v1

    move v5, v15

    move-object/from16 v6, v17

    move-object v7, v2

    move/from16 v8, v16

    move-wide/from16 v9, v18

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V

    .line 2193
    return-object v20
.end method

.method private getPreviousPositionInfo(ILcom/google/android/exoplayer2/PlaybackInfo;I)Lcom/google/android/exoplayer2/Player$PositionInfo;
    .registers 29
    .param p1, "positionDiscontinuityReason"    # I
    .param p2, "oldPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p3, "oldMaskingMediaItemIndex"    # I

    .line 2126
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 2127
    .local v2, "oldWindowUid":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 2128
    .local v3, "oldPeriodUid":Ljava/lang/Object;
    move/from16 v4, p3

    .line 2129
    .local v4, "oldMediaItemIndex":I
    const/4 v5, -0x1

    .line 2130
    .local v5, "oldPeriodIndex":I
    const/4 v6, 0x0

    .line 2131
    .local v6, "oldMediaItem":Lcom/google/android/exoplayer2/MediaItem;
    new-instance v7, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 2132
    .local v7, "oldPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_36

    .line 2133
    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2134
    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v8, v3, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2135
    iget v4, v7, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2136
    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v5

    .line 2137
    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v8, v4, v9}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v8

    iget-object v2, v8, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2138
    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v6, v8, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 2142
    :cond_36
    if-nez p1, :cond_73

    .line 2143
    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v8

    if-eqz v8, :cond_55

    .line 2145
    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v8, v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v9, v9, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 2146
    invoke-virtual {v7, v8, v9}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v8

    .line 2149
    .local v8, "oldPositionUs":J
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v10

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .local v10, "oldContentPositionUs":J
    goto :goto_90

    .line 2150
    .end local v8    # "oldPositionUs":J
    .end local v10    # "oldContentPositionUs":J
    :cond_55
    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v8, v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_68

    .line 2153
    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-static {v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v8

    .line 2154
    .restart local v8    # "oldPositionUs":J
    move-wide v10, v8

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .restart local v10    # "oldContentPositionUs":J
    goto :goto_90

    .line 2157
    .end local v8    # "oldPositionUs":J
    .end local v10    # "oldContentPositionUs":J
    :cond_68
    iget-wide v8, v7, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    iget-wide v10, v7, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    add-long/2addr v8, v10

    .line 2158
    .restart local v8    # "oldPositionUs":J
    move-wide v10, v8

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .restart local v10    # "oldContentPositionUs":J
    goto :goto_90

    .line 2160
    .end local v8    # "oldPositionUs":J
    .end local v10    # "oldContentPositionUs":J
    :cond_73
    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v8

    if-eqz v8, :cond_86

    .line 2161
    iget-wide v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 2162
    .restart local v8    # "oldPositionUs":J
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v10

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .restart local v10    # "oldContentPositionUs":J
    goto :goto_90

    .line 2164
    .end local v8    # "oldPositionUs":J
    .end local v10    # "oldContentPositionUs":J
    :cond_86
    iget-wide v8, v7, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    iget-wide v10, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    add-long/2addr v8, v10

    .line 2165
    .restart local v8    # "oldPositionUs":J
    move-wide v10, v8

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .line 2167
    .end local v8    # "oldPositionUs":J
    .local v20, "oldPositionUs":J
    .local v22, "oldContentPositionUs":J
    :goto_90
    new-instance v24, Lcom/google/android/exoplayer2/Player$PositionInfo;

    .line 2173
    invoke-static/range {v20 .. v21}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v14

    .line 2174
    invoke-static/range {v22 .. v23}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v16

    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v13, v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v12, v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move-object/from16 v8, v24

    move-object v9, v2

    move v10, v4

    move-object v11, v6

    move/from16 v19, v12

    move-object v12, v3

    move/from16 v18, v13

    move v13, v5

    invoke-direct/range {v8 .. v19}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V

    .line 2167
    return-object v24
.end method

.method private static getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J
    .registers 8
    .param p0, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2208
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 2209
    .local v0, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 2210
    .local v1, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2211
    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_2b

    .line 2212
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    invoke-virtual {v2, v3, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v2

    goto :goto_32

    .line 2213
    :cond_2b
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    add-long/2addr v2, v4

    .line 2211
    :goto_32
    return-wide v2
.end method

.method private handlePlaybackInfo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .registers 18
    .param p1, "playbackInfoUpdate"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 1904
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    iget v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    sub-int/2addr v0, v1

    iput v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 1905
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 1906
    iget v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    iput v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingDiscontinuityReason:I

    .line 1907
    iput-boolean v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingDiscontinuity:Z

    .line 1909
    :cond_16
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPlayWhenReadyChangeReason:Z

    if-eqz v0, :cond_1e

    .line 1910
    iget v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playWhenReadyChangeReason:I

    iput v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingPlayWhenReadyChangeReason:I

    .line 1912
    :cond_1e
    iget v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    if-nez v0, :cond_e0

    .line 1913
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1914
    .local v12, "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_40

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1917
    const/4 v0, -0x1

    iput v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 1918
    const-wide/16 v3, 0x0

    iput-wide v3, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 1919
    iput v2, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 1921
    :cond_40
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 1922
    move-object v0, v12

    check-cast v0, Lcom/google/android/exoplayer2/PlaylistTimeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlaylistTimeline;->getChildTimelines()Ljava/util/List;

    move-result-object v0

    .line 1923
    .local v0, "timelines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Timeline;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_5b

    const/4 v3, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v3, 0x0

    :goto_5c
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1924
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7a

    .line 1925
    iget-object v4, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/Timeline;

    # setter for: Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lcom/google/android/exoplayer2/Timeline;
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->access$202(Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/Timeline;

    .line 1924
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 1928
    .end local v0    # "timelines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Timeline;>;"
    .end local v3    # "i":I
    :cond_7a
    const/4 v0, 0x0

    .line 1929
    .local v0, "positionDiscontinuity":Z
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 1930
    .local v3, "discontinuityWindowStartPositionUs":J
    iget-boolean v5, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingDiscontinuity:Z

    if-eqz v5, :cond_cc

    .line 1931
    iget-object v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v6, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1932
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a0

    iget-object v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v7, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_9f

    goto :goto_a0

    :cond_9f
    const/4 v1, 0x0

    :cond_a0
    :goto_a0
    move v0, v1

    .line 1935
    if-eqz v0, :cond_c9

    .line 1937
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c1

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_b4

    goto :goto_c1

    .line 1939
    :cond_b4
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    invoke-direct {v10, v12, v1, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v5

    goto :goto_c5

    .line 1938
    :cond_c1
    :goto_c1
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 1939
    :goto_c5
    move-wide v3, v5

    move v13, v0

    move-wide v14, v3

    goto :goto_ce

    .line 1935
    :cond_c9
    move v13, v0

    move-wide v14, v3

    goto :goto_ce

    .line 1930
    :cond_cc
    move v13, v0

    move-wide v14, v3

    .line 1945
    .end local v0    # "positionDiscontinuity":Z
    .end local v3    # "discontinuityWindowStartPositionUs":J
    .local v13, "positionDiscontinuity":Z
    .local v14, "discontinuityWindowStartPositionUs":J
    :goto_ce
    iput-boolean v2, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingDiscontinuity:Z

    .line 1946
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const/4 v2, 0x1

    iget v3, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingPlayWhenReadyChangeReason:I

    iget v5, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingDiscontinuityReason:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v4, v13

    move-wide v6, v14

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V

    .line 1956
    .end local v12    # "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v13    # "positionDiscontinuity":Z
    .end local v14    # "discontinuityWindowStartPositionUs":J
    :cond_e0
    return-void
.end method

.method private initializeKeepSessionIdAudioTrack(I)I
    .registers 15
    .param p1, "audioSessionId"    # I

    .line 2822
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_12

    .line 2823
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v0, p1, :cond_12

    .line 2824
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 2825
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 2827
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_2a

    .line 2828
    const/16 v0, 0xfa0

    .line 2829
    .local v0, "sampleRate":I
    const/4 v9, 0x4

    .line 2830
    .local v9, "channelConfig":I
    const/4 v10, 0x2

    .line 2831
    .local v10, "encoding":I
    const/4 v11, 0x2

    .line 2832
    .local v11, "bufferSize":I
    new-instance v12, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v7, 0x0

    move-object v1, v12

    move v3, v0

    move v4, v9

    move v5, v10

    move v6, v11

    move v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v12, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 2842
    .end local v0    # "sampleRate":I
    .end local v9    # "channelConfig":I
    .end local v10    # "encoding":I
    .end local v11    # "bufferSize":I
    :cond_2a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$maybeNotifySurfaceSizeChanged$27(IILcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2715
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic lambda$release$5(Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 1029
    new-instance v0, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    .line 1030
    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 1029
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$setAudioAttributes$8(Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "newAudioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 1439
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$setAudioSessionId$9(ILcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "finalAudioSessionId"    # I
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 1480
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onAudioSessionIdChanged(I)V

    return-void
.end method

.method static synthetic lambda$setRepeatMode$3(ILcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "repeatMode"    # I
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 825
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$setShuffleModeEnabled$4(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "shuffleModeEnabled"    # Z
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 845
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$setSkipSilenceEnabled$11(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "newSkipSilenceEnabled"    # Z
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 1543
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$setTrackSelectionParameters$6(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 1224
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$setVolume$10(FLcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "finalVolume"    # F
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 1518
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$12(Lcom/google/android/exoplayer2/PlaybackInfo;ILcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "newPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "timelineChangeReason"    # I
    .param p2, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2024
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-interface {p2, v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$13(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "positionDiscontinuityReason"    # I
    .param p1, "previousPositionInfo"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p2, "positionInfo"    # Lcom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2034
    invoke-interface {p3, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(I)V

    .line 2035
    invoke-interface {p3, p1, p2, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    .line 2037
    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$14(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "finalMediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p1, "mediaItemTransitionReason"    # I
    .param p2, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2043
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$15(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2048
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$16(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2052
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$17(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2059
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->tracks:Lcom/google/android/exoplayer2/Tracks;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$18(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 2
    .param p0, "finalMediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2065
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$19(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2071
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onLoadingChanged(Z)V

    .line 2072
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onIsLoadingChanged(Z)V

    .line 2073
    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$20(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "newPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2079
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    iget v1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$21(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2085
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$22(Lcom/google/android/exoplayer2/PlaybackInfo;ILcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p0, "newPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "playWhenReadyChangeReason"    # I
    .param p2, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2091
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    invoke-interface {p2, v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$23(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2099
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$24(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlaybackInfo;->isPlaying()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$25(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p0, "newPlaybackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2110
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method private maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .registers 35
    .param p1, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/PlaybackInfo;",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/exoplayer2/PlaybackInfo;"
        }
    .end annotation

    .line 2417
    .local p3, "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_12

    if-eqz v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v3, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v3, 0x1

    :goto_13
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 2419
    move-object/from16 v3, p1

    iget-object v5, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2420
    .local v5, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPositionInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v6

    .line 2422
    .local v6, "oldContentPositionMs":J
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 2424
    .end local p1    # "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .local v3, "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_53

    .line 2426
    invoke-static {}, Lcom/google/android/exoplayer2/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v4

    .line 2427
    .local v4, "dummyMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-wide v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v21

    .line 2428
    .local v21, "positionUs":J
    const-wide/16 v16, 0x0

    sget-object v18, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 2437
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v20

    .line 2429
    move-object v8, v3

    move-object v9, v4

    move-wide/from16 v10, v21

    move-wide/from16 v12, v21

    move-object/from16 v19, v14

    move-wide/from16 v14, v21

    invoke-virtual/range {v8 .. v20}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 2438
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 2439
    iget-wide v8, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iput-wide v8, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 2440
    return-object v3

    .line 2443
    .end local v4    # "dummyMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v21    # "positionUs":J
    :cond_53
    iget-object v8, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v14, v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2444
    .local v14, "oldPeriodUid":Ljava/lang/Object;
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v14, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v4

    move/from16 v21, v8

    .line 2446
    .local v21, "playingPeriodChanged":Z
    if-eqz v21, :cond_70

    new-instance v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    goto :goto_72

    :cond_70
    iget-object v8, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :goto_72
    move-object v15, v8

    .line 2447
    .local v15, "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2448
    .local v12, "newContentPositionUs":J
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v8

    .line 2449
    .local v8, "oldContentPositionUs":J
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_93

    .line 2450
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2451
    invoke-virtual {v5, v14, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v10

    sub-long/2addr v8, v10

    move-wide/from16 v22, v8

    goto :goto_95

    .line 2449
    :cond_93
    move-wide/from16 v22, v8

    .line 2454
    .end local v8    # "oldContentPositionUs":J
    .local v22, "oldContentPositionUs":J
    :goto_95
    if-nez v21, :cond_17f

    cmp-long v8, v12, v22

    if-gez v8, :cond_a6

    move-object/from16 v24, v5

    move-wide/from16 v25, v6

    move-wide v6, v12

    move-object/from16 p1, v14

    move-object/from16 v27, v15

    goto/16 :goto_188

    .line 2469
    :cond_a6
    cmp-long v8, v12, v22

    if-nez v8, :cond_12e

    .line 2471
    iget-object v4, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2472
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    .line 2473
    .local v4, "loadingPeriodIndex":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_d3

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2474
    invoke-virtual {v1, v4, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v8

    iget v8, v8, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v9, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2475
    invoke-virtual {v1, v9, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v9

    iget v9, v9, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-eq v8, v9, :cond_ca

    goto :goto_d3

    :cond_ca
    move-object/from16 v24, v5

    move-wide/from16 v25, v6

    move-wide/from16 v29, v12

    move-object v1, v14

    move-object v2, v15

    goto :goto_126

    .line 2478
    :cond_d3
    :goto_d3
    iget-object v8, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v8, v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2480
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v8

    if-eqz v8, :cond_eb

    .line 2481
    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v9, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v10, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v8

    goto :goto_ef

    .line 2482
    :cond_eb
    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    :goto_ef
    move-wide v10, v8

    .line 2483
    .local v10, "maskedBufferedPositionUs":J
    iget-wide v8, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iget-wide v1, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move/from16 p1, v4

    move-object/from16 v24, v5

    .end local v4    # "loadingPeriodIndex":I
    .end local v5    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .local v24, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .local p1, "loadingPeriodIndex":I
    iget-wide v4, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    move-wide/from16 v25, v6

    .end local v6    # "oldContentPositionMs":J
    .local v25, "oldContentPositionMs":J
    iget-wide v6, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    sub-long v16, v10, v6

    iget-object v6, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v7, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v0, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2484
    move-wide/from16 v18, v8

    move-object v8, v3

    move-object v9, v15

    move-wide/from16 v27, v10

    .end local v10    # "maskedBufferedPositionUs":J
    .local v27, "maskedBufferedPositionUs":J
    move-wide/from16 v10, v18

    move-wide/from16 v29, v12

    .end local v12    # "newContentPositionUs":J
    .local v29, "newContentPositionUs":J
    move-wide v12, v1

    move-object v1, v14

    move-object v2, v15

    .end local v14    # "oldPeriodUid":Ljava/lang/Object;
    .end local v15    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local v1, "oldPeriodUid":Ljava/lang/Object;
    .local v2, "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move-wide v14, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v0

    invoke-virtual/range {v8 .. v20}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 2493
    .end local v3    # "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .local v0, "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 2494
    .end local v0    # "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .restart local v3    # "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    move-wide/from16 v4, v27

    .end local v27    # "maskedBufferedPositionUs":J
    .local v4, "maskedBufferedPositionUs":J
    iput-wide v4, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 2496
    .end local v4    # "maskedBufferedPositionUs":J
    .end local p1    # "loadingPeriodIndex":I
    :goto_126
    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move-wide/from16 v6, v29

    goto/16 :goto_1c5

    .line 2497
    .end local v1    # "oldPeriodUid":Ljava/lang/Object;
    .end local v2    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v24    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v25    # "oldContentPositionMs":J
    .end local v29    # "newContentPositionUs":J
    .restart local v5    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v6    # "oldContentPositionMs":J
    .restart local v12    # "newContentPositionUs":J
    .restart local v14    # "oldPeriodUid":Ljava/lang/Object;
    .restart local v15    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :cond_12e
    move-object/from16 v24, v5

    move-wide/from16 v25, v6

    move-wide/from16 v29, v12

    move-object v1, v14

    move-object v2, v15

    .end local v5    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v6    # "oldContentPositionMs":J
    .end local v12    # "newContentPositionUs":J
    .end local v14    # "oldPeriodUid":Ljava/lang/Object;
    .end local v15    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .restart local v1    # "oldPeriodUid":Ljava/lang/Object;
    .restart local v2    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .restart local v24    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v25    # "oldContentPositionMs":J
    .restart local v29    # "newContentPositionUs":J
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2499
    iget-wide v4, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v6, v29

    .end local v29    # "newContentPositionUs":J
    .local v6, "newContentPositionUs":J
    sub-long v12, v6, v22

    sub-long/2addr v4, v12

    .line 2500
    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2503
    .local v4, "maskedTotalBufferedDurationUs":J
    iget-wide v8, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 2504
    .local v8, "maskedBufferedPositionUs":J
    iget-object v0, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v10, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 2505
    add-long v8, v6, v4

    move-wide v14, v8

    goto :goto_15c

    .line 2504
    :cond_15b
    move-wide v14, v8

    .line 2507
    .end local v8    # "maskedBufferedPositionUs":J
    .local v14, "maskedBufferedPositionUs":J
    :goto_15c
    iget-object v0, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2508
    move-object v8, v3

    move-object v9, v2

    move-wide v10, v6

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-wide v12, v6

    move-object/from16 p1, v1

    move-object/from16 v27, v2

    move-wide v1, v14

    .end local v2    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v14    # "maskedBufferedPositionUs":J
    .local v1, "maskedBufferedPositionUs":J
    .local v27, "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local p1, "oldPeriodUid":Ljava/lang/Object;
    move-wide v14, v6

    move-wide/from16 v16, v4

    move-object/from16 v18, v0

    invoke-virtual/range {v8 .. v20}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 2517
    iput-wide v1, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-object/from16 v0, p0

    move-object/from16 v2, v27

    goto :goto_1c5

    .line 2454
    .end local v1    # "maskedBufferedPositionUs":J
    .end local v4    # "maskedTotalBufferedDurationUs":J
    .end local v24    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v25    # "oldContentPositionMs":J
    .end local v27    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local p1    # "oldPeriodUid":Ljava/lang/Object;
    .restart local v5    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .local v6, "oldContentPositionMs":J
    .restart local v12    # "newContentPositionUs":J
    .local v14, "oldPeriodUid":Ljava/lang/Object;
    .restart local v15    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :cond_17f
    move-object/from16 v24, v5

    move-wide/from16 v25, v6

    move-wide v6, v12

    move-object/from16 p1, v14

    move-object/from16 v27, v15

    .line 2455
    .end local v5    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v12    # "newContentPositionUs":J
    .end local v14    # "oldPeriodUid":Ljava/lang/Object;
    .end local v15    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local v6, "newContentPositionUs":J
    .restart local v24    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v25    # "oldContentPositionMs":J
    .restart local v27    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .restart local p1    # "oldPeriodUid":Ljava/lang/Object;
    :goto_188
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2457
    const-wide/16 v16, 0x0

    .line 2464
    if-eqz v21, :cond_197

    sget-object v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_199

    :cond_197
    iget-object v0, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_199
    move-object/from16 v18, v0

    .line 2465
    if-eqz v21, :cond_1a2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_1a6

    :cond_1a2
    move-object/from16 v0, p0

    iget-object v1, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    :goto_1a6
    move-object/from16 v19, v1

    .line 2466
    if-eqz v21, :cond_1af

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_1b1

    :cond_1af
    iget-object v1, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    :goto_1b1
    move-object/from16 v20, v1

    .line 2458
    move-object v8, v3

    move-object/from16 v9, v27

    move-wide v10, v6

    move-wide v12, v6

    move-wide v14, v6

    invoke-virtual/range {v8 .. v20}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    .line 2467
    .end local v3    # "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .local v1, "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    move-object/from16 v2, v27

    .end local v27    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .restart local v2    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 2468
    .end local v1    # "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .restart local v3    # "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iput-wide v6, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 2519
    :goto_1c5
    return-object v3
.end method

.method private maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .registers 11
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "windowPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2566
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2568
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 2569
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v0

    if-nez v2, :cond_14

    const-wide/16 v0, 0x0

    goto :goto_15

    :cond_14
    move-wide v0, p3

    :goto_15
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 2570
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 2571
    const/4 v0, 0x0

    return-object v0

    .line 2573
    :cond_1c
    const/4 v0, -0x1

    if-eq p2, v0, :cond_25

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-lt p2, v0, :cond_35

    .line 2576
    :cond_25
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    .line 2577
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide p3

    .line 2579
    :cond_35
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2712
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Size;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Size;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_2e

    .line 2713
    :cond_10
    new-instance v0, Lcom/google/android/exoplayer2/util/Size;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 2714
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;-><init>(II)V

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2716
    new-instance v0, Lcom/google/android/exoplayer2/util/Size;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/util/Size;-><init>(II)V

    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 2719
    :cond_2e
    return-void
.end method

.method private periodPositionUsToWindowPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J
    .registers 7
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "periodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "positionUs"    # J

    .line 2584
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2585
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long/2addr p3, v0

    .line 2586
    return-wide p3
.end method

.method private removeMediaItemsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;II)Lcom/google/android/exoplayer2/PlaybackInfo;
    .registers 20
    .param p1, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .line 2377
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)I

    move-result v10

    .line 2378
    .local v10, "currentIndex":I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPositionInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v11

    .line 2379
    .local v11, "contentPositionMs":J
    iget-object v13, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2380
    .local v13, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    .line 2381
    .local v14, "currentMediaSourceCount":I
    iget v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v15, 0x1

    add-int/2addr v0, v15

    iput v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2382
    invoke-direct {v6, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaSourceHolders(II)V

    .line 2383
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    .line 2384
    .local v4, "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    nop

    .line 2388
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v4

    move v3, v10

    move-object v15, v4

    .end local v4    # "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    .local v15, "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPeriodPositionUsAfterTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2385
    invoke-direct {v6, v7, v15, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 2391
    .local v0, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4d

    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v1, v2, :cond_4d

    if-ge v8, v9, :cond_4d

    if-ne v9, v14, :cond_4d

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2396
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    if-lt v10, v1, :cond_4d

    const/4 v1, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    .line 2397
    .local v1, "transitionsToEnded":Z
    :goto_4e
    if-eqz v1, :cond_54

    .line 2398
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 2400
    :cond_54
    iget-object v2, v6, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v3, v6, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-virtual {v2, v8, v9, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->removeMediaSources(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 2401
    return-object v0
.end method

.method private removeMediaSourceHolders(II)V
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndexExclusive"    # I

    .line 2405
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p1, :cond_c

    .line 2406
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2405
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2408
    .end local v0    # "i":I
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndRemove(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 2409
    return-void
.end method

.method private removeSurfaceCallbacks()V
    .registers 4

    .line 2618
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 2619
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 2620
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 2621
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 2622
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2623
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->removeVideoSurfaceListener(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 2624
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 2626
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_3c

    .line 2627
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    if-eq v0, v2, :cond_35

    .line 2628
    const-string v0, "ExoPlayerImpl"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 2630
    :cond_35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 2632
    :goto_3a
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 2634
    :cond_3c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_47

    .line 2635
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2636
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 2638
    :cond_47
    return-void
.end method

.method private sendRendererMessage(IILjava/lang/Object;)V
    .registers 9
    .param p1, "trackType"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 2804
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    .line 2805
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_1d

    .line 2806
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2804
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2809
    :cond_20
    return-void
.end method

.method private sendVolumeToRenderers()V
    .registers 5

    .line 2722
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->volume:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->getVolumeMultiplier()F

    move-result v1

    mul-float v0, v0, v1

    .line 2723
    .local v0, "scaledVolume":F
    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 2724
    return-void
.end method

.method private setMediaSourcesInternal(Ljava/util/List;IJZ)V
    .registers 29
    .param p2, "startWindowIndex"    # I
    .param p3, "startPositionMs"    # J
    .param p5, "resetToDefaultPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;IJZ)V"
        }
    .end annotation

    .line 2286
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    move-object/from16 v10, p0

    move/from16 v0, p2

    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {v10, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)I

    move-result v11

    .line 2287
    .local v11, "currentWindowIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v12

    .line 2288
    .local v12, "currentPositionMs":J
    iget v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2289
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_26

    .line 2290
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 2291
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2290
    invoke-direct {v10, v3, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaSourceHolders(II)V

    .line 2293
    :cond_26
    nop

    .line 2294
    move-object/from16 v14, p1

    invoke-direct {v10, v3, v14}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 2295
    .local v15, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 2296
    .local v1, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v4

    if-ge v0, v4, :cond_40

    move-wide/from16 v4, p3

    goto :goto_4a

    .line 2297
    :cond_40
    new-instance v2, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    move-wide/from16 v4, p3

    invoke-direct {v2, v1, v0, v4, v5}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v2

    .line 2296
    :cond_48
    move-wide/from16 v4, p3

    .line 2300
    :goto_4a
    const/4 v6, -0x1

    if-eqz p5, :cond_5a

    .line 2301
    iget-boolean v7, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    .line 2302
    .end local p2    # "startWindowIndex":I
    .local v0, "startWindowIndex":I
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    .end local p3    # "startPositionMs":J
    .local v4, "startPositionMs":J
    goto :goto_61

    .line 2303
    .end local v0    # "startWindowIndex":I
    .end local v4    # "startPositionMs":J
    .restart local p2    # "startWindowIndex":I
    .restart local p3    # "startPositionMs":J
    :cond_5a
    if-ne v0, v6, :cond_60

    .line 2304
    move v0, v11

    .line 2305
    .end local p2    # "startWindowIndex":I
    .restart local v0    # "startWindowIndex":I
    move-wide v4, v12

    move-wide v7, v4

    .end local p3    # "startPositionMs":J
    .restart local v4    # "startPositionMs":J
    goto :goto_61

    .line 2303
    .end local v0    # "startWindowIndex":I
    .end local v4    # "startPositionMs":J
    .restart local p2    # "startWindowIndex":I
    .restart local p3    # "startPositionMs":J
    :cond_60
    move-wide v7, v4

    .line 2307
    .end local p2    # "startWindowIndex":I
    .end local p3    # "startPositionMs":J
    .restart local v0    # "startWindowIndex":I
    .local v7, "startPositionMs":J
    :goto_61
    iget-object v4, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2311
    invoke-direct {v10, v1, v0, v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v5

    .line 2308
    invoke-direct {v10, v4, v1, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    .line 2313
    .local v4, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget v5, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 2314
    .local v5, "maskingPlaybackState":I
    if-eq v0, v6, :cond_86

    iget v6, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v6, v2, :cond_86

    .line 2316
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_83

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v6

    if-lt v0, v6, :cond_80

    goto :goto_83

    .line 2320
    :cond_80
    const/4 v5, 0x2

    move v9, v5

    goto :goto_87

    .line 2318
    :cond_83
    :goto_83
    const/4 v5, 0x4

    move v9, v5

    goto :goto_87

    .line 2323
    :cond_86
    move v9, v5

    .end local v5    # "maskingPlaybackState":I
    .local v9, "maskingPlaybackState":I
    :goto_87
    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v6

    .line 2324
    .end local v4    # "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .local v6, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget-object v4, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 2325
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v16

    iget-object v5, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 2324
    move-object/from16 v18, v5

    move-object v5, v15

    move-object v3, v6

    .end local v6    # "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .local v3, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    move v6, v0

    move-wide/from16 v20, v7

    .end local v7    # "startPositionMs":J
    .local v20, "startPositionMs":J
    move-wide/from16 v7, v16

    move/from16 v16, v9

    .end local v9    # "maskingPlaybackState":I
    .local v16, "maskingPlaybackState":I
    move-object/from16 v9, v18

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setMediaSources(Ljava/util/List;IJLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 2326
    iget-object v4, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2327
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bf

    iget-object v4, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2328
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_bf

    const/4 v4, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v4, 0x0

    .line 2329
    .local v4, "positionDiscontinuity":Z
    :goto_c0
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    .line 2335
    invoke-direct {v10, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v7

    const/4 v9, -0x1

    const/16 v17, 0x0

    .line 2329
    move/from16 v18, v0

    .end local v0    # "startWindowIndex":I
    .local v18, "startWindowIndex":I
    move-object/from16 v0, p0

    move-object/from16 v19, v1

    .end local v1    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .local v19, "timeline":Lcom/google/android/exoplayer2/Timeline;
    move-object v1, v3

    move-object/from16 v22, v3

    .end local v3    # "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .local v22, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    move v3, v5

    move v5, v6

    move-wide v6, v7

    move v8, v9

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V

    .line 2338
    return-void
.end method

.method private setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V
    .registers 6
    .param p1, "nonVideoOutputSurfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 2699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 2700
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 2701
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2702
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 2703
    .local v1, "surface":Landroid/view/Surface;
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2704
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 2705
    .local v0, "surfaceSize":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 2706
    .end local v0    # "surfaceSize":Landroid/graphics/Rect;
    goto :goto_2d

    .line 2707
    :cond_2a
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 2709
    :goto_2d
    return-void
.end method

.method private setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V
    .registers 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 2641
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2642
    .local v0, "surface":Landroid/view/Surface;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 2643
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 2644
    return-void
.end method

.method private setVideoOutputInternal(Ljava/lang/Object;)V
    .registers 9
    .param p1, "videoOutput"    # Ljava/lang/Object;

    .line 2649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2650
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/PlayerMessage;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_2c

    aget-object v4, v1, v3

    .line 2651
    .local v4, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_29

    .line 2652
    nop

    .line 2653
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 2654
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 2655
    invoke-virtual {v5, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 2656
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 2652
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2650
    .end local v4    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2659
    :cond_2c
    const/4 v1, 0x0

    .line 2660
    .local v1, "messageDeliveryTimedOut":Z
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-eqz v2, :cond_62

    if-eq v2, p1, :cond_62

    .line 2664
    :try_start_33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2665
    .local v3, "message":Lcom/google/android/exoplayer2/PlayerMessage;
    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/PlayerMessage;->blockUntilDelivered(J)Z
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_48} :catch_4d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_33 .. :try_end_48} :catch_4a

    .line 2666
    nop

    .end local v3    # "message":Lcom/google/android/exoplayer2/PlayerMessage;
    goto :goto_37

    .line 2669
    :catch_4a
    move-exception v2

    .line 2670
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    const/4 v1, 0x1

    goto :goto_56

    .line 2667
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_4d
    move-exception v2

    .line 2668
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 2671
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_55
    nop

    .line 2672
    :goto_56
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-ne v2, v3, :cond_62

    .line 2674
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 2675
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 2678
    :cond_62
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    .line 2679
    if-eqz v1, :cond_75

    .line 2680
    new-instance v2, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    .line 2681
    const/16 v3, 0x3eb

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v2

    .line 2680
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stopInternal(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 2685
    :cond_75
    return-void
.end method

.method private stopInternal(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 14
    .param p1, "error"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 1836
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1837
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 1838
    .local v0, "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 1839
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 1840
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 1841
    if-eqz p1, :cond_1b

    .line 1842
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 1844
    :cond_1b
    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 1845
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stop()V

    .line 1846
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V

    .line 1855
    return-void
.end method

.method private updateAvailableCommands()V
    .registers 5

    .line 2272
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 2273
    .local v0, "previousAvailableCommands":Lcom/google/android/exoplayer2/Player$Commands;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wrappingPlayer:Lcom/google/android/exoplayer2/Player;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->permanentAvailableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->getAvailableCommands(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 2274
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2275
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda27;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2279
    :cond_1e
    return-void
.end method

.method private updatePlayWhenReady(ZII)V
    .registers 16
    .param p1, "playWhenReady"    # Z
    .param p2, "playerCommand"    # I
    .param p3, "playWhenReadyChangeReason"    # I

    .line 2730
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    const/4 v2, -0x1

    if-eq p2, v2, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    move p1, v2

    .line 2733
    if-eqz p1, :cond_11

    if-eq p2, v1, :cond_11

    .line 2734
    const/4 v0, 0x1

    goto :goto_12

    .line 2735
    :cond_11
    nop

    :goto_12
    nop

    .line 2736
    .local v0, "playbackSuppressionReason":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-ne v2, p1, :cond_20

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    if-ne v2, v0, :cond_20

    .line 2738
    return-void

    .line 2740
    :cond_20
    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2744
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v1, :cond_32

    .line 2745
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithEstimatedPosition()Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    goto :goto_34

    .line 2746
    :cond_32
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    :goto_34
    nop

    .line 2747
    .local v1, "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlayWhenReady(ZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    .line 2749
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReady(ZI)V

    .line 2750
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, v1

    move v5, p3

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V

    .line 2759
    return-void
.end method

.method private updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V
    .registers 29
    .param p1, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p2, "timelineChangeReason"    # I
    .param p3, "playWhenReadyChangeReason"    # I
    .param p4, "positionDiscontinuity"    # Z
    .param p5, "positionDiscontinuityReason"    # I
    .param p6, "discontinuityWindowStartPositionUs"    # J
    .param p8, "oldMaskingMediaItemIndex"    # I
    .param p9, "repeatCurrentMediaItem"    # Z

    .line 1972
    move-object/from16 v7, p0

    move/from16 v8, p5

    iget-object v9, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1973
    .local v9, "previousPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    move-object/from16 v10, p1

    .line 1974
    .local v10, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    move-object/from16 v11, p1

    iput-object v11, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1976
    iget-object v0, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x1

    xor-int/2addr v0, v12

    move v13, v0

    .line 1977
    .local v13, "timelineChanged":Z
    nop

    .line 1978
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v9

    move/from16 v3, p4

    move/from16 v4, p5

    move v5, v13

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->evaluateMediaItemTransitionReason(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;ZIZZ)Landroid/util/Pair;

    move-result-object v0

    .line 1985
    .local v0, "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1986
    .local v1, "mediaItemTransitioned":Z
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1987
    .local v2, "mediaItemTransitionReason":I
    iget-object v3, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1988
    .local v3, "newMediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    const/4 v4, 0x0

    .line 1989
    .local v4, "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    if-eqz v1, :cond_60

    .line 1990
    iget-object v5, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 1991
    iget-object v5, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v14, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1992
    invoke-virtual {v5, v6, v14}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1994
    .local v5, "windowIndex":I
    iget-object v6, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v14, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v6, v5, v14}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v6

    iget-object v4, v6, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1996
    .end local v5    # "windowIndex":I
    :cond_5c
    sget-object v5, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v5, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1998
    :cond_60
    if-nez v1, :cond_6c

    iget-object v5, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v6, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 1999
    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 2000
    :cond_6c
    iget-object v5, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 2002
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaMetadata;->buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v5

    iget-object v6, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2003
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->populateFromMetadata(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v5

    .line 2004
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v5

    iput-object v5, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 2005
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->buildUpdatedMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v3

    .line 2007
    :cond_82
    iget-object v5, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v12

    .line 2008
    .local v5, "metadataChanged":Z
    iput-object v3, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 2009
    iget-boolean v6, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    iget-boolean v14, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-eq v6, v14, :cond_93

    const/4 v6, 0x1

    goto :goto_94

    :cond_93
    const/4 v6, 0x0

    .line 2011
    .local v6, "playWhenReadyChanged":Z
    :goto_94
    iget v14, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget v12, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v14, v12, :cond_9c

    const/4 v12, 0x1

    goto :goto_9d

    :cond_9c
    const/4 v12, 0x0

    .line 2013
    .local v12, "playbackStateChanged":Z
    :goto_9d
    if-nez v12, :cond_a1

    if-eqz v6, :cond_a4

    .line 2014
    :cond_a1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateWakeAndWifiLock()V

    .line 2016
    :cond_a4
    iget-boolean v14, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-boolean v15, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    if-eq v14, v15, :cond_ac

    const/4 v14, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v14, 0x0

    .line 2017
    .local v14, "isLoadingChanged":Z
    :goto_ad
    if-eqz v14, :cond_b4

    .line 2018
    iget-boolean v15, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    invoke-direct {v7, v15}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePriorityTaskManagerForIsLoadingChange(Z)V

    .line 2021
    :cond_b4
    if-eqz v13, :cond_c8

    .line 2022
    iget-object v15, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    move-object/from16 v17, v0

    .end local v0    # "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .local v17, "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda4;

    move-object/from16 v18, v3

    move/from16 v3, p2

    .end local v3    # "newMediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    .local v18, "newMediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    invoke-direct {v0, v10, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;I)V

    const/4 v3, 0x0

    invoke-virtual {v15, v3, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    goto :goto_cc

    .line 2021
    .end local v17    # "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .end local v18    # "newMediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    .restart local v0    # "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .restart local v3    # "newMediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    :cond_c8
    move-object/from16 v17, v0

    move-object/from16 v18, v3

    .line 2026
    .end local v0    # "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .end local v3    # "newMediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    .restart local v17    # "mediaItemTransitionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .restart local v18    # "newMediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    :goto_cc
    if-eqz p4, :cond_eb

    .line 2027
    nop

    .line 2028
    move/from16 v0, p8

    invoke-direct {v7, v8, v9, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPreviousPositionInfo(ILcom/google/android/exoplayer2/PlaybackInfo;I)Lcom/google/android/exoplayer2/Player$PositionInfo;

    move-result-object v3

    .line 2030
    .local v3, "previousPositionInfo":Lcom/google/android/exoplayer2/Player$PositionInfo;
    move v15, v12

    move-wide/from16 v11, p6

    .end local v12    # "playbackStateChanged":Z
    .local v15, "playbackStateChanged":Z
    invoke-direct {v7, v11, v12}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPositionInfo(J)Lcom/google/android/exoplayer2/Player$PositionInfo;

    move-result-object v0

    .line 2031
    .local v0, "positionInfo":Lcom/google/android/exoplayer2/Player$PositionInfo;
    iget-object v11, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v12, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v12, v8, v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;-><init>(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V

    move-object/from16 v16, v0

    .end local v0    # "positionInfo":Lcom/google/android/exoplayer2/Player$PositionInfo;
    .local v16, "positionInfo":Lcom/google/android/exoplayer2/Player$PositionInfo;
    const/16 v0, 0xb

    invoke-virtual {v11, v0, v12}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    goto :goto_ec

    .line 2026
    .end local v3    # "previousPositionInfo":Lcom/google/android/exoplayer2/Player$PositionInfo;
    .end local v15    # "playbackStateChanged":Z
    .end local v16    # "positionInfo":Lcom/google/android/exoplayer2/Player$PositionInfo;
    .restart local v12    # "playbackStateChanged":Z
    :cond_eb
    move v15, v12

    .line 2039
    .end local v12    # "playbackStateChanged":Z
    .restart local v15    # "playbackStateChanged":Z
    :goto_ec
    if-eqz v1, :cond_fa

    .line 2040
    move-object v0, v4

    .line 2041
    .local v0, "finalMediaItem":Lcom/google/android/exoplayer2/MediaItem;
    iget-object v3, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v11, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v11, v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/MediaItem;I)V

    const/4 v12, 0x1

    invoke-virtual {v3, v12, v11}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2045
    .end local v0    # "finalMediaItem":Lcom/google/android/exoplayer2/MediaItem;
    :cond_fa
    iget-object v0, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v3, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eq v0, v3, :cond_11a

    .line 2046
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;

    invoke-direct {v3, v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    const/16 v11, 0xa

    invoke-virtual {v0, v11, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2049
    iget-object v0, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v0, :cond_11a

    .line 2050
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda12;

    invoke-direct {v3, v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    invoke-virtual {v0, v11, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2055
    :cond_11a
    iget-object v0, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v3, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    if-eq v0, v3, :cond_134

    .line 2056
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v3, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 2057
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda13;

    invoke-direct {v3, v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda13;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    const/4 v11, 0x2

    invoke-virtual {v0, v11, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2061
    :cond_134
    if-eqz v5, :cond_144

    .line 2062
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 2063
    .local v0, "finalMediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    iget-object v3, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v11, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda14;

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda14;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;)V

    const/16 v12, 0xe

    invoke-virtual {v3, v12, v11}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2067
    .end local v0    # "finalMediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    :cond_144
    if-eqz v14, :cond_151

    .line 2068
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;

    invoke-direct {v3, v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    const/4 v11, 0x3

    invoke-virtual {v0, v11, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2075
    :cond_151
    if-nez v15, :cond_155

    if-eqz v6, :cond_160

    .line 2076
    :cond_155
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda16;

    invoke-direct {v3, v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda16;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    const/4 v11, -0x1

    invoke-virtual {v0, v11, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2082
    :cond_160
    if-eqz v15, :cond_16d

    .line 2083
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda17;

    invoke-direct {v3, v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda17;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    const/4 v11, 0x4

    invoke-virtual {v0, v11, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2087
    :cond_16d
    if-eqz v6, :cond_17d

    .line 2088
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda5;

    move/from16 v11, p3

    invoke-direct {v3, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;I)V

    const/4 v12, 0x5

    invoke-virtual {v0, v12, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    goto :goto_17f

    .line 2087
    :cond_17d
    move/from16 v11, p3

    .line 2094
    :goto_17f
    iget v0, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    iget v3, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    if-eq v0, v3, :cond_190

    .line 2096
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v3, v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    const/4 v12, 0x6

    invoke-virtual {v0, v12, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2102
    :cond_190
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/PlaybackInfo;->isPlaying()Z

    move-result v0

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/PlaybackInfo;->isPlaying()Z

    move-result v3

    if-eq v0, v3, :cond_1a5

    .line 2103
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v3, v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    const/4 v12, 0x7

    invoke-virtual {v0, v12, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2107
    :cond_1a5
    iget-object v0, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v3, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bb

    .line 2108
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v3, v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    const/16 v12, 0xc

    invoke-virtual {v0, v12, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2112
    :cond_1bb
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateAvailableCommands()V

    .line 2113
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    .line 2115
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    iget-boolean v3, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    if-eq v0, v3, :cond_1e1

    .line 2116
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1cf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 2117
    .local v3, "listener":Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;
    iget-boolean v12, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    invoke-interface {v3, v12}, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;->onExperimentalSleepingForOffloadChanged(Z)V

    .line 2118
    .end local v3    # "listener":Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;
    goto :goto_1cf

    .line 2120
    :cond_1e1
    return-void
.end method

.method private updatePriorityTaskManagerForIsLoadingChange(Z)V
    .registers 5
    .param p1, "isLoading"    # Z

    .line 2846
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_1d

    .line 2847
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-nez v2, :cond_12

    .line 2848
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    .line 2849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    goto :goto_1d

    .line 2850
    :cond_12
    if-nez p1, :cond_1d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-eqz v2, :cond_1d

    .line 2851
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 2852
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 2855
    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateWakeAndWifiLock()V
    .registers 6

    .line 2762
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    .line 2763
    .local v0, "playbackState":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_36

    .line 2777
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 2766
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->experimentalIsSleepingForOffload()Z

    move-result v2

    .line 2767
    .local v2, "isSleeping":Z
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_1d

    if-nez v2, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/WakeLockManager;->setStayAwake(Z)V

    .line 2769
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/WifiLockManager;->setStayAwake(Z)V

    .line 2770
    goto :goto_35

    .line 2773
    .end local v2    # "isSleeping":Z
    :pswitch_2a
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/WakeLockManager;->setStayAwake(Z)V

    .line 2774
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/WifiLockManager;->setStayAwake(Z)V

    .line 2775
    nop

    .line 2779
    :goto_35
    return-void

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_e
        :pswitch_e
        :pswitch_2a
    .end packed-switch
.end method

.method private verifyApplicationThread()V
    .registers 5

    .line 2784
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    .line 2785
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_53

    .line 2786
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2793
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2787
    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2794
    .local v0, "message":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    if-nez v1, :cond_4d

    .line 2797
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v1, :cond_40

    const/4 v1, 0x0

    goto :goto_45

    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_45
    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2798
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    goto :goto_53

    .line 2795
    :cond_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2800
    .end local v0    # "message":Ljava/lang/String;
    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1555
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->addListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 1556
    return-void
.end method

.method public addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 487
    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 1672
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->add(Ljava/lang/Object;)V

    .line 1673
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

    .line 625
    .local p2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 626
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    .line 627
    return-void
.end method

.method public addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 637
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 638
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    .line 639
    return-void
.end method

.method public addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 3
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 631
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 632
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(Ljava/util/List;)V

    .line 633
    return-void
.end method

.method public addMediaSources(ILjava/util/List;)V
    .registers 14
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 649
    .local p2, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 650
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 651
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 652
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 655
    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    invoke-virtual {p0, p2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    .line 656
    return-void

    .line 658
    :cond_2a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSourcesInternal(Lcom/google/android/exoplayer2/PlaybackInfo;ILjava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 659
    .local v0, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V

    .line 668
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

    .line 643
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 644
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    .line 645
    return-void
.end method

.method public clearAuxEffectInfo()V
    .registers 4

    .line 1497
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1498
    new-instance v0, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;-><init>(IF)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    .line 1499
    return-void
.end method

.method public clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    .line 1653
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1654
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eq v0, p1, :cond_8

    .line 1655
    return-void

    .line 1657
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1658
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1659
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1660
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1661
    return-void
.end method

.method public clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 1631
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1632
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eq v0, p1, :cond_8

    .line 1633
    return-void

    .line 1635
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1636
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1637
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1638
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1639
    return-void
.end method

.method public clearVideoSurface()V
    .registers 2

    .line 1309
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1310
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1311
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1312
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 1313
    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1317
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1318
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-ne p1, v0, :cond_c

    .line 1319
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface()V

    .line 1321
    :cond_c
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 1356
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1357
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_c

    .line 1358
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface()V

    .line 1360
    :cond_c
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .registers 3
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 1386
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1387
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    :goto_b
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1388
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .registers 3
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 1417
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1418
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_c

    .line 1419
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface()V

    .line 1421
    :cond_c
    return-void
.end method

.method public createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3
    .param p1, "target"    # Lcom/google/android/exoplayer2/PlayerMessage$Target;

    .line 1061
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1062
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    return-object v0
.end method

.method public decreaseDeviceVolume()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1774
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1775
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    if-eqz v0, :cond_b

    .line 1776
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->decreaseVolume(I)V

    .line 1778
    :cond_b
    return-void
.end method

.method public decreaseDeviceVolume(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 1782
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1783
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    if-eqz v0, :cond_a

    .line 1784
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->decreaseVolume(I)V

    .line 1786
    :cond_a
    return-void
.end method

.method public experimentalIsSleepingForOffload()Z
    .registers 2

    .line 461
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 462
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    return v0
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .registers 4
    .param p1, "offloadSchedulingEnabled"    # Z

    .line 452
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 453
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->experimentalSetOffloadSchedulingEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 455
    .local v1, "listener":Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;->onExperimentalOffloadSchedulingEnabledChanged(Z)V

    .line 456
    .end local v1    # "listener":Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;
    goto :goto_e

    .line 457
    :cond_1e
    return-void
.end method

.method public getAnalyticsCollector()Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .registers 2

    .line 1548
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1549
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .registers 2

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .registers 2

    .line 1454
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1455
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-object v0
.end method

.method public getAudioComponent()Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 419
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 420
    return-object p0
.end method

.method public getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .registers 2

    .line 1615
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1616
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2

    .line 1601
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1602
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .line 1485
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1486
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    return v0
.end method

.method public getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;
    .registers 2

    .line 497
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 498
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    return-object v0
.end method

.method public getBufferedPosition()J
    .registers 3

    .line 1102
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1103
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1104
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1105
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    goto :goto_24

    .line 1106
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    .line 1104
    :goto_24
    return-wide v0

    .line 1108
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClock()Lcom/google/android/exoplayer2/util/Clock;
    .registers 2

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object v0
.end method

.method public getContentBufferedPosition()J
    .registers 7

    .line 1143
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1144
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1145
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    return-wide v0

    .line 1147
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_33

    .line 1149
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    return-wide v0

    .line 1151
    :cond_33
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 1152
    .local v0, "contentBufferedPositionUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1153
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1154
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    .line 1155
    .local v2, "loadingPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 1156
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v0

    .line 1157
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v0, v3

    if-nez v5, :cond_63

    .line 1158
    iget-wide v0, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 1161
    .end local v2    # "loadingPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    :cond_63
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1162
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v2

    .line 1161
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getContentPosition()J
    .registers 3

    .line 1137
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1138
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPositionInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .registers 2

    .line 1125
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1126
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .registers 2

    .line 1131
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1132
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    return v0
.end method

.method public getCurrentCues()Lcom/google/android/exoplayer2/text/CueGroup;
    .registers 2

    .line 1665
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1666
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .registers 3

    .line 1077
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1078
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)I

    move-result v0

    .line 1079
    .local v0, "currentWindowIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    return v1
.end method

.method public getCurrentPeriodIndex()I
    .registers 3

    .line 1067
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1068
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1069
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    return v0

    .line 1071
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 1096
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1097
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    .line 1254
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1255
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 1192
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1193
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .registers 3

    .line 1198
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1199
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    return-object v0
.end method

.method public getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;
    .registers 2

    .line 1204
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1205
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->tracks:Lcom/google/android/exoplayer2/Tracks;

    return-object v0
.end method

.method public getDeviceComponent()Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 446
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 447
    return-object p0
.end method

.method public getDeviceInfo()Lcom/google/android/exoplayer2/DeviceInfo;
    .registers 2

    .line 1704
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1705
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    return-object v0
.end method

.method public getDeviceVolume()I
    .registers 2

    .line 1710
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1711
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    if-eqz v0, :cond_c

    .line 1712
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getVolume()I

    move-result v0

    return v0

    .line 1714
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .registers 6

    .line 1084
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1085
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1086
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1087
    .local v0, "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1088
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v1

    .line 1089
    .local v1, "adDurationUs":J
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v3

    return-wide v3

    .line 1091
    .end local v0    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v1    # "adDurationUs":J
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .registers 3

    .line 925
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 926
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2

    .line 1229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1230
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object v0
.end method

.method public getPauseAtEndOfMediaItems()Z
    .registers 2

    .line 799
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 800
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    return v0
.end method

.method public getPlayWhenReady()Z
    .registers 2

    .line 814
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 815
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 2

    .line 954
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 955
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public getPlaybackState()I
    .registers 2

    .line 503
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 504
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .registers 2

    .line 509
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    return v0
.end method

.method public getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 2

    .line 516
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-object v0
.end method

.method public bridge synthetic getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;
    .registers 2

    .line 119
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2

    .line 1235
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1236
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object v0
.end method

.method public getRenderer(I)Lcom/google/android/exoplayer2/Renderer;
    .registers 3
    .param p1, "index"    # I

    .line 1180
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1181
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRendererCount()I
    .registers 2

    .line 1168
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1169
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    return v0
.end method

.method public getRendererType(I)I
    .registers 3
    .param p1, "index"    # I

    .line 1174
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1175
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .line 833
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 834
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    return v0
.end method

.method public getSeekBackIncrement()J
    .registers 3

    .line 913
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 914
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .registers 3

    .line 919
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 920
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public getSeekParameters()Lcom/google/android/exoplayer2/SeekParameters;
    .registers 2

    .line 972
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 973
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .registers 2

    .line 853
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 854
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    return v0
.end method

.method public getSkipSilenceEnabled()Z
    .registers 2

    .line 1529
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1530
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    return v0
.end method

.method public getSurfaceSize()Lcom/google/android/exoplayer2/util/Size;
    .registers 2

    .line 1303
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1304
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    return-object v0
.end method

.method public getTextComponent()Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 437
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 438
    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .registers 3

    .line 1113
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1114
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .registers 2

    .line 1210
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1211
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .registers 2

    .line 1186
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1187
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    return-object v0
.end method

.method public getVideoChangeFrameRateStrategy()I
    .registers 2

    .line 1291
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1292
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    return v0
.end method

.method public getVideoComponent()Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 429
    return-object p0
.end method

.method public getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .registers 2

    .line 1608
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1609
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2

    .line 1594
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1595
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .registers 2

    .line 1273
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1274
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoScalingMode:I

    return v0
.end method

.method public getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;
    .registers 2

    .line 1297
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1298
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object v0
.end method

.method public getVolume()F
    .registers 2

    .line 1523
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1524
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->volume:F

    return v0
.end method

.method public increaseDeviceVolume()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1754
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1755
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    if-eqz v0, :cond_b

    .line 1756
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->increaseVolume(I)V

    .line 1758
    :cond_b
    return-void
.end method

.method public increaseDeviceVolume(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 1762
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1763
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    if-eqz v0, :cond_a

    .line 1764
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->increaseVolume(I)V

    .line 1766
    :cond_a
    return-void
.end method

.method public isDeviceMuted()Z
    .registers 2

    .line 1720
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1721
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    if-eqz v0, :cond_c

    .line 1722
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->isMuted()Z

    move-result v0

    return v0

    .line 1724
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .line 859
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 860
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    return v0
.end method

.method public isPlayingAd()Z
    .registers 2

    .line 1119
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    return v0
.end method

.method public isTunnelingEnabled()Z
    .registers 7

    .line 1810
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1812
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_1b

    aget-object v4, v0, v3

    .line 1813
    .local v4, "config":Lcom/google/android/exoplayer2/RendererConfiguration;
    if-eqz v4, :cond_18

    iget-boolean v5, v4, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    if-eqz v5, :cond_18

    .line 1814
    const/4 v0, 0x1

    return v0

    .line 1812
    .end local v4    # "config":Lcom/google/android/exoplayer2/RendererConfiguration;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1817
    :cond_1b
    return v2
.end method

.method synthetic lambda$new$0$com-google-android-exoplayer2-ExoPlayerImpl(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .registers 5
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;
    .param p2, "flags"    # Lcom/google/android/exoplayer2/util/FlagSet;

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wrappingPlayer:Lcom/google/android/exoplayer2/Player;

    new-instance v1, Lcom/google/android/exoplayer2/Player$Events;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/Player$Events;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method synthetic lambda$new$1$com-google-android-exoplayer2-ExoPlayerImpl(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .registers 2
    .param p1, "playbackInfoUpdate"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 328
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->handlePlaybackInfo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method synthetic lambda$new$2$com-google-android-exoplayer2-ExoPlayerImpl(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .registers 4
    .param p1, "playbackInfoUpdate"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda19;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$setPlaylistMetadata$7$com-google-android-exoplayer2-ExoPlayerImpl(Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 1249
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method synthetic lambda$updateAvailableCommands$26$com-google-android-exoplayer2-ExoPlayerImpl(Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 2277
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public moveMediaItems(III)V
    .registers 23
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newFromIndex"    # I

    .line 696
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 697
    const/4 v2, 0x1

    if-ltz v11, :cond_14

    if-gt v11, v0, :cond_14

    if-ltz v1, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 698
    iget-object v3, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    .line 699
    .local v12, "playlistSize":I
    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 700
    .end local p2    # "toIndex":I
    .local v13, "toIndex":I
    sub-int v0, v13, v11

    sub-int v0, v12, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 701
    .end local p3    # "newFromIndex":I
    .local v14, "newFromIndex":I
    if-ge v11, v12, :cond_7a

    if-eq v11, v13, :cond_7a

    if-ne v11, v14, :cond_31

    goto :goto_7a

    .line 705
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v15

    .line 706
    .local v15, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v0, v2

    iput v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 707
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-static {v0, v11, v13, v14}, Lcom/google/android/exoplayer2/util/Util;->moveItems(Ljava/util/List;III)V

    .line 708
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v9

    .line 709
    .local v9, "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget-object v6, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 716
    invoke-direct {v10, v6}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)I

    move-result v3

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 717
    invoke-direct {v10, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPositionInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v4

    .line 713
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPeriodPositionUsAfterTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 710
    invoke-direct {v10, v6, v9, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v16

    .line 718
    .local v16, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-virtual {v0, v11, v13, v14, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->moveMediaSources(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 719
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, -0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v18, v9

    .end local v9    # "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    .local v18, "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V

    .line 728
    return-void

    .line 703
    .end local v15    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v16    # "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .end local v18    # "newTimeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_7a
    :goto_7a
    return-void
.end method

.method public prepare()V
    .registers 16

    .line 522
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 523
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    .line 525
    .local v0, "playWhenReady":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v1

    .line 526
    .local v1, "playerCommand":I
    nop

    .line 527
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result v3

    .line 526
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    .line 528
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1e

    .line 529
    return-void

    .line 531
    :cond_1e
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 532
    .local v3, "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    nop

    .line 534
    iget-object v5, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v2, 0x4

    .line 533
    :cond_2f
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 539
    .end local v3    # "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .local v2, "playbackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 540
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->prepare()V

    .line 541
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x5

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v5, p0

    move-object v6, v2

    invoke-direct/range {v5 .. v14}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V

    .line 550
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 2
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 555
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 556
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 557
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare()V

    .line 558
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .registers 4
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetState"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 565
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare()V

    .line 566
    return-void
.end method

.method public release()V
    .registers 7

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1004
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ExoPlayerLib/2.19.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1010
    invoke-static {}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1001
    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1013
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-ge v0, v1, :cond_5d

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5d

    .line 1014
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 1015
    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 1017
    :cond_5d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 1018
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    if-eqz v0, :cond_6a

    .line 1019
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->release()V

    .line 1021
    :cond_6a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/WakeLockManager;->setStayAwake(Z)V

    .line 1022
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/WifiLockManager;->setStayAwake(Z)V

    .line 1023
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->release()V

    .line 1024
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->release()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 1026
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1034
    :cond_8d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->release()V

    .line 1035
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1036
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 1037
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v0, :cond_ac

    .line 1038
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithEstimatedPosition()Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1040
    :cond_ac
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1041
    iget-object v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1042
    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iput-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 1043
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 1044
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->release()V

    .line 1045
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->release()V

    .line 1046
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1047
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_dd

    .line 1048
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1049
    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 1051
    :cond_dd
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-eqz v0, :cond_ee

    .line 1052
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 1053
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 1055
    :cond_ee
    sget-object v0, Lcom/google/android/exoplayer2/text/CueGroup;->EMPTY_TIME_ZERO:Lcom/google/android/exoplayer2/text/CueGroup;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;

    .line 1056
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playerReleased:Z

    .line 1057
    return-void
.end method

.method public removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1560
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1561
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->removeListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 1562
    return-void
.end method

.method public removeAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 491
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 492
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 493
    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/Player$Listener;

    .line 1677
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1678
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->remove(Ljava/lang/Object;)V

    .line 1679
    return-void
.end method

.method public removeMediaItems(II)V
    .registers 16
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 672
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 673
    const/4 v0, 0x1

    if-ltz p1, :cond_a

    if-lt p2, p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 674
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 675
    .local v1, "playlistSize":I
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 676
    if-ge p1, v1, :cond_42

    if-ne p1, p2, :cond_1d

    goto :goto_42

    .line 680
    :cond_1d
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaItemsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;II)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 681
    .local v2, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget-object v3, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 682
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v7, v3, 0x1

    .line 683
    .local v7, "positionDiscontinuity":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x4

    .line 689
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v9

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 683
    move-object v3, p0

    move-object v4, v2

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V

    .line 692
    return-void

    .line 678
    .end local v2    # "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .end local v7    # "positionDiscontinuity":Z
    :cond_42
    :goto_42
    return-void
.end method

.method public replaceMediaItems(IILjava/util/List;)V
    .registers 22
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

    .line 732
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v0, p2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 733
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v11, :cond_11

    if-lt v0, v11, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    :goto_12
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 734
    iget-object v3, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    .line 735
    .local v12, "playlistSize":I
    if-le v11, v12, :cond_1e

    .line 737
    return-void

    .line 739
    :cond_1e
    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 740
    .end local p2    # "toIndex":I
    .local v13, "toIndex":I
    move-object/from16 v14, p3

    invoke-direct {v10, v14}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 741
    .local v15, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 744
    iget v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_36

    const/4 v1, 0x1

    :cond_36
    invoke-virtual {v10, v15, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    .line 745
    return-void

    .line 747
    :cond_3a
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {v10, v0, v13, v15}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSourcesInternal(Lcom/google/android/exoplayer2/PlaybackInfo;ILjava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 748
    .local v0, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    invoke-direct {v10, v0, v11, v13}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaItemsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;II)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v9

    .line 749
    .end local v0    # "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .local v9, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget-object v0, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 750
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    .line 751
    .local v4, "positionDiscontinuity":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x4

    .line 757
    invoke-direct {v10, v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v6

    const/4 v8, -0x1

    const/16 v16, 0x0

    .line 751
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v17, v9

    .end local v9    # "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .local v17, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V

    .line 760
    return-void
.end method

.method public seekTo(IJIZ)V
    .registers 23
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J
    .param p4, "seekCommand"    # I
    .param p5, "isRepeatingCurrentItem"    # Z

    .line 869
    move-object/from16 v10, p0

    move/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 870
    const/4 v0, 0x1

    if-ltz v11, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 871
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 872
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v12, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 873
    .local v12, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    if-lt v11, v1, :cond_26

    .line 874
    return-void

    .line 876
    :cond_26
    iget v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v1, v0

    iput v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 881
    const-string v1, "ExoPlayerImpl"

    const-string v2, "seekTo ignored because an ad is playing"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v2, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    .line 884
    .local v1, "playbackInfoUpdate":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 885
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 886
    return-void

    .line 888
    .end local v1    # "playbackInfoUpdate":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;
    :cond_48
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 889
    .local v0, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5e

    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_65

    .line 890
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    .line 891
    :cond_5e
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 893
    :cond_65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v13

    .line 894
    .local v13, "oldMaskingMediaItemIndex":I
    nop

    .line 898
    move-wide/from16 v14, p2

    invoke-direct {v10, v12, v11, v14, v15}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 895
    invoke-direct {v10, v0, v12, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v9

    .line 899
    .end local v0    # "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .local v9, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-static/range {p2 .. p3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-virtual {v0, v12, v11, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekTo(Lcom/google/android/exoplayer2/Timeline;IJ)V

    .line 900
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 906
    invoke-direct {v10, v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v6

    .line 900
    move-object/from16 v0, p0

    move-object v1, v9

    move v8, v13

    move-object/from16 v16, v9

    .end local v9    # "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    .local v16, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V

    .line 909
    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V
    .registers 6
    .param p1, "newAudioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z

    .line 1425
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1426
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playerReleased:Z

    if-eqz v0, :cond_8

    .line 1427
    return-void

    .line 1429
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1430
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 1431
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1432
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    if-eqz v0, :cond_24

    .line 1433
    iget v1, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    .line 1434
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v1

    .line 1433
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setStreamType(I)V

    .line 1437
    :cond_24
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda18;-><init>(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1442
    :cond_30
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    if-eqz p2, :cond_36

    move-object v1, p1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 1443
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 1444
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    .line 1446
    .local v0, "playWhenReady":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackState()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v1

    .line 1447
    .local v1, "playerCommand":I
    nop

    .line 1448
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result v2

    .line 1447
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    .line 1449
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    .line 1450
    return-void
.end method

.method public setAudioSessionId(I)V
    .registers 6
    .param p1, "audioSessionId"    # I

    .line 1460
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1461
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    if-ne v0, p1, :cond_8

    .line 1462
    return-void

    .line 1464
    :cond_8
    const/16 v0, 0x15

    if-nez p1, :cond_1d

    .line 1465
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v1, v0, :cond_16

    .line 1466
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->initializeKeepSessionIdAudioTrack(I)I

    move-result p1

    goto :goto_24

    .line 1468
    :cond_16
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result p1

    goto :goto_24

    .line 1470
    :cond_1d
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v1, v0, :cond_24

    .line 1473
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->initializeKeepSessionIdAudioTrack(I)I

    .line 1475
    :cond_24
    :goto_24
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    .line 1476
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1477
    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1478
    move v1, p1

    .line 1479
    .local v1, "finalAudioSessionId":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda20;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda20;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1481
    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
    .registers 4
    .param p1, "auxEffectInfo"    # Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 1491
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1492
    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1493
    return-void
.end method

.method public setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    .line 1643
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1644
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    .line 1645
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1646
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1647
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1648
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1649
    return-void
.end method

.method public setDeviceMuted(Z)V
    .registers 4
    .param p1, "muted"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1794
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1795
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    if-eqz v0, :cond_b

    .line 1796
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setMuted(ZI)V

    .line 1798
    :cond_b
    return-void
.end method

.method public setDeviceMuted(ZI)V
    .registers 4
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 1802
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1803
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    if-eqz v0, :cond_a

    .line 1804
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setMuted(ZI)V

    .line 1806
    :cond_a
    return-void
.end method

.method public setDeviceVolume(I)V
    .registers 4
    .param p1, "volume"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1734
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1735
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    if-eqz v0, :cond_b

    .line 1736
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setVolume(II)V

    .line 1738
    :cond_b
    return-void
.end method

.method public setDeviceVolume(II)V
    .registers 4
    .param p1, "volume"    # I
    .param p2, "flags"    # I

    .line 1742
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1743
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    if-eqz v0, :cond_a

    .line 1744
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setVolume(II)V

    .line 1746
    :cond_a
    return-void
.end method

.method public setForegroundMode(Z)V
    .registers 4
    .param p1, "foregroundMode"    # Z

    .line 978
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 979
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->foregroundMode:Z

    if-eq v0, p1, :cond_20

    .line 980
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->foregroundMode:Z

    .line 981
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundMode(Z)Z

    move-result v0

    if-nez v0, :cond_20

    .line 983
    new-instance v0, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    .line 984
    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 983
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stopInternal(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 989
    :cond_20
    return-void
.end method

.method public setHandleAudioBecomingNoisy(Z)V
    .registers 3
    .param p1, "handleAudioBecomingNoisy"    # Z

    .line 1566
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1567
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playerReleased:Z

    if-eqz v0, :cond_8

    .line 1568
    return-void

    .line 1570
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 1571
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

    .line 576
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 577
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    .line 578
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

    .line 570
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 571
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    .line 572
    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 3
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 582
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 583
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;)V

    .line 584
    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .registers 6
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "startPositionMs"    # J

    .line 588
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 589
    nop

    .line 590
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 589
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    .line 591
    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .registers 4
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z

    .line 595
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 596
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    .line 597
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

    .line 601
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 602
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    .line 603
    return-void
.end method

.method public setMediaSources(Ljava/util/List;IJ)V
    .registers 11
    .param p2, "startWindowIndex"    # I
    .param p3, "startPositionMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation

    .line 618
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 619
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSourcesInternal(Ljava/util/List;IJZ)V

    .line 621
    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .registers 9
    .param p2, "resetPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 607
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 608
    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSourcesInternal(Ljava/util/List;IJZ)V

    .line 613
    return-void
.end method

.method public setPauseAtEndOfMediaItems(Z)V
    .registers 3
    .param p1, "pauseAtEndOfMediaItems"    # Z

    .line 789
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 790
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    if-ne v0, p1, :cond_8

    .line 791
    return-void

    .line 793
    :cond_8
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    .line 794
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPauseAtEndOfWindow(Z)V

    .line 795
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .registers 4
    .param p1, "playWhenReady"    # Z

    .line 805
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 807
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v0

    .line 808
    .local v0, "playerCommand":I
    nop

    .line 809
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result v1

    .line 808
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    .line 810
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 13
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 931
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 932
    if-nez p1, :cond_7

    .line 933
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 935
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 936
    return-void

    .line 938
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 939
    .local v0, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 940
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 941
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V

    .line 950
    return-void
.end method

.method public setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 5
    .param p1, "playlistMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1241
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1242
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1244
    return-void

    .line 1246
    :cond_f
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1247
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda21;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1250
    return-void
.end method

.method public setPreferredAudioDevice(Landroid/media/AudioDeviceInfo;)V
    .registers 4
    .param p1, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 1504
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1505
    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1506
    return-void
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .registers 4
    .param p1, "priorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 1575
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1576
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1577
    return-void

    .line 1579
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1580
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 1582
    :cond_1c
    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1583
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    .line 1584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    goto :goto_2d

    .line 1586
    :cond_2b
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 1588
    :goto_2d
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 1589
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 5
    .param p1, "repeatMode"    # I

    .line 820
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 821
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    if-eq v0, p1, :cond_22

    .line 822
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    .line 823
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setRepeatMode(I)V

    .line 824
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda25;-><init>(I)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 826
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateAvailableCommands()V

    .line 827
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    .line 829
    :cond_22
    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .registers 3
    .param p1, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 960
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 961
    if-nez p1, :cond_7

    .line 962
    sget-object p1, Lcom/google/android/exoplayer2/SeekParameters;->DEFAULT:Lcom/google/android/exoplayer2/SeekParameters;

    .line 964
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 965
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    .line 966
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    .line 968
    :cond_16
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .registers 5
    .param p1, "shuffleModeEnabled"    # Z

    .line 839
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 840
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    if-eq v0, p1, :cond_22

    .line 841
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 842
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setShuffleModeEnabled(Z)V

    .line 843
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda22;-><init>(Z)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 846
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateAvailableCommands()V

    .line 847
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    .line 849
    :cond_22
    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 16
    .param p1, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 764
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 765
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 766
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 767
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 768
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 773
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v4

    .line 772
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 769
    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    .line 774
    .local v1, "newPlaybackInfo":Lcom/google/android/exoplayer2/PlaybackInfo;
    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 775
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 776
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZIJIZ)V

    .line 785
    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .registers 5
    .param p1, "newSkipSilenceEnabled"    # Z

    .line 1535
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1536
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    if-ne v0, p1, :cond_8

    .line 1537
    return-void

    .line 1539
    :cond_8
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    .line 1540
    const/16 v0, 0x9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1541
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Z)V

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1544
    return-void
.end method

.method setThrowsWhenUsingWrongThread(Z)V
    .registers 4
    .param p1, "throwsWhenUsingWrongThread"    # Z

    .line 1822
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    .line 1823
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->setThrowsWhenUsingWrongThread(Z)V

    .line 1824
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    instance-of v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;

    if-eqz v1, :cond_12

    .line 1825
    check-cast v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;

    .line 1826
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->setThrowsWhenUsingWrongThread(Z)V

    .line 1828
    :cond_12
    return-void
.end method

.method public setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 5
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 1216
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1217
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 1218
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2a

    .line 1221
    :cond_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 1222
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda26;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda26;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1225
    return-void

    .line 1219
    :cond_2a
    :goto_2a
    return-void
.end method

.method public setVideoChangeFrameRateStrategy(I)V
    .registers 5
    .param p1, "videoChangeFrameRateStrategy"    # I

    .line 1280
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1281
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    if-ne v0, p1, :cond_8

    .line 1282
    return-void

    .line 1284
    :cond_8
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 1285
    nop

    .line 1286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1285
    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1287
    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/Effect;",
            ">;)V"
        }
    .end annotation

    .line 1260
    .local p1, "videoEffects":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/util/Effect;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1261
    const/4 v0, 0x2

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1262
    return-void
.end method

.method public setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 1621
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1622
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 1623
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1624
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1625
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1626
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1627
    return-void
.end method

.method public setVideoScalingMode(I)V
    .registers 5
    .param p1, "videoScalingMode"    # I

    .line 1266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1267
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoScalingMode:I

    .line 1268
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1269
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1325
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1326
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1327
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1328
    if-nez p1, :cond_d

    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    .line 1329
    .local v0, "newSurfaceSize":I
    :goto_e
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 1330
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .registers 6
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 1334
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1335
    if-nez p1, :cond_9

    .line 1336
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface()V

    goto :goto_3d

    .line 1338
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 1340
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1341
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1342
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1343
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1344
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1345
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 1346
    .local v1, "surfaceSize":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 1347
    .end local v1    # "surfaceSize":Landroid/graphics/Rect;
    goto :goto_3d

    .line 1348
    :cond_35
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1349
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 1352
    .end local v0    # "surface":Landroid/view/Surface;
    :goto_3d
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .registers 4
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 1364
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1365
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    if-eqz v0, :cond_15

    .line 1366
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1367
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1368
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_59

    .line 1369
    :cond_15
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_4e

    .line 1370
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1371
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 1372
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1373
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 1374
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1375
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1376
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->addVideoSurfaceListener(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 1377
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1378
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_59

    .line 1380
    :cond_4e
    if-nez p1, :cond_52

    const/4 v0, 0x0

    goto :goto_56

    :cond_52
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    :goto_56
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1382
    :goto_59
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .registers 5
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 1392
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1393
    if-nez p1, :cond_9

    .line 1394
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface()V

    goto :goto_45

    .line 1396
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1397
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 1398
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1399
    const-string v0, "ExoPlayerImpl"

    const-string v1, "Replacing existing SurfaceTextureListener."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    :cond_1b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1404
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, v1

    .line 1405
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :goto_2d
    if-nez v0, :cond_37

    .line 1406
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1407
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_45

    .line 1409
    :cond_37
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    .line 1410
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    .line 1413
    .end local v0    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :goto_45
    return-void
.end method

.method public setVolume(F)V
    .registers 6
    .param p1, "volume"    # F

    .line 1510
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1511
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 1512
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->volume:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_11

    .line 1513
    return-void

    .line 1515
    :cond_11
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->volume:F

    .line 1516
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendVolumeToRenderers()V

    .line 1517
    move v0, p1

    .line 1518
    .local v0, "finalVolume":F
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda24;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda24;-><init>(F)V

    const/16 v3, 0x16

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1519
    return-void
.end method

.method public setWakeMode(I)V
    .registers 5
    .param p1, "wakeMode"    # I

    .line 1683
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1684
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_2c

    goto :goto_2a

    .line 1694
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 1695
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    .line 1696
    goto :goto_2a

    .line 1690
    :pswitch_14
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 1691
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    .line 1692
    goto :goto_2a

    .line 1686
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 1687
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    .line 1688
    nop

    .line 1700
    :goto_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_14
        :pswitch_9
    .end packed-switch
.end method

.method public stop()V
    .registers 5

    .line 993
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 994
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    .line 995
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stopInternal(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 996
    new-instance v0, Lcom/google/android/exoplayer2/text/CueGroup;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/text/CueGroup;-><init>(Ljava/util/List;J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;

    .line 997
    return-void
.end method
