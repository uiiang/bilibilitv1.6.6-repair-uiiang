.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.implements Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;
.implements Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;
.implements Lcom/google/android/exoplayer2/PlayerMessage$Sender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACTIVE_INTERVAL_MS:I = 0xa

.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MSG_ADD_MEDIA_SOURCES:I = 0x12

.field private static final MSG_ATTEMPT_RENDERER_ERROR_RECOVERY:I = 0x19

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field private static final MSG_MOVE_MEDIA_SOURCES:I = 0x13

.field private static final MSG_PERIOD_PREPARED:I = 0x8

.field private static final MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL:I = 0x10

.field private static final MSG_PLAYLIST_UPDATE_REQUESTED:I = 0x16

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_RELEASE:I = 0x7

.field private static final MSG_REMOVE_MEDIA_SOURCES:I = 0x14

.field private static final MSG_RENDERER_CAPABILITIES_CHANGED:I = 0x1a

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SEND_MESSAGE:I = 0xe

.field private static final MSG_SEND_MESSAGE_TO_TARGET_THREAD:I = 0xf

.field private static final MSG_SET_FOREGROUND_MODE:I = 0xd

.field private static final MSG_SET_MEDIA_SOURCES:I = 0x11

.field private static final MSG_SET_OFFLOAD_SCHEDULING_ENABLED:I = 0x18

.field private static final MSG_SET_PAUSE_AT_END_OF_WINDOW:I = 0x17

.field private static final MSG_SET_PLAYBACK_PARAMETERS:I = 0x4

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SET_REPEAT_MODE:I = 0xb

.field private static final MSG_SET_SEEK_PARAMETERS:I = 0x5

.field private static final MSG_SET_SHUFFLE_ENABLED:I = 0xc

.field private static final MSG_SET_SHUFFLE_ORDER:I = 0x15

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x9

.field private static final MSG_STOP:I = 0x6

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0xa

.field private static final PLAYBACK_BUFFER_EMPTY_THRESHOLD_US:J = 0x7a120L

.field private static final PLAYBACK_STUCK_AFTER_MS:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private final backBufferDurationUs:J

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private deliverPendingMessageAtStartPositionRequired:Z

.field private final emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field private enabledRendererCount:I

.field private foregroundMode:Z

.field private final handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isRebuffering:Z

.field private final livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

.field private final loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private final mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

.field private final mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

.field private nextPendingMessageIndexHint:I

.field private offloadSchedulingEnabled:Z

.field private pauseAtEndOfWindow:Z

.field private pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

.field private final pendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPauseAtEndOfPeriod:Z

.field private pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

.field private playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field private final playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field private final playbackLooper:Landroid/os/Looper;

.field private playbackMaybeBecameStuckAtMs:J

.field private final queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

.field private final releaseTimeoutMs:J

.field private released:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private rendererPositionUs:J

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private final renderersToReset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private repeatMode:I

.field private requestForRendererSleep:Z

.field private final retainBackBufferFromKeyframe:Z

.field private seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

.field private setForegroundModeTimeoutMs:J

.field private shouldContinueLoading:Z

.field private shuffleModeEnabled:Z

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IZLcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/SeekParameters;Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Lcom/google/android/exoplayer2/analytics/PlayerId;Landroid/os/Looper;)V
    .registers 36
    .param p1, "renderers"    # [Lcom/google/android/exoplayer2/Renderer;
    .param p2, "trackSelector"    # Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .param p3, "emptyTrackSelectorResult"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .param p4, "loadControl"    # Lcom/google/android/exoplayer2/LoadControl;
    .param p5, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .param p6, "repeatMode"    # I
    .param p7, "shuffleModeEnabled"    # Z
    .param p8, "analyticsCollector"    # Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .param p9, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;
    .param p10, "livePlaybackSpeedControl"    # Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;
    .param p11, "releaseTimeoutMs"    # J
    .param p13, "pauseAtEndOfWindow"    # Z
    .param p14, "applicationLooper"    # Landroid/os/Looper;
    .param p15, "clock"    # Lcom/google/android/exoplayer2/util/Clock;
    .param p16, "playbackInfoUpdateListener"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;
    .param p17, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;
    .param p18, "playbackLooper"    # Landroid/os/Looper;

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    move-object/from16 v8, p17

    move-object/from16 v9, p18

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    move-object/from16 v10, p16

    iput-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 251
    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 252
    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 253
    move-object/from16 v11, p3

    iput-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 254
    move-object/from16 v12, p4

    iput-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 255
    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 256
    move/from16 v13, p6

    iput v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    .line 257
    move/from16 v14, p7

    iput-boolean v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 258
    move-object/from16 v15, p9

    iput-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    .line 259
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 260
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseTimeoutMs:J

    .line 261
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    .line 262
    move/from16 v5, p13

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 263
    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 265
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 266
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/LoadControl;->getBackBufferDurationUs()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 267
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/LoadControl;->retainBackBufferFromKeyframe()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 269
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/PlaybackInfo;->createDummy(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 270
    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-direct {v6, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 271
    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/exoplayer2/RendererCapabilities;

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 273
    nop

    .line 274
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getRendererCapabilitiesListener()Lcom/google/android/exoplayer2/RendererCapabilities$Listener;

    move-result-object v5

    .line 275
    .local v5, "rendererCapabilitiesListener":Lcom/google/android/exoplayer2/RendererCapabilities$Listener;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6c
    array-length v10, v1

    if-ge v6, v10, :cond_8c

    .line 276
    aget-object v10, v1, v6

    invoke-interface {v10, v6, v8}, Lcom/google/android/exoplayer2/Renderer;->init(ILcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 277
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v16, v1, v6

    invoke-interface/range {v16 .. v16}, Lcom/google/android/exoplayer2/Renderer;->getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v16

    aput-object v16, v10, v6

    .line 278
    if-eqz v5, :cond_87

    .line 279
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v10, v10, v6

    invoke-interface {v10, v5}, Lcom/google/android/exoplayer2/RendererCapabilities;->setListener(Lcom/google/android/exoplayer2/RendererCapabilities$Listener;)V

    .line 275
    :cond_87
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, p10

    goto :goto_6c

    .line 282
    .end local v6    # "i":I
    :cond_8c
    new-instance v6, Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-direct {v6, v0, v7}, Lcom/google/android/exoplayer2/DefaultMediaClock;-><init>(Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;Lcom/google/android/exoplayer2/util/Clock;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 283
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 284
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    .line 285
    new-instance v6, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 286
    new-instance v6, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 287
    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 289
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 291
    const/4 v6, 0x0

    move-object/from16 v10, p14

    invoke-interface {v7, v10, v6}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    .line 292
    .local v1, "eventHandler":Lcom/google/android/exoplayer2/util/HandlerWrapper;
    new-instance v6, Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-direct {v6, v4, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/util/HandlerWrapper;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 293
    new-instance v6, Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-direct {v6, v0, v4, v1, v8}, Lcom/google/android/exoplayer2/MediaSourceList;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/util/HandlerWrapper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 296
    if-eqz v9, :cond_d3

    .line 297
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 298
    iput-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    move-object/from16 v16, v1

    goto :goto_e9

    .line 302
    :cond_d3
    new-instance v6, Landroid/os/HandlerThread;

    move-object/from16 v16, v1

    .end local v1    # "eventHandler":Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .local v16, "eventHandler":Lcom/google/android/exoplayer2/util/HandlerWrapper;
    const-string v1, "ExoPlayer:Playback"

    const/16 v2, -0x10

    invoke-direct {v6, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 304
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 305
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 307
    :goto_e9
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-interface {v7, v1, v0}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 308
    return-void
.end method

.method static synthetic access$602(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
    .param p1, "x1"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->requestForRendererSleep:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-object v0
.end method

.method private addMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V
    .registers 7
    .param p1, "addMessage"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;
    .param p2, "insertionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 773
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 775
    const/4 v1, -0x1

    if-ne p2, v1, :cond_10

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->getSize()I

    move-result v1

    goto :goto_11

    :cond_10
    move v1, p2

    .line 776
    :goto_11
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v2

    .line 777
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v3

    .line 774
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/MediaSourceList;->addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 778
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V

    .line 779
    return-void
.end method

.method private attemptRendererErrorRecovery()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 930
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternalAndSeek()V

    .line 931
    return-void
.end method

.method private deliverMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 6
    .param p1, "message"    # Lcom/google/android/exoplayer2/PlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1622
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1623
    return-void

    .line 1626
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getTarget()Lcom/google/android/exoplayer2/PlayerMessage$Target;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPayload()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1c

    .line 1628
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    .line 1629
    nop

    .line 1630
    return-void

    .line 1628
    :catchall_1c
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    .line 1629
    throw v1
.end method

.method private disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 3
    .param p1, "renderer"    # Lcom/google/android/exoplayer2/Renderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1726
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1727
    return-void

    .line 1729
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->onRendererDisabled(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1730
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1731
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    .line 1732
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 1733
    return-void
.end method

.method private doSomeWork()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1010
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->uptimeMillis()J

    move-result-wide v1

    .line 1012
    .local v1, "operationStartTimeMs":J
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    .line 1014
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriods()V

    .line 1016
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_210

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_21

    goto/16 :goto_210

    .line 1022
    :cond_21
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    .line 1023
    .local v3, "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    const-wide/16 v7, 0xa

    if-nez v3, :cond_2f

    .line 1025
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 1026
    return-void

    .line 1029
    :cond_2f
    const-string v9, "doSomeWork"

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1031
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1033
    const/4 v9, 0x1

    .line 1034
    .local v9, "renderersEnded":Z
    const/4 v10, 0x1

    .line 1035
    .local v10, "renderersAllowPlayback":Z
    iget-boolean v11, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    const-wide/16 v12, 0x3e8

    const/4 v14, 0x0

    if-eqz v11, :cond_b4

    .line 1036
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    mul-long v7, v15, v12

    .line 1037
    .local v7, "rendererPositionElapsedRealtimeUs":J
    iget-object v11, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v12, v15, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long/2addr v12, v4

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {v11, v12, v13, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    .line 1039
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_55
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v11, v5

    if-ge v4, v11, :cond_b3

    .line 1040
    aget-object v5, v5, v4

    .line 1041
    .local v5, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-static {v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v11

    if-nez v11, :cond_63

    .line 1042
    goto :goto_b0

    .line 1047
    :cond_63
    iget-wide v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v5, v11, v12, v7, v8}, Lcom/google/android/exoplayer2/Renderer;->render(JJ)V

    .line 1048
    if-eqz v9, :cond_72

    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v11

    if-eqz v11, :cond_72

    const/4 v11, 0x1

    goto :goto_73

    :cond_72
    const/4 v11, 0x0

    :goto_73
    move v9, v11

    .line 1054
    iget-object v11, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v11, v11, v4

    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v12

    if-eq v11, v12, :cond_80

    const/4 v11, 0x1

    goto :goto_81

    :cond_80
    const/4 v11, 0x0

    .line 1055
    .local v11, "isReadingAhead":Z
    :goto_81
    if-nez v11, :cond_8b

    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v12

    if-eqz v12, :cond_8b

    const/4 v12, 0x1

    goto :goto_8c

    :cond_8b
    const/4 v12, 0x0

    .line 1056
    .local v12, "isWaitingForNextStream":Z
    :goto_8c
    if-nez v11, :cond_9f

    if-nez v12, :cond_9f

    .line 1057
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v13

    if-nez v13, :cond_9f

    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v13

    if-eqz v13, :cond_9d

    goto :goto_9f

    :cond_9d
    const/4 v13, 0x0

    goto :goto_a0

    :cond_9f
    :goto_9f
    const/4 v13, 0x1

    .line 1058
    .local v13, "allowsPlayback":Z
    :goto_a0
    if-eqz v10, :cond_a7

    if-eqz v13, :cond_a7

    const/16 v17, 0x1

    goto :goto_a9

    :cond_a7
    const/16 v17, 0x0

    :goto_a9
    move/from16 v10, v17

    .line 1059
    if-nez v13, :cond_b0

    .line 1060
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    .line 1039
    .end local v5    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v11    # "isReadingAhead":Z
    .end local v12    # "isWaitingForNextStream":Z
    .end local v13    # "allowsPlayback":Z
    :cond_b0
    :goto_b0
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 1063
    .end local v4    # "i":I
    .end local v7    # "rendererPositionElapsedRealtimeUs":J
    :cond_b3
    goto :goto_b9

    .line 1064
    :cond_b4
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 1067
    :goto_b9
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    .line 1068
    .local v4, "playingPeriodDurationUs":J
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v9, :cond_d6

    iget-boolean v11, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v11, :cond_d6

    cmp-long v11, v4, v7

    if-eqz v11, :cond_d4

    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v11, v11, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v13, v4, v11

    if-gtz v13, :cond_d6

    :cond_d4
    const/4 v11, 0x1

    goto :goto_d7

    :cond_d6
    const/4 v11, 0x0

    .line 1073
    .local v11, "finishedRendering":Z
    :goto_d7
    if-eqz v11, :cond_e7

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v12, :cond_e7

    .line 1074
    iput-boolean v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 1075
    iget-object v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v12, v12, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    const/4 v13, 0x5

    invoke-direct {v0, v14, v12, v14, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(ZIZI)V

    .line 1081
    :cond_e7
    const/4 v12, 0x3

    if-eqz v11, :cond_f7

    iget-object v13, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v13, v13, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-eqz v13, :cond_f7

    .line 1082
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1083
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_140

    .line 1084
    :cond_f7
    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v13, v13, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_114

    .line 1085
    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldTransitionToReadyState(Z)Z

    move-result v13

    if-eqz v13, :cond_114

    .line 1086
    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1087
    const/4 v13, 0x0

    iput-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 1088
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v13

    if-eqz v13, :cond_140

    .line 1089
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_140

    .line 1091
    :cond_114
    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v13, v13, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v13, v12, :cond_140

    iget v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v13, :cond_125

    .line 1092
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v13

    if-eqz v13, :cond_127

    goto :goto_140

    :cond_125
    if-nez v10, :cond_140

    .line 1093
    :cond_127
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v13

    iput-boolean v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 1094
    const/4 v13, 0x2

    invoke-direct {v0, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1095
    iget-boolean v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    if-eqz v13, :cond_13d

    .line 1096
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifyTrackSelectionRebuffer()V

    .line 1097
    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    invoke-interface {v13}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->notifyRebuffer()V

    .line 1099
    :cond_13d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 1102
    :cond_140
    :goto_140
    const/4 v13, 0x0

    .line 1103
    .local v13, "playbackMaybeStuck":Z
    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v15, v15, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v6, 0x2

    if-ne v15, v6, :cond_187

    .line 1104
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_149
    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v14, v15

    if-ge v6, v14, :cond_16f

    .line 1105
    aget-object v14, v15, v6

    invoke-static {v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v14

    if-eqz v14, :cond_16b

    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v14, v14, v6

    .line 1106
    invoke-interface {v14}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v14

    iget-object v15, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v15, v15, v6

    if-ne v14, v15, :cond_16b

    .line 1107
    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v14, v14, v6

    invoke-interface {v14}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    .line 1104
    :cond_16b
    add-int/lit8 v6, v6, 0x1

    const/4 v14, 0x0

    goto :goto_149

    .line 1110
    .end local v6    # "i":I
    :cond_16f
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    if-nez v6, :cond_187

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v14, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    const-wide/32 v18, 0x7a120

    cmp-long v6, v14, v18

    if-gez v6, :cond_187

    .line 1112
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v6

    if-eqz v6, :cond_187

    .line 1119
    const/4 v13, 0x1

    .line 1123
    :cond_187
    if-nez v13, :cond_18c

    .line 1124
    iput-wide v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    goto :goto_1aa

    .line 1125
    :cond_18c
    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    cmp-long v6, v14, v7

    if-nez v6, :cond_19b

    .line 1126
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    goto :goto_1aa

    .line 1127
    :cond_19b
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    sub-long/2addr v6, v14

    const-wide/16 v14, 0xfa0

    cmp-long v8, v6, v14

    if-gez v8, :cond_208

    .line 1131
    :goto_1aa
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v6

    if-eqz v6, :cond_1b8

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v6, v12, :cond_1b8

    const/4 v6, 0x1

    goto :goto_1b9

    :cond_1b8
    const/4 v6, 0x0

    .line 1132
    .local v6, "isPlaying":Z
    :goto_1b9
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-eqz v7, :cond_1c6

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->requestForRendererSleep:Z

    if-eqz v7, :cond_1c6

    if-eqz v6, :cond_1c6

    const/16 v16, 0x1

    goto :goto_1c8

    :cond_1c6
    const/16 v16, 0x0

    :goto_1c8
    move/from16 v7, v16

    .line 1133
    .local v7, "sleepingForOffload":Z
    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v8, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    if-eq v8, v7, :cond_1d8

    .line 1134
    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithSleepingForOffload(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1136
    :cond_1d8
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->requestForRendererSleep:Z

    .line 1138
    if-nez v7, :cond_204

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v8, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v14, 0x4

    if-ne v8, v14, :cond_1e5

    goto :goto_204

    .line 1140
    :cond_1e5
    if-nez v6, :cond_1ff

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v8, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v14, 0x2

    if-ne v8, v14, :cond_1ef

    goto :goto_1ff

    .line 1143
    :cond_1ef
    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v8, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v8, v12, :cond_204

    iget v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    if-eqz v8, :cond_204

    .line 1145
    const-wide/16 v14, 0x3e8

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_204

    .line 1142
    :cond_1ff
    :goto_1ff
    const-wide/16 v14, 0xa

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 1148
    :cond_204
    :goto_204
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1149
    return-void

    .line 1128
    .end local v6    # "isPlaying":Z
    .end local v7    # "sleepingForOffload":Z
    :cond_208
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Playback stuck buffering and not loading"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1019
    .end local v3    # "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .end local v4    # "playingPeriodDurationUs":J
    .end local v9    # "renderersEnded":Z
    .end local v10    # "renderersAllowPlayback":Z
    .end local v11    # "finishedRendering":Z
    .end local v13    # "playbackMaybeStuck":Z
    :cond_210
    :goto_210
    return-void
.end method

.method private enableRenderer(IZ)V
    .registers 23
    .param p1, "rendererIndex"    # I
    .param p2, "wasRendererEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v1, v1, p1

    .line 2546
    .local v1, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2547
    return-void

    .line 2549
    :cond_d
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v14

    .line 2550
    .local v14, "periodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v14, v2, :cond_1f

    const/4 v9, 0x1

    goto :goto_20

    :cond_1f
    const/4 v9, 0x0

    .line 2551
    .local v9, "mayRenderStartOfStream":Z
    :goto_20
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v15

    .line 2552
    .local v15, "trackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    iget-object v2, v15, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v16, v2, p1

    .line 2554
    .local v16, "rendererConfiguration":Lcom/google/android/exoplayer2/RendererConfiguration;
    iget-object v2, v15, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v17, v2, p1

    .line 2555
    .local v17, "newSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getFormats(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v18

    .line 2557
    .local v18, "formats":[Lcom/google/android/exoplayer2/Format;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3f

    const/4 v2, 0x1

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    :goto_40
    move/from16 v19, v2

    .line 2559
    .local v19, "playing":Z
    if-nez p2, :cond_48

    if-eqz v19, :cond_48

    const/4 v8, 0x1

    goto :goto_49

    :cond_48
    const/4 v8, 0x0

    .line 2561
    .local v8, "joining":Z
    :goto_49
    iget v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 2562
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2563
    iget-object v2, v14, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v2, p1

    iget-wide v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2570
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v10

    .line 2571
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v12

    .line 2563
    move-object v2, v1

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    invoke-interface/range {v2 .. v13}, Lcom/google/android/exoplayer2/Renderer;->enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZZJJ)V

    .line 2572
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V

    const/16 v3, 0xb

    invoke-interface {v1, v3, v2}, Lcom/google/android/exoplayer2/Renderer;->handleMessage(ILjava/lang/Object;)V

    .line 2586
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->onRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)V

    .line 2588
    if-eqz v19, :cond_7d

    .line 2589
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->start()V

    .line 2591
    :cond_7d
    return-void
.end method

.method private enableRenderers()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2521
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([Z)V

    .line 2522
    return-void
.end method

.method private enableRenderers([Z)V
    .registers 7
    .param p1, "rendererWasEnabledFlags"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2525
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2526
    .local v0, "readingMediaPeriod":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 2529
    .local v1, "trackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_2c

    .line 2530
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2531
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->reset()V

    .line 2529
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2535
    .end local v2    # "i":I
    :cond_2c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2d
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_40

    .line 2536
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2537
    aget-boolean v3, p1, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderer(IZ)V

    .line 2535
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 2540
    .end local v2    # "i":I
    :cond_40
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->allRenderersInCorrectState:Z

    .line 2541
    return-void
.end method

.method private ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 4
    .param p1, "renderer"    # Lcom/google/android/exoplayer2/Renderer;

    .line 1720
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1721
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->stop()V

    .line 1723
    :cond_a
    return-void
.end method

.method private extractMetadataFromTrackSelectionArray([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;
    .registers 11
    .param p1, "trackSelections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 2504
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 2505
    .local v0, "result":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/metadata/Metadata;>;"
    const/4 v1, 0x0

    .line 2506
    .local v1, "seenNonEmptyMetadata":Z
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_2b

    aget-object v5, p1, v4

    .line 2507
    .local v5, "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-eqz v5, :cond_28

    .line 2508
    invoke-interface {v5, v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 2509
    .local v6, "format":Lcom/google/android/exoplayer2/Format;
    iget-object v7, v6, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v7, :cond_22

    .line 2510
    new-instance v7, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v8, v3, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_28

    .line 2512
    :cond_22
    iget-object v7, v6, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 2513
    const/4 v1, 0x1

    .line 2506
    .end local v5    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v6    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_28
    :goto_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2517
    :cond_2b
    if-eqz v1, :cond_32

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_36

    :cond_32
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_36
    return-object v2
.end method

.method private getCurrentLiveOffsetUs()J
    .registers 5

    .line 1152
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getLiveOffsetUs(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFormats(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplayer2/Format;
    .registers 5
    .param p0, "newSelection"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 3082
    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 3083
    .local v0, "length":I
    :goto_8
    new-array v1, v0, [Lcom/google/android/exoplayer2/Format;

    .line 3084
    .local v1, "formats":[Lcom/google/android/exoplayer2/Format;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_16

    .line 3085
    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3084
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3087
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method private getLiveOffsetUs(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)J
    .registers 11
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "periodPositionUs"    # J

    .line 1157
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1158
    .local v0, "windowIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1159
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_41

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v1, :cond_29

    goto :goto_41

    .line 1162
    :cond_29
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1163
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    add-long/2addr v3, p3

    sub-long/2addr v1, v3

    .line 1162
    return-wide v1

    .line 1160
    :cond_41
    :goto_41
    return-wide v3
.end method

.method private getMaxRendererReadPositionUs()J
    .registers 10

    .line 2025
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2026
    .local v0, "readingHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-nez v0, :cond_b

    .line 2027
    const-wide/16 v1, 0x0

    return-wide v1

    .line 2029
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    .line 2030
    .local v1, "maxReadPositionUs":J
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v3, :cond_14

    .line 2031
    return-wide v1

    .line 2033
    :cond_14
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    if-ge v3, v5, :cond_47

    .line 2034
    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v3

    .line 2035
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_31

    .line 2037
    goto :goto_44

    .line 2039
    :cond_31
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getReadingPositionUs()J

    move-result-wide v4

    .line 2040
    .local v4, "readingPositionUs":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_40

    .line 2041
    return-wide v6

    .line 2043
    :cond_40
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 2033
    .end local v4    # "readingPositionUs":J
    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 2046
    .end local v3    # "i":I
    :cond_47
    return-wide v1
.end method

.method private getPlaceholderFirstMediaPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;
    .registers 12
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1540
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_15

    .line 1541
    invoke-static {}, Lcom/google/android/exoplayer2/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1543
    :cond_15
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    .line 1544
    .local v0, "firstWindowIndex":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 1545
    move-object v3, p1

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 1548
    .local v3, "firstPeriodAndPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1549
    invoke-virtual {v4, p1, v5, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v4

    .line 1551
    .local v4, "firstPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1552
    .local v5, "positionUs":J
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 1553
    iget-object v7, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v7, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1555
    iget v7, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v9, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v8

    if-ne v7, v8, :cond_5a

    .line 1556
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    goto :goto_5b

    .line 1557
    :cond_5a
    nop

    :goto_5b
    move-wide v5, v1

    .line 1559
    :cond_5c
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private getTotalBufferedDurationUs()J
    .registers 3

    .line 2625
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTotalBufferedDurationUs(J)J
    .registers 8
    .param p1, "bufferedPositionInLoadingPeriodUs"    # J

    .line 2629
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2630
    .local v0, "loadingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_b

    .line 2631
    return-wide v1

    .line 2633
    :cond_b
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2634
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v3

    sub-long v3, p1, v3

    .line 2635
    .local v3, "totalBufferedDurationUs":J
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 5
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 2350
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLoading(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2352
    return-void

    .line 2354
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 2355
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 2356
    return-void
.end method

.method private handleIoException(Ljava/io/IOException;I)V
    .registers 7
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "errorCode"    # I

    .line 680
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 681
    .local v0, "error":Lcom/google/android/exoplayer2/ExoPlaybackException;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 682
    .local v1, "playingPeriod":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-eqz v1, :cond_14

    .line 684
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaPeriodId;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 686
    :cond_14
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Playback error"

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    const/4 v2, 0x0

    invoke-direct {p0, v2, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 688
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 689
    return-void
.end method

.method private handleLoadingMediaPeriodChanged(Z)V
    .registers 8
    .param p1, "loadingTrackSelectionChanged"    # Z

    .line 2601
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2603
    .local v0, "loadingMediaPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-nez v0, :cond_d

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    goto :goto_11

    :cond_d
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2604
    .local v1, "loadingMediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :goto_11
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2605
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 2606
    .local v2, "loadingMediaPeriodChanged":Z
    if-eqz v2, :cond_25

    .line 2607
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2609
    :cond_25
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2610
    if-nez v0, :cond_2c

    .line 2611
    iget-wide v4, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    goto :goto_30

    .line 2612
    :cond_2c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v4

    :goto_30
    iput-wide v4, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 2613
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 2614
    if-nez v2, :cond_3e

    if-eqz p1, :cond_53

    :cond_3e
    if-eqz v0, :cond_53

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_53

    .line 2617
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2619
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    .line 2620
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v5

    .line 2617
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 2622
    :cond_53
    return-void
.end method

.method private handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V
    .registers 30
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "isSourceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1892
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1893
    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePositionForPlaylistChange(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Lcom/google/android/exoplayer2/MediaPeriodQueue;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-result-object v13

    .line 1902
    .local v13, "positionUpdate":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    iget-object v14, v13, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1903
    .local v14, "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-wide v9, v13, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    .line 1904
    .local v9, "newRequestedContentPositionUs":J
    iget-boolean v15, v13, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    .line 1905
    .local v15, "forceBufferingState":Z
    iget-wide v7, v13, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    .line 1906
    .local v7, "newPositionUs":J
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1907
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_37

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v2, v7, v0

    if-eqz v2, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x1

    :goto_38
    move/from16 v16, v0

    .line 1909
    .local v16, "periodPositionChanged":Z
    const/16 v17, 0x3

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x4

    :try_start_42
    iget-boolean v0, v13, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_16d

    if-eqz v0, :cond_61

    .line 1910
    :try_start_46
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v0, v5, :cond_4f

    .line 1911
    invoke-direct {v11, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1913
    :cond_4f
    invoke-direct {v11, v6, v6, v6, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_53

    goto :goto_61

    .line 1939
    :catchall_53
    move-exception v0

    move-wide/from16 v25, v9

    move/from16 v23, v15

    const/4 v4, -0x1

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x1

    const/16 v24, 0x4

    goto/16 :goto_179

    .line 1919
    :cond_61
    :goto_61
    if-nez v16, :cond_8e

    .line 1921
    :try_start_63
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1922
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getMaxRendererReadPositionUs()J

    move-result-wide v22
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_80

    .line 1921
    const/16 v24, 0x4

    move-object/from16 v2, p1

    move-wide/from16 v25, v9

    const/4 v9, 0x0

    const/16 v20, 0x1

    .end local v9    # "newRequestedContentPositionUs":J
    .local v25, "newRequestedContentPositionUs":J
    move-wide/from16 v5, v22

    :try_start_76
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateQueuedPeriods(Lcom/google/android/exoplayer2/Timeline;JJ)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 1923
    invoke-direct {v11, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_c8

    goto :goto_d0

    .line 1939
    .end local v25    # "newRequestedContentPositionUs":J
    .restart local v9    # "newRequestedContentPositionUs":J
    :catchall_80
    move-exception v0

    move-wide/from16 v25, v9

    const/16 v20, 0x1

    const/16 v24, 0x4

    move/from16 v23, v15

    const/4 v4, -0x1

    const/4 v10, 0x0

    const/4 v15, 0x0

    .end local v9    # "newRequestedContentPositionUs":J
    .restart local v25    # "newRequestedContentPositionUs":J
    goto/16 :goto_179

    .line 1925
    .end local v25    # "newRequestedContentPositionUs":J
    .restart local v9    # "newRequestedContentPositionUs":J
    :cond_8e
    move-wide/from16 v25, v9

    const/4 v9, 0x0

    const/16 v20, 0x1

    const/16 v24, 0x4

    .end local v9    # "newRequestedContentPositionUs":J
    .restart local v25    # "newRequestedContentPositionUs":J
    :try_start_95
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_166

    if-nez v0, :cond_d0

    .line 1927
    :try_start_9b
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1928
    .local v0, "periodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :goto_a1
    if-eqz v0, :cond_c0

    .line 1930
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v14}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 1931
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {v1, v12, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 1932
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->updateClipping()V

    .line 1934
    :cond_ba
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    move-object v0, v1

    goto :goto_a1

    .line 1936
    :cond_c0
    invoke-direct {v11, v14, v7, v8, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v1
    :try_end_c4
    .catchall {:try_start_9b .. :try_end_c4} :catchall_c8

    move-wide v7, v1

    move-wide/from16 v21, v7

    goto :goto_d2

    .line 1939
    .end local v0    # "periodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :catchall_c8
    move-exception v0

    move/from16 v23, v15

    const/4 v4, -0x1

    const/4 v10, 0x0

    const/4 v15, 0x0

    goto/16 :goto_179

    :cond_d0
    :goto_d0
    move-wide/from16 v21, v7

    .end local v7    # "newPositionUs":J
    .local v21, "newPositionUs":J
    :goto_d2
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1944
    iget-boolean v0, v13, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v0, :cond_e1

    .line 1945
    move-wide/from16 v6, v21

    goto :goto_e3

    .line 1946
    :cond_e1
    move-wide/from16 v6, v18

    :goto_e3
    const/4 v8, 0x0

    .line 1939
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)V

    .line 1948
    if-nez v16, :cond_fb

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v2, v25, v0

    if-eqz v2, :cond_f7

    goto :goto_fb

    :cond_f7
    move/from16 v23, v15

    const/4 v15, 0x0

    goto :goto_146

    .line 1950
    :cond_fb
    :goto_fb
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1951
    .local v0, "oldPeriodUid":Ljava/lang/Object;
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v10, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1952
    .local v10, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    if-eqz v16, :cond_11a

    if-eqz p2, :cond_11a

    .line 1955
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11a

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1956
    invoke-virtual {v10, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-nez v1, :cond_11a

    goto :goto_11c

    :cond_11a
    const/16 v20, 0x0

    :goto_11c
    const/4 v7, 0x0

    move/from16 v9, v20

    .line 1957
    .local v9, "reportDiscontinuity":Z
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 1964
    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_12d

    .line 1965
    const/16 v17, 0x4

    goto :goto_12e

    .line 1966
    :cond_12d
    nop

    .line 1958
    :goto_12e
    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, v21

    move-wide/from16 v18, v5

    move-wide/from16 v5, v25

    move/from16 v23, v15

    const/4 v15, 0x0

    .end local v15    # "forceBufferingState":Z
    .local v23, "forceBufferingState":Z
    move-wide/from16 v7, v18

    move-object/from16 v18, v10

    .end local v10    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .local v18, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1968
    .end local v0    # "oldPeriodUid":Ljava/lang/Object;
    .end local v9    # "reportDiscontinuity":Z
    .end local v18    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    :goto_146
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 1969
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v11, v12, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePositions(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)V

    .line 1971
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1972
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_161

    .line 1974
    const/4 v10, 0x0

    iput-object v10, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 1976
    :cond_161
    invoke-direct {v11, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1977
    nop

    .line 1978
    return-void

    .line 1939
    .end local v21    # "newPositionUs":J
    .end local v23    # "forceBufferingState":Z
    .restart local v7    # "newPositionUs":J
    .restart local v15    # "forceBufferingState":Z
    :catchall_166
    move-exception v0

    move/from16 v23, v15

    const/4 v4, -0x1

    const/4 v10, 0x0

    const/4 v15, 0x0

    .end local v15    # "forceBufferingState":Z
    .restart local v23    # "forceBufferingState":Z
    goto :goto_179

    .end local v23    # "forceBufferingState":Z
    .end local v25    # "newRequestedContentPositionUs":J
    .local v9, "newRequestedContentPositionUs":J
    .restart local v15    # "forceBufferingState":Z
    :catchall_16d
    move-exception v0

    move-wide/from16 v25, v9

    move/from16 v23, v15

    const/4 v4, -0x1

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x1

    const/16 v24, 0x4

    .end local v9    # "newRequestedContentPositionUs":J
    .end local v15    # "forceBufferingState":Z
    .restart local v23    # "forceBufferingState":Z
    .restart local v25    # "newRequestedContentPositionUs":J
    :goto_179
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v6, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1944
    iget-boolean v1, v13, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v1, :cond_188

    .line 1945
    move-wide/from16 v18, v7

    goto :goto_189

    .line 1946
    :cond_188
    nop

    :goto_189
    const/4 v9, 0x0

    .line 1939
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    const/4 v10, -0x1

    move-object v4, v5

    move-object v5, v6

    move-wide/from16 v21, v7

    .end local v7    # "newPositionUs":J
    .restart local v21    # "newPositionUs":J
    move-wide/from16 v6, v18

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)V

    .line 1948
    if-nez v16, :cond_1a7

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v3, v25, v1

    if-eqz v3, :cond_1a5

    goto :goto_1a7

    :cond_1a5
    const/4 v15, 0x0

    goto :goto_1eb

    .line 1950
    :cond_1a7
    :goto_1a7
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1951
    .local v7, "oldPeriodUid":Ljava/lang/Object;
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1952
    .local v8, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    if-eqz v16, :cond_1c7

    if-eqz p2, :cond_1c7

    .line 1955
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c7

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1956
    invoke-virtual {v8, v7, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-nez v1, :cond_1c7

    const/4 v9, 0x1

    goto :goto_1c8

    :cond_1c7
    const/4 v9, 0x0

    .line 1957
    .local v9, "reportDiscontinuity":Z
    :goto_1c8
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 1964
    invoke-virtual {v12, v7}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v10, :cond_1d4

    .line 1965
    const/4 v10, 0x4

    goto :goto_1d5

    .line 1966
    :cond_1d4
    const/4 v10, 0x3

    .line 1958
    :goto_1d5
    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, v21

    move-wide/from16 v17, v5

    move-wide/from16 v5, v25

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    .end local v7    # "oldPeriodUid":Ljava/lang/Object;
    .end local v8    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    .local v19, "oldPeriodUid":Ljava/lang/Object;
    .local v20, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    move-wide/from16 v7, v17

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1968
    .end local v9    # "reportDiscontinuity":Z
    .end local v19    # "oldPeriodUid":Ljava/lang/Object;
    .end local v20    # "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    :goto_1eb
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 1969
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v11, v12, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePositions(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)V

    .line 1971
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1972
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_205

    .line 1974
    iput-object v15, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 1976
    :cond_205
    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1977
    goto :goto_20b

    :goto_20a
    throw v0

    :goto_20b
    goto :goto_20a
.end method

.method private handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 14
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2322
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLoading(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2324
    return-void

    .line 2326
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2327
    .local v0, "loadingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 2328
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2327
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->handlePrepared(FLcom/google/android/exoplayer2/Timeline;)V

    .line 2329
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2331
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    .line 2332
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v3

    .line 2329
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 2333
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-ne v0, v1, :cond_58

    .line 2335
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 2336
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers()V

    .line 2337
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    const/4 v10, 0x0

    const/4 v11, 0x5

    .line 2338
    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2346
    :cond_58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 2347
    return-void
.end method

.method private handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V
    .registers 10
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;
    .param p2, "currentPlaybackSpeed"    # F
    .param p3, "updatePlaybackInfo"    # Z
    .param p4, "acknowledgeCommand"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2374
    if-eqz p3, :cond_12

    .line 2375
    if-eqz p4, :cond_a

    .line 2376
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 2378
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2380
    :cond_12
    iget v0, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateTrackSelectionPlaybackSpeed(F)V

    .line 2381
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 2382
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    if-eqz v3, :cond_26

    .line 2383
    iget v4, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-interface {v3, p2, v4}, Lcom/google/android/exoplayer2/Renderer;->setPlaybackSpeed(FF)V

    .line 2381
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 2387
    :cond_29
    return-void
.end method

.method private handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V
    .registers 5
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;
    .param p2, "acknowledgeCommand"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2361
    iget v0, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V

    .line 2366
    return-void
.end method

.method private handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;
    .registers 28
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "positionUs"    # J
    .param p4, "requestedContentPositionUs"    # J
    .param p6, "discontinuityStartPositionUs"    # J
    .param p8, "reportDiscontinuity"    # Z
    .param p9, "discontinuityReason"    # I

    .line 2457
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-wide/from16 v12, p4

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-nez v1, :cond_1f

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v3, p2, v1

    if-nez v3, :cond_1f

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2460
    invoke-virtual {v14, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    :goto_20
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 2461
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2462
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 2463
    .local v1, "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 2464
    .local v2, "trackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2465
    .local v3, "staticMetadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/Metadata;>;"
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2466
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v4

    .line 2468
    .local v4, "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-nez v4, :cond_44

    .line 2469
    sget-object v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_48

    .line 2470
    :cond_44
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    :goto_48
    move-object v1, v5

    .line 2472
    if-nez v4, :cond_4e

    .line 2473
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_52

    .line 2474
    :cond_4e
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v5

    :goto_52
    move-object v2, v5

    .line 2475
    iget-object v5, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->extractMetadataFromTrackSelectionArray([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 2477
    if-eqz v4, :cond_84

    iget-object v5, v4, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v7, v5, v12

    if-eqz v7, :cond_84

    .line 2479
    iget-object v5, v4, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 2480
    invoke-virtual {v5, v12, v13}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    goto :goto_84

    .line 2482
    .end local v4    # "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :cond_6c
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v14, v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    .line 2484
    sget-object v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 2485
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 2486
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_89

    .line 2482
    :cond_84
    :goto_84
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 2488
    .end local v1    # "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .end local v2    # "trackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .end local v3    # "staticMetadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/Metadata;>;"
    .local v15, "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .local v16, "trackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .local v17, "staticMetadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/Metadata;>;"
    :goto_89
    if-eqz p8, :cond_93

    .line 2489
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    move/from16 v11, p9

    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    goto :goto_95

    .line 2488
    :cond_93
    move/from16 v11, p9

    .line 2491
    :goto_95
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2496
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v9

    .line 2491
    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    return-object v1
.end method

.method private hasReachedServerSideInsertedAdsTransition(Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z
    .registers 9
    .param p1, "renderer"    # Lcom/google/android/exoplayer2/Renderer;
    .param p2, "reading"    # Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 2293
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2299
    .local v0, "nextPeriod":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_24

    instance-of v1, p1, Lcom/google/android/exoplayer2/text/TextRenderer;

    if-nez v1, :cond_22

    instance-of v1, p1, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;

    if-nez v1, :cond_22

    .line 2303
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getReadingPositionUs()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_24

    :cond_22
    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 2299
    :goto_25
    return v1
.end method

.method private hasReadingPeriodFinishedReading()Z
    .registers 7

    .line 2273
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2274
    .local v0, "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2275
    return v2

    .line 2277
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v3

    if-ge v1, v4, :cond_31

    .line 2278
    aget-object v3, v3, v1

    .line 2279
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v4, v4, v1

    .line 2280
    .local v4, "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    if-ne v5, v4, :cond_30

    if-eqz v4, :cond_2d

    .line 2282
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 2283
    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->hasReachedServerSideInsertedAdsTransition(Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_30

    .line 2277
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v4    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2285
    .restart local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .restart local v4    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_30
    :goto_30
    return v2

    .line 2288
    .end local v1    # "i":I
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v4    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_31
    const/4 v1, 0x1

    return v1
.end method

.method private static isIgnorableServerSideAdInsertionPeriodChange(ZLcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;J)Z
    .registers 12
    .param p0, "isUsingPlaceholderPeriod"    # Z
    .param p1, "oldPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "oldContentPositionUs"    # J
    .param p4, "newPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p5, "newPeriod"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p6, "newContentPositionUs"    # J

    .line 2836
    const/4 v0, 0x0

    if-nez p0, :cond_4b

    cmp-long v1, p2, p6

    if-nez v1, :cond_4b

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2838
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_4b

    .line 2842
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p5, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2844
    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p5, v1, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdState(II)I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_39

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 2846
    invoke-virtual {p5, v1, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdState(II)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_39

    const/4 v0, 0x1

    goto :goto_3a

    :cond_39
    nop

    .line 2844
    :goto_3a
    return v0

    .line 2850
    :cond_3b
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget v1, p4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p5, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v0, 0x1

    :cond_4a
    return v0

    .line 2840
    :cond_4b
    :goto_4b
    return v0
.end method

.method private isLoadingPossible()Z
    .registers 8

    .line 2429
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2430
    .local v0, "loadingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2431
    return v1

    .line 2433
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v2

    .line 2434
    .local v2, "nextLoadPositionUs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_15

    .line 2435
    return v1

    .line 2437
    :cond_15
    const/4 v1, 0x1

    return v1
.end method

.method private static isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z
    .registers 2
    .param p0, "renderer"    # Lcom/google/android/exoplayer2/Renderer;

    .line 3091
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isTimelineReady()Z
    .registers 7

    .line 1882
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1883
    .local v0, "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    .line 1884
    .local v1, "playingPeriodDurationUs":J
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_27

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_25

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v5, v3, v1

    if-ltz v5, :cond_25

    .line 1887
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v3

    if-nez v3, :cond_27

    :cond_25
    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    .line 1884
    :goto_28
    return v3
.end method

.method private static isUsingPlaceholderPeriod(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline$Period;)Z
    .registers 5
    .param p0, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p1, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2855
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2856
    .local v0, "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2857
    .local v1, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-eqz v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v2, 0x1

    :goto_18
    return v2
.end method

.method private maybeContinueLoading()V
    .registers 4

    .line 2390
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 2391
    if-eqz v0, :cond_13

    .line 2392
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->continueLoading(J)V

    .line 2394
    :cond_13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateIsLoading()V

    .line 2395
    return-void
.end method

.method private maybeNotifyPlaybackInfoChanged()V
    .registers 3

    .line 731
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    .line 732
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$100(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 733
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 734
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 736
    :cond_1f
    return-void
.end method

.method private maybeTriggerPendingMessages(JJ)V
    .registers 13
    .param p1, "oldPeriodPositionUs"    # J
    .param p3, "newPeriodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1657
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10c

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_10c

    .line 1662
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-eqz v0, :cond_1e

    .line 1663
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 1664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 1668
    :cond_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1669
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 1670
    .local v0, "currentPeriodIndex":I
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1672
    .local v1, "nextPendingMessageIndex":I
    const/4 v2, 0x0

    if-lez v1, :cond_46

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_47

    :cond_46
    move-object v3, v2

    .line 1673
    .local v3, "previousInfo":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
    :goto_47
    if-eqz v3, :cond_69

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-gt v4, v0, :cond_57

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_69

    iget-wide v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_69

    .line 1677
    :cond_57
    add-int/lit8 v1, v1, -0x1

    .line 1679
    if-lez v1, :cond_66

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_67

    :cond_66
    move-object v4, v2

    :goto_67
    move-object v3, v4

    goto :goto_47

    .line 1682
    :cond_69
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7a

    .line 1683
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_7b

    .line 1684
    :cond_7a
    move-object v4, v2

    :goto_7b
    nop

    .line 1685
    .local v4, "nextInfo":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
    :goto_7c
    if-eqz v4, :cond_a6

    iget-object v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v5, :cond_a6

    iget v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-lt v5, v0, :cond_90

    iget v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v5, v0, :cond_a6

    iget-wide v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v7, v5, p1

    if-gtz v7, :cond_a6

    .line 1690
    :cond_90
    add-int/lit8 v1, v1, 0x1

    .line 1692
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_a3

    .line 1693
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_a4

    .line 1694
    :cond_a3
    move-object v5, v2

    :goto_a4
    move-object v4, v5

    goto :goto_7c

    .line 1697
    :cond_a6
    :goto_a6
    if-eqz v4, :cond_109

    iget-object v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v5, :cond_109

    iget v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v5, v0, :cond_109

    iget-wide v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v7, v5, p1

    if-lez v7, :cond_109

    iget-wide v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v7, v5, p3

    if-gtz v7, :cond_109

    .line 1703
    :try_start_bc
    iget-object v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageToTarget(Lcom/google/android/exoplayer2/PlayerMessage;)V
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_ee

    .line 1705
    iget-object v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v5

    if-nez v5, :cond_d5

    iget-object v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_d2

    goto :goto_d5

    .line 1708
    :cond_d2
    add-int/lit8 v1, v1, 0x1

    .line 1710
    goto :goto_da

    .line 1706
    :cond_d5
    :goto_d5
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1712
    :goto_da
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_eb

    .line 1713
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_ec

    .line 1714
    :cond_eb
    move-object v5, v2

    :goto_ec
    move-object v4, v5

    goto :goto_a6

    .line 1705
    :catchall_ee
    move-exception v2

    iget-object v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v5

    if-nez v5, :cond_103

    iget-object v5, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_100

    goto :goto_103

    .line 1708
    :cond_100
    add-int/lit8 v1, v1, 0x1

    goto :goto_108

    .line 1706
    :cond_103
    :goto_103
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1710
    :goto_108
    throw v2

    .line 1716
    :cond_109
    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    .line 1717
    return-void

    .line 1658
    .end local v0    # "currentPeriodIndex":I
    .end local v1    # "nextPendingMessageIndex":I
    .end local v3    # "previousInfo":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
    .end local v4    # "nextInfo":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
    :cond_10c
    :goto_10c
    return-void
.end method

.method private maybeUpdateLoadingPeriod()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2061
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 2062
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shouldLoadNextMediaPeriod()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2064
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getNextMediaPeriodInfo(JLcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    .line 2065
    .local v0, "info":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    if-eqz v0, :cond_48

    .line 2066
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 2070
    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 2067
    move-object v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->enqueueNextMediaPeriodHolder([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 2074
    .local v1, "mediaPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 2075
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    if-ne v2, v1, :cond_44

    .line 2076
    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 2078
    :cond_44
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 2081
    .end local v0    # "info":Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .end local v1    # "mediaPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :cond_48
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v0, :cond_56

    .line 2084
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 2085
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateIsLoading()V

    goto :goto_59

    .line 2087
    :cond_56
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 2089
    :goto_59
    return-void
.end method

.method private maybeUpdatePlayingPeriod()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2222
    move-object/from16 v10, p0

    const/4 v0, 0x0

    move v11, v0

    .line 2223
    .local v11, "advancedPlayingPeriod":Z
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldAdvancePlayingPeriod()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2224
    if-eqz v11, :cond_f

    .line 2226
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 2228
    :cond_f
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 2229
    .local v12, "newPlayingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, v12, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2230
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_51

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_51

    iget-object v0, v12, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v0, v3, :cond_51

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget-object v3, v12, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v0, v3, :cond_51

    const/4 v0, 0x1

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    move v13, v0

    .line 2235
    .local v13, "isCancelledSSAIAdTransition":Z
    iget-object v0, v12, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v12, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-object v0, v12, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-object v0, v12, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    if-nez v13, :cond_67

    const/4 v14, 0x1

    goto :goto_68

    :cond_67
    const/4 v14, 0x0

    :goto_68
    const/4 v15, 0x0

    .line 2236
    move-object/from16 v0, p0

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move v8, v14

    move v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2243
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2244
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 2245
    const/4 v11, 0x1

    .line 2246
    .end local v12    # "newPlayingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .end local v13    # "isCancelledSSAIAdTransition":Z
    goto :goto_4

    .line 2247
    :cond_7f
    return-void
.end method

.method private maybeUpdateReadingPeriod()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2092
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2093
    .local v0, "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-nez v0, :cond_9

    .line 2094
    return-void

    .line 2097
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_c1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_1a

    goto/16 :goto_c1

    .line 2121
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->hasReadingPeriodFinishedReading()Z

    move-result v1

    if-nez v1, :cond_21

    .line 2122
    return-void

    .line 2125
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v1, :cond_38

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2126
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_38

    .line 2128
    return-void

    .line 2131
    :cond_38
    move-object v1, v0

    .line 2132
    .local v1, "oldReadingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v4

    .line 2133
    .local v4, "oldTrackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advanceReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2134
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v5

    .line 2136
    .local v5, "newTrackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v8, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v9, v6, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v10, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v11, v6, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)V

    .line 2144
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v6, :cond_78

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 2145
    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-eqz v8, :cond_78

    .line 2148
    nop

    .line 2149
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v2

    .line 2148
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setAllRendererStreamsFinal(J)V

    .line 2150
    return-void

    .line 2152
    :cond_78
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_79
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_c0

    .line 2153
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    .line 2154
    .local v3, "oldRendererEnabled":Z
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    .line 2155
    .local v6, "newRendererEnabled":Z
    if-eqz v3, :cond_bd

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v7, v7, v2

    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v7

    if-nez v7, :cond_bd

    .line 2156
    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v7, v7, v2

    invoke-interface {v7}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v7

    const/4 v8, -0x2

    if-ne v7, v8, :cond_9f

    const/4 v7, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v7, 0x0

    .line 2157
    .local v7, "isNoSampleRenderer":Z
    :goto_a0
    iget-object v8, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v8, v8, v2

    .line 2158
    .local v8, "oldConfig":Lcom/google/android/exoplayer2/RendererConfiguration;
    iget-object v9, v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v9, v9, v2

    .line 2159
    .local v9, "newConfig":Lcom/google/android/exoplayer2/RendererConfiguration;
    if-eqz v6, :cond_b2

    invoke-virtual {v9, v8}, Lcom/google/android/exoplayer2/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b2

    if-eqz v7, :cond_bd

    .line 2165
    :cond_b2
    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v10, v10, v2

    .line 2167
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v11

    .line 2165
    invoke-direct {p0, v10, v11, v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setCurrentStreamFinal(Lcom/google/android/exoplayer2/Renderer;J)V

    .line 2152
    .end local v3    # "oldRendererEnabled":Z
    .end local v6    # "newRendererEnabled":Z
    .end local v7    # "isNoSampleRenderer":Z
    .end local v8    # "oldConfig":Lcom/google/android/exoplayer2/RendererConfiguration;
    .end local v9    # "newConfig":Lcom/google/android/exoplayer2/RendererConfiguration;
    :cond_bd
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 2171
    .end local v2    # "i":I
    :cond_c0
    return-void

    .line 2100
    .end local v1    # "oldReadingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .end local v4    # "oldTrackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .end local v5    # "newTrackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    :cond_c1
    :goto_c1
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-nez v1, :cond_cb

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_109

    .line 2101
    :cond_cb
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_cc
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    if-ge v1, v5, :cond_109

    .line 2102
    aget-object v4, v4, v1

    .line 2103
    .local v4, "renderer":Lcom/google/android/exoplayer2/Renderer;
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v5, v1

    .line 2106
    .local v5, "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    if-eqz v5, :cond_106

    .line 2107
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v6

    if-ne v6, v5, :cond_106

    .line 2108
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v6

    if-eqz v6, :cond_106

    .line 2111
    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_101

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v10, v6, v8

    if-eqz v10, :cond_101

    .line 2112
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v6

    iget-object v8, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    add-long/2addr v6, v8

    goto :goto_102

    .line 2113
    :cond_101
    move-wide v6, v2

    :goto_102
    nop

    .line 2114
    .local v6, "streamEndPositionUs":J
    invoke-direct {p0, v4, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setCurrentStreamFinal(Lcom/google/android/exoplayer2/Renderer;J)V

    .line 2101
    .end local v4    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v5    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    .end local v6    # "streamEndPositionUs":J
    :cond_106
    add-int/lit8 v1, v1, 0x1

    goto :goto_cc

    .line 2118
    .end local v1    # "i":I
    :cond_109
    return-void
.end method

.method private maybeUpdateReadingRenderers()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2174
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2175
    .local v0, "readingPeriod":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 2176
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eq v1, v0, :cond_1f

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v1, :cond_15

    goto :goto_1f

    .line 2181
    :cond_15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->replaceStreamsOrDisableRendererForTransition()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2182
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers()V

    .line 2184
    :cond_1e
    return-void

    .line 2179
    :cond_1f
    :goto_1f
    return-void
.end method

.method private mediaSourceListUpdateRequestedInternal()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 802
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 801
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V

    .line 803
    return-void
.end method

.method private moveMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;)V
    .registers 7
    .param p1, "moveMediaItemsMessage"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 784
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->fromIndex:I

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->toIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->newFromIndex:I

    iget-object v4, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 785
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/MediaSourceList;->moveMediaSourceRange(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 790
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V

    .line 791
    return-void
.end method

.method private notifyTrackSelectionDiscontinuity()V
    .registers 6

    .line 1834
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1835
    .local v0, "periodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :goto_6
    if-eqz v0, :cond_21

    .line 1836
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 1837
    .local v4, "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-eqz v4, :cond_19

    .line 1838
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onDiscontinuity()V

    .line 1836
    .end local v4    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1841
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    .line 1843
    :cond_21
    return-void
.end method

.method private notifyTrackSelectionPlayWhenReadyChanged(Z)V
    .registers 7
    .param p1, "playWhenReady"    # Z

    .line 812
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 813
    .local v0, "periodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :goto_6
    if-eqz v0, :cond_21

    .line 814
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 815
    .local v4, "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-eqz v4, :cond_19

    .line 816
    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    .line 814
    .end local v4    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 819
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    .line 821
    :cond_21
    return-void
.end method

.method private notifyTrackSelectionRebuffer()V
    .registers 6

    .line 998
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 999
    .local v0, "periodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :goto_6
    if-eqz v0, :cond_21

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 1001
    .local v4, "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-eqz v4, :cond_19

    .line 1002
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onRebuffer()V

    .line 1000
    .end local v4    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1005
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    .line 1007
    :cond_21
    return-void
.end method

.method private prepareInternal()V
    .registers 4

    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 740
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 745
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onPrepared()V

    .line 746
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x2

    :goto_1d
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 747
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/MediaSourceList;->prepare(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 748
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 749
    return-void
.end method

.method private releaseInternal()V
    .registers 3

    .line 1424
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1429
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseRenderers()V

    .line 1430
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onReleased()V

    .line 1431
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1432
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_17

    .line 1433
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1435
    :cond_17
    monitor-enter p0

    .line 1436
    :try_start_18
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    .line 1437
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1438
    monitor-exit p0

    .line 1439
    return-void

    .line 1438
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private releaseRenderers()V
    .registers 3

    .line 2594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 2595
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->clearListener()V

    .line 2596
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->release()V

    .line 2594
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2598
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private removeMediaItemsInternal(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 796
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/MediaSourceList;->removeMediaSourceRange(IILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 797
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V

    .line 798
    return-void
.end method

.method private replaceStreamsOrDisableRendererForTransition()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2187
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2188
    .local v0, "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 2189
    .local v1, "newTrackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    const/4 v2, 0x0

    .line 2190
    .local v2, "needsToWaitForRendererToEnd":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    if-ge v3, v5, :cond_5f

    .line 2191
    aget-object v4, v4, v3

    .line 2192
    .local v4, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-static {v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 2193
    goto :goto_5c

    .line 2195
    :cond_1a
    nop

    .line 2196
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v6, v6, v3

    if-eq v5, v6, :cond_27

    const/4 v5, 0x1

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    .line 2197
    .local v5, "rendererIsReadingOldStream":Z
    :goto_28
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v13

    .line 2198
    .local v13, "rendererShouldBeEnabled":Z
    if-eqz v13, :cond_31

    if-nez v5, :cond_31

    .line 2200
    goto :goto_5c

    .line 2202
    :cond_31
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v6

    if-nez v6, :cond_51

    .line 2204
    iget-object v6, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getFormats(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v14

    .line 2205
    .local v14, "formats":[Lcom/google/android/exoplayer2/Format;
    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v8, v6, v3

    .line 2208
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v9

    .line 2209
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v11

    .line 2205
    move-object v6, v4

    move-object v7, v14

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/Renderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JJ)V

    .line 2210
    .end local v14    # "formats":[Lcom/google/android/exoplayer2/Format;
    goto :goto_5c

    :cond_51
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 2212
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    goto :goto_5c

    .line 2215
    :cond_5b
    const/4 v2, 0x1

    .line 2190
    .end local v4    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v5    # "rendererIsReadingOldStream":Z
    .end local v13    # "rendererShouldBeEnabled":Z
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2218
    .end local v3    # "i":I
    :cond_5f
    xor-int/lit8 v3, v2, 0x1

    return v3
.end method

.method private reselectTracksInternal()V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1741
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v11, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 1743
    .local v11, "playbackSpeed":F
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1744
    .local v0, "periodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v12

    .line 1745
    .local v12, "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    const/4 v1, 0x1

    move-object v13, v0

    move v14, v1

    .line 1748
    .end local v0    # "periodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .local v13, "periodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .local v14, "selectionsChangedForReadPeriod":Z
    :goto_19
    if-eqz v13, :cond_120

    iget-boolean v0, v13, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_26

    move/from16 v22, v11

    move-object v0, v12

    move/from16 v20, v14

    goto/16 :goto_125

    .line 1752
    :cond_26
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v13, v11, v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->selectTracks(FLcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v15

    .line 1753
    .local v15, "newTrackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Z

    move-result v0

    if-nez v0, :cond_108

    .line 1755
    nop

    .line 1764
    const/4 v0, 0x0

    const/4 v9, 0x4

    if-eqz v14, :cond_d0

    .line 1766
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v7

    .line 1767
    .local v7, "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v16

    .line 1769
    .local v16, "recreateStreams":Z
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v1

    new-array v6, v1, [Z

    .line 1770
    .local v6, "streamResetFlags":[Z
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 1771
    move-object v1, v7

    move-object v2, v15

    move/from16 v5, v16

    move-object/from16 v17, v6

    .end local v6    # "streamResetFlags":[Z
    .local v17, "streamResetFlags":[Z
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->applyTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v4

    .line 1773
    .local v4, "periodPositionUs":J
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v1, v9, :cond_6b

    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v3, v4, v1

    if-eqz v3, :cond_6b

    const/4 v0, 0x1

    :cond_6b
    move/from16 v18, v0

    .line 1776
    .local v18, "hasDiscontinuity":Z
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    const/16 v19, 0x5

    .line 1777
    move-object/from16 v0, p0

    move-wide/from16 v20, v2

    move-wide v2, v4

    move/from16 v22, v11

    move-object/from16 v23, v12

    move-wide v11, v4

    .end local v4    # "periodPositionUs":J
    .end local v12    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .local v11, "periodPositionUs":J
    .local v22, "playbackSpeed":F
    .local v23, "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    move-wide/from16 v4, v20

    move/from16 v20, v14

    move-object v14, v7

    .end local v7    # "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .local v14, "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .local v20, "selectionsChangedForReadPeriod":Z
    move-wide v6, v8

    const/4 v9, 0x1

    move/from16 v8, v18

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1784
    if-eqz v18, :cond_9b

    .line 1785
    invoke-direct {v10, v11, v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1788
    :cond_9b
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    .line 1789
    .local v0, "rendererWasEnabledFlags":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a1
    iget-object v2, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    if-ge v1, v3, :cond_cc

    .line 1790
    aget-object v2, v2, v1

    .line 1791
    .local v2, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-static {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 1792
    iget-object v3, v14, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v3, v3, v1

    .line 1793
    .local v3, "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    aget-boolean v4, v0, v1

    if-eqz v4, :cond_c9

    .line 1794
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    if-eq v3, v4, :cond_c0

    .line 1796
    invoke-direct {v10, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    goto :goto_c9

    .line 1797
    :cond_c0
    aget-boolean v4, v17, v1

    if-eqz v4, :cond_c9

    .line 1799
    iget-wide v4, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    .line 1789
    .end local v2    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    .end local v3    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    :cond_c9
    :goto_c9
    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 1803
    .end local v1    # "i":I
    :cond_cc
    invoke-direct {v10, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([Z)V

    .line 1804
    .end local v0    # "rendererWasEnabledFlags":[Z
    .end local v11    # "periodPositionUs":J
    .end local v14    # "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .end local v16    # "recreateStreams":Z
    .end local v17    # "streamResetFlags":[Z
    .end local v18    # "hasDiscontinuity":Z
    goto :goto_f0

    .line 1806
    .end local v20    # "selectionsChangedForReadPeriod":Z
    .end local v22    # "playbackSpeed":F
    .end local v23    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .local v11, "playbackSpeed":F
    .restart local v12    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .local v14, "selectionsChangedForReadPeriod":Z
    :cond_d0
    move/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v20, v14

    .end local v11    # "playbackSpeed":F
    .end local v12    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .end local v14    # "selectionsChangedForReadPeriod":Z
    .restart local v20    # "selectionsChangedForReadPeriod":Z
    .restart local v22    # "playbackSpeed":F
    .restart local v23    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    .line 1807
    iget-boolean v1, v13, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_f0

    .line 1808
    iget-object v1, v13, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v3, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1809
    invoke-virtual {v13, v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1810
    .local v1, "loadingPeriodPositionUs":J
    invoke-virtual {v13, v15, v1, v2, v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->applyTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ)J

    .line 1813
    .end local v1    # "loadingPeriodPositionUs":J
    :cond_f0
    :goto_f0
    const/4 v0, 0x1

    invoke-direct {v10, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1814
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_107

    .line 1815
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1816
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1817
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 1819
    :cond_107
    return-void

    .line 1757
    .end local v20    # "selectionsChangedForReadPeriod":Z
    .end local v22    # "playbackSpeed":F
    .end local v23    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .restart local v11    # "playbackSpeed":F
    .restart local v12    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .restart local v14    # "selectionsChangedForReadPeriod":Z
    :cond_108
    move/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v20, v14

    .end local v11    # "playbackSpeed":F
    .end local v12    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .end local v14    # "selectionsChangedForReadPeriod":Z
    .restart local v20    # "selectionsChangedForReadPeriod":Z
    .restart local v22    # "playbackSpeed":F
    .restart local v23    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    move-object/from16 v0, v23

    .end local v23    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .local v0, "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-ne v13, v0, :cond_115

    .line 1759
    const/4 v1, 0x0

    move v14, v1

    .end local v20    # "selectionsChangedForReadPeriod":Z
    .local v1, "selectionsChangedForReadPeriod":Z
    goto :goto_117

    .line 1757
    .end local v1    # "selectionsChangedForReadPeriod":Z
    .restart local v20    # "selectionsChangedForReadPeriod":Z
    :cond_115
    move/from16 v14, v20

    .line 1761
    .end local v20    # "selectionsChangedForReadPeriod":Z
    .restart local v14    # "selectionsChangedForReadPeriod":Z
    :goto_117
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v13

    move-object v12, v0

    move/from16 v11, v22

    goto/16 :goto_19

    .line 1748
    .end local v0    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .end local v15    # "newTrackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .end local v22    # "playbackSpeed":F
    .restart local v11    # "playbackSpeed":F
    .restart local v12    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :cond_120
    move/from16 v22, v11

    move-object v0, v12

    move/from16 v20, v14

    .line 1750
    .end local v11    # "playbackSpeed":F
    .end local v12    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .end local v14    # "selectionsChangedForReadPeriod":Z
    .restart local v0    # "readingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .restart local v20    # "selectionsChangedForReadPeriod":Z
    .restart local v22    # "playbackSpeed":F
    :goto_125
    return-void
.end method

.method private reselectTracksInternalAndSeek()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1736
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    .line 1737
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    .line 1738
    return-void
.end method

.method private resetInternal(ZZZZ)V
    .registers 41
    .param p1, "resetRenderers"    # Z
    .param p2, "resetPosition"    # Z
    .param p3, "releaseMediaSourceList"    # Z
    .param p4, "resetError"    # Z

    .line 1446
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    .line 1447
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 1448
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 1449
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->stop()V

    .line 1450
    const-wide v4, 0xe8d4a51000L

    iput-wide v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1451
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1e
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_33

    aget-object v8, v4, v6

    .line 1453
    .local v8, "renderer":Lcom/google/android/exoplayer2/Renderer;
    :try_start_24
    invoke-direct {v1, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V
    :try_end_27
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_24 .. :try_end_27} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_27} :catch_28

    .line 1457
    goto :goto_30

    .line 1454
    :catch_28
    move-exception v0

    goto :goto_2b

    :catch_2a
    move-exception v0

    .line 1456
    .local v0, "e":Ljava/lang/Exception;
    :goto_2b
    const-string v9, "Disable failed."

    invoke-static {v7, v9, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1451
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :goto_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 1459
    :cond_33
    if-eqz p1, :cond_54

    .line 1460
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_39
    if-ge v6, v5, :cond_54

    aget-object v8, v4, v6

    .line 1461
    .restart local v8    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1463
    :try_start_45
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->reset()V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_48} :catch_49

    .line 1467
    goto :goto_51

    .line 1464
    :catch_49
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 1466
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v9, "Reset failed."

    invoke-static {v7, v9, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1460
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_51
    :goto_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 1471
    :cond_54
    iput v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 1473
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1474
    .local v0, "mediaPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 1476
    .local v4, "startPositionUs":J
    iget-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-nez v6, :cond_78

    iget-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isUsingPlaceholderPeriod(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v6

    if-eqz v6, :cond_73

    goto :goto_78

    .line 1478
    :cond_73
    iget-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    goto :goto_7c

    .line 1477
    :cond_78
    :goto_78
    iget-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 1478
    :goto_7c
    nop

    .line 1479
    .local v6, "requestedContentPositionUs":J
    const/4 v8, 0x0

    .line 1480
    .local v8, "resetTrackInfo":Z
    if-eqz p2, :cond_b5

    .line 1481
    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 1482
    iget-object v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v9, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1483
    invoke-direct {v1, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v9

    .line 1484
    .local v9, "firstPeriodAndPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Long;>;"
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1485
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1486
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1487
    iget-object v10, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v10, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ae

    .line 1488
    const/4 v8, 0x1

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move/from16 v34, v8

    goto :goto_bb

    .line 1487
    :cond_ae
    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move/from16 v34, v8

    goto :goto_bb

    .line 1480
    .end local v9    # "firstPeriodAndPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Long;>;"
    :cond_b5
    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move/from16 v34, v8

    .line 1492
    .end local v4    # "startPositionUs":J
    .end local v6    # "requestedContentPositionUs":J
    .end local v8    # "resetTrackInfo":Z
    .local v30, "startPositionUs":J
    .local v32, "requestedContentPositionUs":J
    .local v34, "resetTrackInfo":Z
    :goto_bb
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->clear()V

    .line 1493
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 1495
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1496
    .local v3, "timeline":Lcom/google/android/exoplayer2/Timeline;
    if-eqz p3, :cond_102

    instance-of v4, v3, Lcom/google/android/exoplayer2/PlaylistTimeline;

    if-eqz v4, :cond_102

    .line 1499
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    check-cast v4, Lcom/google/android/exoplayer2/PlaylistTimeline;

    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 1501
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaSourceList;->getShuffleOrder()Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/PlaylistTimeline;->copyWithPlaceholderTimeline(Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/PlaylistTimeline;

    move-result-object v3

    .line 1502
    iget v4, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_102

    .line 1503
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1504
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v4, v4, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result v4

    if-eqz v4, :cond_102

    .line 1508
    new-instance v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    move-object v0, v4

    .line 1513
    :cond_102
    new-instance v15, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v11, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 1520
    if-eqz p4, :cond_10b

    goto :goto_10f

    :cond_10b
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    :goto_10f
    move-object v12, v2

    const/4 v13, 0x0

    .line 1522
    if-eqz v34, :cond_116

    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_11a

    :cond_116
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_11a
    move-object v14, v2

    .line 1523
    if-eqz v34, :cond_120

    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_124

    :cond_120
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1524
    :goto_124
    if-eqz v34, :cond_12b

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    goto :goto_12f

    :cond_12b
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    :goto_12f
    move-object/from16 v16, v4

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move/from16 v18, v4

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v19, v4

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v20, v4

    const-wide/16 v23, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    move-object v4, v15

    move-object v5, v3

    move-object v6, v0

    move-wide/from16 v7, v32

    move-wide/from16 v9, v30

    move-object/from16 v35, v15

    move-object v15, v2

    move-object/from16 v17, v0

    move-wide/from16 v21, v30

    move-wide/from16 v25, v30

    invoke-direct/range {v4 .. v29}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJJZ)V

    move-object/from16 v2, v35

    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1534
    if-eqz p3, :cond_167

    .line 1535
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaSourceList;->release()V

    .line 1537
    :cond_167
    return-void
.end method

.method private resetPendingPauseAtEndOfPeriod()V
    .registers 3

    .line 2250
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2251
    .local v0, "playingPeriod":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-eqz v0, :cond_14

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 2253
    return-void
.end method

.method private resetRendererPosition(J)V
    .registers 10
    .param p1, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1368
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1369
    .local v0, "playingMediaPeriod":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    nop

    .line 1370
    if-nez v0, :cond_10

    .line 1371
    const-wide v1, 0xe8d4a51000L

    add-long/2addr v1, p1

    goto :goto_14

    .line 1372
    :cond_10
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide v1

    :goto_14
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1373
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/DefaultMediaClock;->resetPosition(J)V

    .line 1374
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_31

    aget-object v4, v1, v3

    .line 1375
    .local v4, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-static {v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1376
    iget-wide v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v4, v5, v6}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    .line 1374
    .end local v4    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1379
    :cond_31
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifyTrackSelectionDiscontinuity()V

    .line 1380
    return-void
.end method

.method private static resolvePendingMessageEndOfStreamPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)V
    .registers 12
    .param p0, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p1, "messageInfo"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2948
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2949
    .local v0, "windowIndex":I
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    .line 2950
    .local v1, "lastPeriodIndex":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p3, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 2951
    .local v2, "lastPeriodUid":Ljava/lang/Object;
    iget-wide v3, p3, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_26

    iget-wide v3, p3, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    goto :goto_2b

    :cond_26
    const-wide v3, 0x7fffffffffffffffL

    .line 2952
    .local v3, "positionUs":J
    :goto_2b
    invoke-virtual {p1, v1, v3, v4, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    .line 2953
    return-void
.end method

.method private static resolvePendingMessagePosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Z
    .registers 25
    .param p0, "pendingMessageInfo"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
    .param p1, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "previousTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p3, "repeatMode"    # I
    .param p4, "shuffleModeEnabled"    # Z
    .param p5, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p6, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2880
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-wide/high16 v14, -0x8000000000000000L

    if-nez v1, :cond_73

    .line 2883
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    cmp-long v3, v1, v14

    if-nez v3, :cond_22

    .line 2884
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2c

    .line 2885
    :cond_22
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    :goto_2c
    move-wide v6, v1

    .line 2887
    .local v6, "requestPositionUs":J
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2891
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2892
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->getMediaItemIndex()I

    move-result v3

    invoke-direct {v2, v1, v3, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 v3, 0x0

    .line 2888
    move-object/from16 v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v16, v6

    .end local v6    # "requestPositionUs":J
    .local v16, "requestPositionUs":J
    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    .line 2899
    .local v1, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v1, :cond_52

    .line 2900
    return v12

    .line 2902
    :cond_52
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2903
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 2904
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2902
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    .line 2906
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v2

    cmp-long v4, v2, v14

    if-nez v4, :cond_72

    .line 2907
    invoke-static {v8, v0, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)V

    .line 2909
    :cond_72
    return v13

    .line 2912
    .end local v1    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v16    # "requestPositionUs":J
    :cond_73
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v7

    .line 2913
    .local v7, "index":I
    const/4 v1, -0x1

    if-ne v7, v1, :cond_7d

    .line 2914
    return v12

    .line 2916
    :cond_7d
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    cmp-long v3, v1, v14

    if-nez v3, :cond_8b

    .line 2918
    invoke-static {v8, v0, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)V

    .line 2919
    return v13

    .line 2921
    :cond_8b
    iput v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 2922
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v9, v1, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2923
    iget-boolean v1, v11, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-eqz v1, :cond_d6

    iget v1, v11, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2924
    invoke-virtual {v9, v1, v10}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 2925
    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_d6

    .line 2929
    iget-wide v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 2930
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    add-long v14, v1, v3

    .line 2931
    .local v14, "windowPositionUs":J
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 2932
    invoke-virtual {v8, v1, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v12, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2933
    .local v12, "windowIndex":I
    nop

    .line 2934
    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move v4, v12

    move-wide v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 2935
    .local v1, "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2936
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 2937
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2935
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    .line 2940
    .end local v1    # "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v12    # "windowIndex":I
    .end local v14    # "windowPositionUs":J
    :cond_d6
    return v13
.end method

.method private resolvePendingMessagePositions(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 12
    .param p1, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "previousTimeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 1633
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1635
    return-void

    .line 1637
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_15
    if-ltz v0, :cond_46

    .line 1638
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1639
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    iget v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1638
    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1647
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    .line 1648
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1637
    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 1652
    .end local v0    # "i":I
    :cond_46
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1653
    return-void
.end method

.method private static resolvePositionForPlaylistChange(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Lcom/google/android/exoplayer2/MediaPeriodQueue;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    .registers 48
    .param p0, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p1, "playbackInfo"    # Lcom/google/android/exoplayer2/PlaybackInfo;
    .param p2, "pendingInitialSeekPosition"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    .param p3, "queue"    # Lcom/google/android/exoplayer2/MediaPeriodQueue;
    .param p4, "repeatMode"    # I
    .param p5, "shuffleModeEnabled"    # Z
    .param p6, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p7, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2664
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2665
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    .line 2666
    invoke-static {}, Lcom/google/android/exoplayer2/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v13

    const-wide/16 v14, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJZZZ)V

    .line 2665
    return-object v0

    .line 2673
    :cond_28
    iget-object v12, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2674
    .local v12, "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v13, v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2675
    .local v13, "newPeriodUid":Ljava/lang/Object;
    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isUsingPlaceholderPeriod(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v14

    .line 2677
    .local v14, "isUsingPlaceholderPeriod":Z
    iget-object v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_3e

    if-eqz v14, :cond_3b

    goto :goto_3e

    .line 2679
    :cond_3b
    iget-wide v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    goto :goto_40

    .line 2678
    :cond_3e
    :goto_3e
    iget-wide v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 2679
    :goto_40
    move-wide v15, v0

    .line 2680
    .local v15, "oldContentPositionUs":J
    move-wide/from16 v17, v15

    .line 2681
    .local v17, "newContentPositionUs":J
    const/16 v19, -0x1

    .line 2682
    .local v19, "startAtDefaultPositionWindowIndex":I
    const/16 v20, 0x0

    .line 2683
    .local v20, "forceBufferingState":Z
    const/16 v21, 0x0

    .line 2684
    .local v21, "endPlayback":Z
    const/16 v22, 0x0

    .line 2685
    .local v22, "setTargetLiveOffset":Z
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/4 v6, -0x1

    if-eqz v9, :cond_a7

    .line 2688
    const/4 v2, 0x1

    .line 2689
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v29, v12

    const/4 v12, -0x1

    .end local v12    # "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local v29, "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;

    move-result-object v0

    .line 2697
    .local v0, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v0, :cond_76

    .line 2699
    const/16 v21, 0x1

    .line 2700
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    move/from16 v19, v1

    .end local v19    # "startAtDefaultPositionWindowIndex":I
    .local v1, "startAtDefaultPositionWindowIndex":I
    goto :goto_9d

    .line 2703
    .end local v1    # "startAtDefaultPositionWindowIndex":I
    .restart local v19    # "startAtDefaultPositionWindowIndex":I
    :cond_76
    iget-wide v1, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v3, v1, v23

    if-nez v3, :cond_87

    .line 2704
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2705
    invoke-virtual {v7, v1, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v19, v1

    .end local v19    # "startAtDefaultPositionWindowIndex":I
    .restart local v1    # "startAtDefaultPositionWindowIndex":I
    goto :goto_93

    .line 2707
    .end local v1    # "startAtDefaultPositionWindowIndex":I
    .restart local v19    # "startAtDefaultPositionWindowIndex":I
    :cond_87
    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2708
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 2710
    const/16 v22, 0x1

    .line 2712
    :goto_93
    iget v1, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9a

    const/4 v1, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v1, 0x0

    :goto_9b
    move/from16 v20, v1

    .line 2714
    .end local v0    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    :goto_9d
    move/from16 v4, v19

    move/from16 v19, v21

    move/from16 v36, v22

    move-object/from16 v6, v29

    goto/16 :goto_162

    .end local v29    # "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .restart local v12    # "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :cond_a7
    move-object/from16 v29, v12

    const/4 v12, -0x1

    .end local v12    # "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .restart local v29    # "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 2716
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v19

    move/from16 v4, v19

    move/from16 v19, v21

    move/from16 v36, v22

    move-object/from16 v6, v29

    goto/16 :goto_162

    .line 2717
    :cond_c0
    invoke-virtual {v7, v13}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v12, :cond_f5

    .line 2721
    iget-object v5, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2722
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v13

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object v0

    .line 2730
    .local v0, "subsequentPeriodUid":Ljava/lang/Object;
    if-nez v0, :cond_e2

    .line 2732
    const/16 v21, 0x1

    .line 2733
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    move/from16 v19, v1

    .end local v19    # "startAtDefaultPositionWindowIndex":I
    .restart local v1    # "startAtDefaultPositionWindowIndex":I
    goto :goto_eb

    .line 2737
    .end local v1    # "startAtDefaultPositionWindowIndex":I
    .restart local v19    # "startAtDefaultPositionWindowIndex":I
    :cond_e2
    nop

    .line 2738
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v19, v1

    .line 2740
    .end local v0    # "subsequentPeriodUid":Ljava/lang/Object;
    :goto_eb
    move/from16 v4, v19

    move/from16 v19, v21

    move/from16 v36, v22

    move-object/from16 v6, v29

    goto/16 :goto_162

    :cond_f5
    cmp-long v0, v15, v23

    if-nez v0, :cond_107

    .line 2743
    invoke-virtual {v7, v13, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move v4, v0

    move/from16 v19, v21

    move/from16 v36, v22

    move-object/from16 v6, v29

    .end local v19    # "startAtDefaultPositionWindowIndex":I
    .local v0, "startAtDefaultPositionWindowIndex":I
    goto :goto_162

    .line 2744
    .end local v0    # "startAtDefaultPositionWindowIndex":I
    .restart local v19    # "startAtDefaultPositionWindowIndex":I
    :cond_107
    if-eqz v14, :cond_15a

    .line 2747
    iget-object v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v6, v29

    .end local v29    # "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local v6, "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v1, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2748
    iget-object v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v1, v11, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget-object v1, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2749
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_151

    .line 2752
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long v23, v15, v0

    .line 2753
    .local v23, "windowPositionUs":J
    invoke-virtual {v7, v13, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v5, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2754
    .local v5, "windowIndex":I
    nop

    .line 2755
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move v3, v5

    move/from16 v27, v5

    .end local v5    # "windowIndex":I
    .local v27, "windowIndex":I
    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2756
    .local v0, "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2757
    .end local v13    # "newPeriodUid":Ljava/lang/Object;
    .local v1, "newPeriodUid":Ljava/lang/Object;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v13, v1

    move-wide/from16 v17, v2

    .line 2760
    .end local v0    # "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v1    # "newPeriodUid":Ljava/lang/Object;
    .end local v23    # "windowPositionUs":J
    .end local v27    # "windowIndex":I
    .restart local v13    # "newPeriodUid":Ljava/lang/Object;
    :cond_151
    const/16 v22, 0x1

    move/from16 v4, v19

    move/from16 v19, v21

    move/from16 v36, v22

    goto :goto_162

    .line 2744
    .end local v6    # "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .restart local v29    # "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :cond_15a
    move-object/from16 v6, v29

    .end local v29    # "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .restart local v6    # "oldPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move/from16 v4, v19

    move/from16 v19, v21

    move/from16 v36, v22

    .line 2764
    .end local v21    # "endPlayback":Z
    .end local v22    # "setTargetLiveOffset":Z
    .local v4, "startAtDefaultPositionWindowIndex":I
    .local v19, "endPlayback":Z
    .local v36, "setTargetLiveOffset":Z
    :goto_162
    move-wide/from16 v21, v17

    .line 2765
    .local v21, "contentPositionForAdResolutionUs":J
    if-eq v4, v12, :cond_18c

    .line 2766
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    .line 2767
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move v3, v4

    move/from16 v37, v4

    .end local v4    # "startAtDefaultPositionWindowIndex":I
    .local v37, "startAtDefaultPositionWindowIndex":I
    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2772
    .local v0, "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2773
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 2774
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v0, v21

    goto :goto_190

    .line 2765
    .end local v0    # "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v37    # "startAtDefaultPositionWindowIndex":I
    .restart local v4    # "startAtDefaultPositionWindowIndex":I
    :cond_18c
    move/from16 v37, v4

    .end local v4    # "startAtDefaultPositionWindowIndex":I
    .restart local v37    # "startAtDefaultPositionWindowIndex":I
    move-wide/from16 v0, v21

    .line 2778
    .end local v21    # "contentPositionForAdResolutionUs":J
    .local v0, "contentPositionForAdResolutionUs":J
    :goto_190
    nop

    .line 2779
    move-object/from16 v2, p3

    invoke-virtual {v2, v7, v13, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v3

    .line 2781
    .local v3, "periodIdWithAds":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget v4, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v4, v12, :cond_1a8

    iget v4, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v4, v12, :cond_1a6

    iget v4, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget v5, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-lt v4, v5, :cond_1a6

    goto :goto_1a8

    :cond_1a6
    const/4 v4, 0x0

    goto :goto_1a9

    :cond_1a8
    :goto_1a8
    const/4 v4, 0x1

    .line 2788
    .local v4, "earliestCuePointIsUnchangedOrLater":Z
    :goto_1a9
    iget-object v5, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2789
    .local v5, "sameOldAndNewPeriodUid":Z
    if-eqz v5, :cond_1c2

    .line 2791
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v12

    if-nez v12, :cond_1c2

    .line 2792
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v12

    if-nez v12, :cond_1c2

    if-eqz v4, :cond_1c2

    const/16 v25, 0x1

    goto :goto_1c3

    :cond_1c2
    nop

    :goto_1c3
    move/from16 v12, v25

    .line 2796
    .local v12, "onlyNextAdGroupIndexIncreased":Z
    nop

    .line 2802
    invoke-virtual {v7, v13, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v26

    .line 2797
    move/from16 v21, v14

    move-object/from16 v22, v6

    move-wide/from16 v23, v15

    move-object/from16 v25, v3

    move-wide/from16 v27, v17

    invoke-static/range {v21 .. v28}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isIgnorableServerSideAdInsertionPeriodChange(ZLcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;J)Z

    move-result v21

    .line 2805
    .local v21, "isInStreamAdChange":Z
    if-nez v12, :cond_1e0

    if-eqz v21, :cond_1dd

    goto :goto_1e0

    :cond_1dd
    move-object/from16 v22, v3

    goto :goto_1e2

    :cond_1e0
    :goto_1e0
    move-object/from16 v22, v6

    :goto_1e2
    move-object/from16 v23, v22

    .line 2807
    .local v23, "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    move-wide/from16 v24, v0

    .line 2808
    .local v24, "periodPositionUs":J
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v22

    if-eqz v22, :cond_214

    .line 2809
    move-wide/from16 v38, v0

    move-object/from16 v0, v23

    .end local v23    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local v0, "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local v38, "contentPositionForAdResolutionUs":J
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fb

    .line 2810
    iget-wide v1, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v24, v1

    .end local v24    # "periodPositionUs":J
    .local v1, "periodPositionUs":J
    goto :goto_218

    .line 2812
    .end local v1    # "periodPositionUs":J
    .restart local v24    # "periodPositionUs":J
    :cond_1fb
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v7, v1, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2814
    iget v1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v2

    if-ne v1, v2, :cond_20f

    .line 2815
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    goto :goto_211

    .line 2816
    :cond_20f
    const-wide/16 v1, 0x0

    :goto_211
    move-wide/from16 v24, v1

    goto :goto_218

    .line 2808
    .end local v38    # "contentPositionForAdResolutionUs":J
    .local v0, "contentPositionForAdResolutionUs":J
    .restart local v23    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :cond_214
    move-wide/from16 v38, v0

    move-object/from16 v0, v23

    .line 2820
    .end local v23    # "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .local v0, "newPeriodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .restart local v38    # "contentPositionForAdResolutionUs":J
    :goto_218
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-object/from16 v27, v1

    move-object/from16 v28, v0

    move-wide/from16 v29, v24

    move-wide/from16 v31, v17

    move/from16 v33, v20

    move/from16 v34, v19

    move/from16 v35, v36

    invoke-direct/range {v27 .. v35}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJZZZ)V

    return-object v1
.end method

.method private static resolveSeekPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;
    .registers 22
    .param p0, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p1, "seekPosition"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    .param p2, "trySubsequentPeriods"    # Z
    .param p3, "repeatMode"    # I
    .param p4, "shuffleModeEnabled"    # Z
    .param p5, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p6, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;",
            "ZIZ",
            "Lcom/google/android/exoplayer2/Timeline$Window;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2975
    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    iget-object v0, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2976
    .local v0, "seekTimeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_f

    .line 2978
    return-object v11

    .line 2980
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2983
    move-object v0, p0

    move-object v12, v0

    goto :goto_19

    .line 2980
    :cond_18
    move-object v12, v0

    .line 2988
    .end local v0    # "seekTimeline":Lcom/google/android/exoplayer2/Timeline;
    .local v12, "seekTimeline":Lcom/google/android/exoplayer2/Timeline;
    :goto_19
    :try_start_19
    iget v4, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v5, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    .line 2989
    move-object v1, v12

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_26} :catch_98

    .line 2994
    .local v0, "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    nop

    .line 2995
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2997
    return-object v0

    .line 3000
    :cond_2e
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v13

    .line 3001
    .local v13, "periodIndex":I
    const/4 v1, -0x1

    if-eq v13, v1, :cond_6b

    .line 3003
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v12, v1, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-eqz v1, :cond_68

    iget v1, v10, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 3004
    move-object/from16 v14, p5

    invoke-virtual {v12, v1, v14}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3005
    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_6a

    .line 3009
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v7, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 3010
    .local v7, "newWindowIndex":I
    iget-wide v5, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    .line 3011
    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    goto :goto_6a

    .line 3003
    .end local v7    # "newWindowIndex":I
    :cond_68
    move-object/from16 v14, p5

    .line 3014
    :cond_6a
    :goto_6a
    return-object v0

    .line 3016
    :cond_6b
    move-object/from16 v14, p5

    if-eqz p2, :cond_97

    .line 3019
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3020
    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v12

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object v7

    .line 3028
    .local v7, "periodUid":Ljava/lang/Object;
    if-eqz v7, :cond_97

    .line 3030
    nop

    .line 3033
    invoke-virtual {p0, v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v4, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 3030
    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 3038
    .end local v7    # "periodUid":Ljava/lang/Object;
    :cond_97
    return-object v11

    .line 2991
    .end local v0    # "periodPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v13    # "periodIndex":I
    :catch_98
    move-exception v0

    move-object/from16 v14, p5

    .line 2993
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v11
.end method

.method static resolveSubsequentPeriod(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;
    .registers 21
    .param p0, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p1, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z
    .param p4, "oldPeriodUid"    # Ljava/lang/Object;
    .param p5, "oldTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p6, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 3064
    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p4

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 3065
    .local v0, "oldPeriodIndex":I
    const/4 v1, -0x1

    .line 3066
    .local v1, "newPeriodIndex":I
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v9

    .line 3067
    .local v9, "maxIterations":I
    const/4 v2, 0x0

    move v10, v0

    move v11, v1

    move v12, v2

    .end local v0    # "oldPeriodIndex":I
    .end local v1    # "newPeriodIndex":I
    .local v10, "oldPeriodIndex":I
    .local v11, "newPeriodIndex":I
    .local v12, "i":I
    :goto_13
    const/4 v13, -0x1

    if-ge v12, v9, :cond_34

    if-ne v11, v13, :cond_34

    .line 3068
    nop

    .line 3069
    move-object/from16 v0, p5

    move v1, v10

    move-object v2, p1

    move-object v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v10

    .line 3071
    if-ne v10, v13, :cond_29

    .line 3073
    goto :goto_34

    .line 3075
    :cond_29
    invoke-virtual {v6, v10}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v11

    .line 3067
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 3077
    .end local v12    # "i":I
    :cond_34
    :goto_34
    if-ne v11, v13, :cond_38

    const/4 v0, 0x0

    goto :goto_3c

    :cond_38
    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v0

    :goto_3c
    return-object v0
.end method

.method private scheduleNextWork(JJ)V
    .registers 9
    .param p1, "thisOperationStartTimeMs"    # J
    .param p3, "intervalMs"    # J

    .line 1177
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    add-long v2, p1, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessageAtTime(IJ)Z

    .line 1178
    return-void
.end method

.method private seekToCurrentPosition(Z)V
    .registers 15
    .param p1, "sendDiscontinuity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 892
    .local v0, "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 893
    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v11

    .line 898
    .local v11, "newPositionUs":J
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v3, v11, v1

    if-eqz v3, :cond_31

    .line 899
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    const/4 v10, 0x5

    .line 900
    move-object v1, p0

    move-object v2, v0

    move-wide v3, v11

    move v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 908
    :cond_31
    return-void
.end method

.method private seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V
    .registers 23
    .param p1, "seekPosition"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1181
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1188
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 v3, 0x1

    iget v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v6, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1189
    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;

    move-result-object v13

    .line 1197
    .local v13, "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    if-nez v13, :cond_48

    .line 1200
    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1201
    invoke-direct {v11, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v3

    .line 1202
    .local v3, "firstPeriodAndPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Long;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1203
    .local v4, "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1204
    .local v5, "periodPositionUs":J
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 1205
    .local v9, "requestedContentPositionUs":J
    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v8

    move v3, v7

    .line 1206
    .local v3, "seekPositionAdjusted":Z
    move v15, v3

    move-object v14, v4

    move-wide/from16 v19, v9

    goto :goto_a4

    .line 1208
    .end local v3    # "seekPositionAdjusted":Z
    .end local v4    # "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .end local v5    # "periodPositionUs":J
    .end local v9    # "requestedContentPositionUs":J
    :cond_48
    iget-object v3, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1209
    .local v3, "periodUid":Ljava/lang/Object;
    iget-object v4, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1211
    .local v4, "resolvedContentPositionUs":J
    iget-wide v6, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v6, v9

    if-nez v14, :cond_5f

    move-wide v6, v9

    goto :goto_60

    :cond_5f
    move-wide v6, v4

    .line 1212
    .local v6, "requestedContentPositionUs":J
    :goto_60
    iget-object v14, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v15, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v15, v15, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1213
    invoke-virtual {v14, v15, v3, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v14

    .line 1215
    .local v14, "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v15

    if-eqz v15, :cond_96

    .line 1216
    iget-object v9, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v9, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v10, v14, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v15, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v9, v10, v15}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1218
    iget-object v9, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v10, v14, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v9

    iget v10, v14, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v9, v10, :cond_8e

    .line 1219
    iget-object v9, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v9

    goto :goto_90

    .line 1220
    :cond_8e
    const-wide/16 v9, 0x0

    :goto_90
    nop

    .line 1221
    .local v9, "periodPositionUs":J
    const/4 v15, 0x1

    move-wide/from16 v19, v6

    move-wide v5, v9

    .local v15, "seekPositionAdjusted":Z
    goto :goto_a4

    .line 1223
    .end local v9    # "periodPositionUs":J
    .end local v15    # "seekPositionAdjusted":Z
    :cond_96
    move-wide v15, v4

    .line 1224
    .local v15, "periodPositionUs":J
    iget-wide v0, v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v19, v0, v9

    if-nez v19, :cond_9f

    const/4 v0, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v0, 0x0

    :goto_a0
    move-wide/from16 v19, v6

    move-wide v5, v15

    move v15, v0

    .line 1229
    .end local v3    # "periodUid":Ljava/lang/Object;
    .end local v4    # "resolvedContentPositionUs":J
    .end local v6    # "requestedContentPositionUs":J
    .restart local v5    # "periodPositionUs":J
    .local v15, "seekPositionAdjusted":Z
    .local v19, "requestedContentPositionUs":J
    :goto_a4
    :try_start_a4
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1231
    iput-object v12, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    goto :goto_c0

    .line 1232
    :cond_b1
    const/4 v0, 0x4

    if-nez v13, :cond_c4

    .line 1234
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v1, v8, :cond_bd

    .line 1235
    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1237
    :cond_bd
    invoke-direct {v11, v2, v8, v2, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1278
    :goto_c0
    move-wide/from16 v16, v5

    goto/16 :goto_154

    .line 1244
    :cond_c4
    move-wide v3, v5

    .line 1245
    .local v3, "newPeriodPositionUs":J
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v14, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_127

    .line 1246
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    move-object v10, v1

    .line 1247
    .local v10, "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-eqz v10, :cond_ed

    iget-boolean v1, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_ed

    const-wide/16 v16, 0x0

    cmp-long v1, v3, v16

    if-eqz v1, :cond_ed

    .line 1250
    iget-object v1, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    .line 1251
    invoke-interface {v1, v3, v4, v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v16

    move-wide/from16 v3, v16

    goto :goto_ef

    .line 1254
    :cond_ed
    move-wide/from16 v16, v3

    .end local v3    # "newPeriodPositionUs":J
    .local v16, "newPeriodPositionUs":J
    :goto_ef
    invoke-static/range {v16 .. v17}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v3

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v8

    cmp-long v1, v3, v8

    if-nez v1, :cond_123

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_10d

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_125

    .line 1258
    :cond_10d
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J
    :try_end_111
    .catchall {:try_start_a4 .. :try_end_111} :catchall_169

    .line 1278
    .end local v5    # "periodPositionUs":J
    .local v3, "periodPositionUs":J
    const/4 v0, 0x2

    .line 1279
    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v5, v19

    move-wide v7, v3

    move v9, v15

    move-object/from16 v18, v10

    .end local v10    # "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .local v18, "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    move v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1259
    return-void

    .line 1254
    .end local v3    # "periodPositionUs":J
    .end local v18    # "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .restart local v5    # "periodPositionUs":J
    .restart local v10    # "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :cond_123
    move-object/from16 v18, v10

    .line 1262
    .end local v10    # "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :cond_125
    move-wide/from16 v3, v16

    .end local v16    # "newPeriodPositionUs":J
    .local v3, "newPeriodPositionUs":J
    :cond_127
    :try_start_127
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v1, v0, :cond_12f

    const/4 v0, 0x1

    goto :goto_130

    :cond_12f
    const/4 v0, 0x0

    .line 1263
    :goto_130
    invoke-direct {v11, v14, v3, v4, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v0
    :try_end_134
    .catchall {:try_start_127 .. :try_end_134} :catchall_169

    move-wide v9, v0

    .line 1267
    .end local v3    # "newPeriodPositionUs":J
    .local v9, "newPeriodPositionUs":J
    cmp-long v0, v5, v9

    if-eqz v0, :cond_13b

    const/4 v8, 0x1

    goto :goto_13c

    :cond_13b
    const/4 v8, 0x0

    :goto_13c
    or-int/2addr v15, v8

    .line 1268
    move-wide/from16 v16, v9

    .line 1269
    .end local v5    # "periodPositionUs":J
    .local v16, "periodPositionUs":J
    :try_start_13f
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v3, v14

    move-wide/from16 v6, v19

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)V
    :try_end_154
    .catchall {:try_start_13f .. :try_end_154} :catchall_167

    .line 1278
    .end local v9    # "newPeriodPositionUs":J
    :goto_154
    const/4 v10, 0x2

    .line 1279
    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, v16

    move-wide/from16 v5, v19

    move-wide/from16 v7, v16

    move v9, v15

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1286
    nop

    .line 1287
    return-void

    .line 1278
    :catchall_167
    move-exception v0

    goto :goto_16c

    .end local v16    # "periodPositionUs":J
    .restart local v5    # "periodPositionUs":J
    :catchall_169
    move-exception v0

    move-wide/from16 v16, v5

    .end local v5    # "periodPositionUs":J
    .restart local v16    # "periodPositionUs":J
    :goto_16c
    const/4 v10, 0x2

    .line 1279
    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, v16

    move-wide/from16 v5, v19

    move-wide/from16 v7, v16

    move v9, v15

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1286
    throw v0
.end method

.method private seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J
    .registers 12
    .param p1, "periodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "periodPositionUs"    # J
    .param p4, "forceBufferingState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1293
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1296
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1293
    :goto_13
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZZ)J
    .registers 15
    .param p1, "periodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "periodPositionUs"    # J
    .param p4, "forceDisableRenderers"    # Z
    .param p5, "forceBufferingState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1306
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 1307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 1308
    const/4 v1, 0x2

    if-nez p5, :cond_10

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_13

    .line 1309
    :cond_10
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1313
    :cond_13
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 1314
    .local v2, "oldPlayingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    move-object v3, v2

    .line 1315
    .local v3, "newPlayingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :goto_1a
    if-eqz v3, :cond_2c

    .line 1316
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1317
    goto :goto_2c

    .line 1319
    :cond_27
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    goto :goto_1a

    .line 1324
    :cond_2c
    :goto_2c
    if-nez p4, :cond_3c

    if-ne v2, v3, :cond_3c

    if-eqz v3, :cond_6a

    .line 1327
    invoke-virtual {v3, p2, p3}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_6a

    .line 1328
    :cond_3c
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_40
    if-ge v6, v5, :cond_4a

    aget-object v7, v4, v6

    .line 1329
    .local v7, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1328
    .end local v7    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 1331
    :cond_4a
    if-eqz v3, :cond_6a

    .line 1333
    :goto_4c
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v4

    if-eq v4, v3, :cond_5a

    .line 1334
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto :goto_4c

    .line 1336
    :cond_5a
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    .line 1337
    const-wide v4, 0xe8d4a51000L

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->setRendererOffset(J)V

    .line 1339
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers()V

    .line 1344
    :cond_6a
    if-eqz v3, :cond_9a

    .line 1345
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    .line 1346
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v4, :cond_7e

    .line 1347
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 1348
    invoke-virtual {v4, p2, p3}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->copyWithStartPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    goto :goto_93

    .line 1349
    :cond_7e
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v4, :cond_93

    .line 1350
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v4, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    .line 1351
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long v5, p2, v5

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    .line 1354
    :cond_93
    :goto_93
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1355
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_a2

    .line 1358
    :cond_9a
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->clear()V

    .line 1359
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1362
    :goto_a2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1363
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 1364
    return-wide p2
.end method

.method private sendMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 10
    .param p1, "message"    # Lcom/google/android/exoplayer2/PlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1563
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    .line 1565
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageToTarget(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto :goto_51

    .line 1566
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1568
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lcom/google/android/exoplayer2/PlayerMessage;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 1570
    :cond_26
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 1571
    .local v0, "pendingMessageInfo":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1579
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_51

    .line 1583
    :cond_4d
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    .line 1586
    .end local v0    # "pendingMessageInfo":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
    :goto_51
    return-void
.end method

.method private sendMessageToTarget(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 5
    .param p1, "message"    # Lcom/google/android/exoplayer2/PlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1589
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_1f

    .line 1590
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 1591
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v0, v2, :cond_2a

    .line 1594
    :cond_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_2a

    .line 1597
    :cond_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 1599
    :cond_2a
    :goto_2a
    return-void
.end method

.method private sendMessageToTargetThread(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 5
    .param p1, "message"    # Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1602
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1603
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1604
    const-string v1, "TAG"

    const-string v2, "Trying to send message on a dead thread."

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    .line 1606
    return-void

    .line 1608
    :cond_1a
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 1609
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 1610
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 1619
    return-void
.end method

.method private setAllRendererStreamsFinal(J)V
    .registers 8
    .param p1, "streamEndPositionUs"    # J

    .line 2307
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 2308
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2309
    invoke-direct {p0, v3, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setCurrentStreamFinal(Lcom/google/android/exoplayer2/Renderer;J)V

    .line 2307
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2312
    :cond_14
    return-void
.end method

.method private setCurrentStreamFinal(Lcom/google/android/exoplayer2/Renderer;J)V
    .registers 5
    .param p1, "renderer"    # Lcom/google/android/exoplayer2/Renderer;
    .param p2, "streamEndPositionUs"    # J

    .line 2315
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    .line 2316
    instance-of v0, p1, Lcom/google/android/exoplayer2/text/TextRenderer;

    if-eqz v0, :cond_d

    .line 2317
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/text/TextRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;->setFinalStreamEndPositionUs(J)V

    .line 2319
    :cond_d
    return-void
.end method

.method private setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 8
    .param p1, "foregroundMode"    # Z
    .param p2, "processedFlag"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1394
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->foregroundMode:Z

    if-eq v0, p1, :cond_24

    .line 1395
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->foregroundMode:Z

    .line 1396
    if-nez p1, :cond_24

    .line 1397
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 1398
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1399
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->reset()V

    .line 1397
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1404
    :cond_24
    if-eqz p2, :cond_33

    .line 1405
    monitor-enter p0

    .line 1406
    const/4 v0, 0x1

    :try_start_28
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1407
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1408
    monitor-exit p0

    goto :goto_33

    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw v0

    .line 1410
    :cond_33
    :goto_33
    return-void
.end method

.method private setMediaClockPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 4
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 993
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    .line 994
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 995
    return-void
.end method

.method private setMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V
    .registers 7
    .param p1, "mediaSourceListUpdateMessage"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 754
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$200(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    .line 755
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    new-instance v1, Lcom/google/android/exoplayer2/PlaylistTimeline;

    .line 758
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v2

    .line 759
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 760
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$200(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    move-result v2

    .line 761
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$500(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 763
    :cond_29
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 765
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v1

    .line 766
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v2

    .line 764
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaSourceList;->setMediaSources(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 767
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V

    .line 768
    return-void
.end method

.method private setOffloadSchedulingEnabledInternal(Z)V
    .registers 4
    .param p1, "offloadSchedulingEnabled"    # Z

    .line 860
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-ne p1, v0, :cond_5

    .line 861
    return-void

    .line 863
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    .line 864
    if-nez p1, :cond_15

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v0, :cond_15

    .line 866
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 868
    :cond_15
    return-void
.end method

.method private setPauseAtEndOfWindowInternal(Z)V
    .registers 4
    .param p1, "pauseAtEndOfWindow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 849
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 850
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 851
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_1f

    .line 854
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    .line 855
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 857
    :cond_1f
    return-void
.end method

.method private setPlayWhenReadyInternal(ZIZI)V
    .registers 8
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackSuppressionReason"    # I
    .param p3, "operationAck"    # Z
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 830
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPlayWhenReadyChangeReason(I)V

    .line 831
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlayWhenReady(ZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 833
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifyTrackSelectionPlayWhenReadyChanged(Z)V

    .line 834
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_25

    .line 835
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 836
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    goto :goto_41

    .line 838
    :cond_25
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v1, :cond_36

    .line 839
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    .line 840
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 841
    :cond_36
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v0, v2, :cond_41

    .line 842
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 845
    :cond_41
    :goto_41
    return-void
.end method

.method private setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 4
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1384
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setMediaClockPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 1385
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V

    .line 1386
    return-void
.end method

.method private setRepeatModeInternal(I)V
    .registers 4
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 872
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    .line 873
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateRepeatMode(Lcom/google/android/exoplayer2/Timeline;I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 874
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    .line 876
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 877
    return-void
.end method

.method private setSeekParametersInternal(Lcom/google/android/exoplayer2/SeekParameters;)V
    .registers 2
    .param p1, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 1389
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    .line 1390
    return-void
.end method

.method private setShuffleModeEnabledInternal(Z)V
    .registers 4
    .param p1, "shuffleModeEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 881
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 882
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateShuffleModeEnabled(Lcom/google/android/exoplayer2/Timeline;Z)Z

    move-result v0

    if-nez v0, :cond_12

    .line 883
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    .line 885
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 886
    return-void
.end method

.method private setShuffleOrderInternal(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 4
    .param p1, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 807
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 808
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V

    .line 809
    return-void
.end method

.method private setState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 722
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v0, p1, :cond_18

    .line 723
    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    .line 724
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 726
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 728
    :cond_18
    return-void
.end method

.method private shouldAdvancePlayingPeriod()Z
    .registers 9

    .line 2256
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2257
    return v1

    .line 2259
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v0, :cond_d

    .line 2260
    return v1

    .line 2262
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2263
    .local v0, "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-nez v0, :cond_16

    .line 2264
    return v1

    .line 2266
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 2267
    .local v2, "nextPlayingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-eqz v2, :cond_2c

    iget-wide v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2268
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2c

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v3, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    nop

    .line 2267
    :goto_2d
    return v1
.end method

.method private shouldContinueLoading()Z
    .registers 14

    .line 2398
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2399
    return v1

    .line 2401
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2402
    .local v0, "loadingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    nop

    .line 2403
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v2

    .line 2405
    .local v2, "bufferedDurationUs":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v4

    if-ne v0, v4, :cond_27

    .line 2406
    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    move-wide v5, v4

    goto :goto_33

    .line 2408
    :cond_27
    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2407
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v4, v6

    move-wide v5, v4

    :goto_33
    nop

    .line 2409
    .local v5, "playbackPositionUs":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 2411
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v7

    iget v9, v7, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 2410
    move-wide v7, v2

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/LoadControl;->shouldContinueLoading(JJF)Z

    move-result v4

    .line 2412
    .local v4, "shouldContinueLoading":Z
    if-nez v4, :cond_77

    const-wide/32 v7, 0x7a120

    cmp-long v9, v2, v7

    if-gez v9, :cond_77

    iget-wide v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gtz v11, :cond_58

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    if-eqz v7, :cond_77

    .line 2417
    :cond_58
    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 2418
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 2420
    invoke-interface {v7, v8, v9, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    .line 2421
    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 2423
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v12, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 2422
    move-wide v8, v5

    move-wide v10, v2

    invoke-interface/range {v7 .. v12}, Lcom/google/android/exoplayer2/LoadControl;->shouldContinueLoading(JJF)Z

    move-result v4

    .line 2425
    :cond_77
    return v4
.end method

.method private shouldPlayWhenReady()Z
    .registers 2

    .line 2651
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private shouldTransitionToReadyState(Z)Z
    .registers 18
    .param p1, "renderersReadyOrEnded"    # Z

    .line 1846
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v1, :cond_b

    .line 1848
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v1

    return v1

    .line 1850
    :cond_b
    const/4 v1, 0x0

    if-nez p1, :cond_f

    .line 1851
    return v1

    .line 1853
    :cond_f
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    const/4 v3, 0x1

    if-nez v2, :cond_17

    .line 1856
    return v3

    .line 1859
    :cond_17
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 1861
    .local v2, "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1862
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->getTargetLiveOffsetUs()J

    move-result-wide v4

    move-wide v13, v4

    goto :goto_39

    .line 1863
    :cond_33
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v13, v4

    :goto_39
    nop

    .line 1864
    .local v13, "targetLiveOffsetUs":J
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v4

    .line 1865
    .local v4, "loadingHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v5

    if-eqz v5, :cond_4e

    iget-object v5, v4, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-eqz v5, :cond_4e

    const/4 v5, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v5, 0x0

    .line 1869
    .local v5, "isBufferedToEnd":Z
    :goto_4f
    iget-object v6, v4, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v6, v6, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-eqz v6, :cond_5f

    iget-boolean v6, v4, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v6, :cond_5f

    const/4 v6, 0x1

    goto :goto_60

    :cond_5f
    const/4 v6, 0x0

    :goto_60
    move v15, v6

    .line 1870
    .local v15, "isAdPendingPreparation":Z
    if-nez v5, :cond_83

    if-nez v15, :cond_83

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v8, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v8, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1875
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v9

    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 1876
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v11

    iget v11, v11, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 1872
    invoke-interface/range {v6 .. v14}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;JFZJ)Z

    move-result v6

    if-eqz v6, :cond_84

    :cond_83
    const/4 v1, 0x1

    .line 1870
    :cond_84
    return v1
.end method

.method private shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .registers 10
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1168
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3a

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3a

    .line 1171
    :cond_e
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1172
    .local v0, "windowIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1173
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_39

    const/4 v1, 0x1

    :cond_39
    return v1

    .line 1169
    .end local v0    # "windowIndex":I
    :cond_3a
    :goto_3a
    return v1
.end method

.method private startRenderers()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 912
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->start()V

    .line 913
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_1b

    aget-object v3, v1, v0

    .line 914
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 915
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->start()V

    .line 913
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 918
    :cond_1b
    return-void
.end method

.method private stopInternal(ZZ)V
    .registers 6
    .param p1, "forceResetRenderers"    # Z
    .param p2, "acknowledgeStop"    # Z

    .line 1413
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez v2, :cond_9

    goto :goto_b

    :cond_9
    const/4 v2, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v2, 0x1

    :goto_c
    invoke-direct {p0, v2, v0, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1418
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1419
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onStopped()V

    .line 1420
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1421
    return-void
.end method

.method private stopRenderers()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 921
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->stop()V

    .line 922
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 923
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 924
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 922
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 927
    :cond_19
    return-void
.end method

.method private updateIsLoading()V
    .registers 4

    .line 2441
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2442
    .local v0, "loadingPeriod":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-nez v1, :cond_17

    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 2443
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    .line 2444
    .local v1, "isLoading":Z
    :goto_18
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    if-eq v1, v2, :cond_26

    .line 2445
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithIsLoading(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2447
    :cond_26
    return-void
.end method

.method private updateLoadControlTrackSelection(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .registers 10
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "trackSelectorResult"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 2642
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    iget-object v5, p3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-object v2, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/LoadControl;->onTracksSelected(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaPeriodId;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    .line 2648
    return-void
.end method

.method private updatePeriods()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2050
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_20

    .line 2054
    :cond_13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()V

    .line 2055
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateReadingPeriod()V

    .line 2056
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateReadingRenderers()V

    .line 2057
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdatePlayingPeriod()V

    .line 2058
    return-void

    .line 2052
    :cond_20
    :goto_20
    return-void
.end method

.method private updatePlaybackPositions()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v10

    .line 935
    .local v10, "playingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-nez v10, :cond_9

    .line 936
    return-void

    .line 941
    :cond_9
    iget-boolean v0, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_19

    .line 942
    iget-object v0, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    goto :goto_1a

    .line 943
    :cond_19
    move-wide v3, v1

    :goto_1a
    move-wide v11, v3

    .line 944
    .local v11, "discontinuityPositionUs":J
    const/4 v13, 0x0

    cmp-long v0, v11, v1

    if-eqz v0, :cond_3f

    .line 945
    invoke-direct {p0, v11, v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 948
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v2, v11, v0

    if-eqz v2, :cond_62

    .line 949
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    .line 950
    move-object v0, p0

    move-wide v2, v11

    move-wide v6, v11

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    goto :goto_62

    .line 959
    :cond_3f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 961
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eq v10, v1, :cond_4b

    const/4 v1, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    .line 960
    :goto_4c
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->syncAndGetPositionUs(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 962
    invoke-virtual {v10, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    .line 963
    .local v0, "periodPositionUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeTriggerPendingMessages(JJ)V

    .line 964
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->updatePositionUs(J)V

    .line 968
    .end local v0    # "periodPositionUs":J
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 969
    .local v0, "loadingPeriod":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 970
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 973
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-eqz v1, :cond_d3

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d3

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 975
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v1

    if-eqz v1, :cond_d3

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_d3

    .line 977
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 979
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getCurrentLiveOffsetUs()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v4

    .line 978
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->getAdjustedPlaybackSpeed(JJ)F

    move-result v1

    .line 980
    .local v1, "adjustedSpeed":F
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_d3

    .line 981
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setMediaClockPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 982
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 984
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 982
    invoke-direct {p0, v2, v3, v13, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V

    .line 989
    .end local v1    # "adjustedSpeed":F
    :cond_d3
    return-void
.end method

.method private updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)V
    .registers 15
    .param p1, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "newPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "oldTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p4, "oldPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p5, "positionForTargetOffsetOverrideUs"    # J
    .param p7, "forceSetTargetOffsetOverride"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1988
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1992
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_13

    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1993
    .local v0, "targetPlaybackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    :goto_13
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1994
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setMediaClockPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 1995
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v2, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V

    .line 2001
    :cond_2c
    return-void

    .line 2003
    .end local v0    # "targetPlaybackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    :cond_2d
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2004
    .local v0, "windowIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 2005
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    .line 2006
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p5, v1

    if-eqz v3, :cond_60

    .line 2007
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    iget-object v2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2008
    invoke-direct {p0, p1, v2, p5, p6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getLiveOffsetUs(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)J

    move-result-wide v2

    .line 2007
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    goto :goto_8a

    .line 2010
    :cond_60
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2011
    .local v3, "windowUid":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 2012
    .local v4, "oldWindowUid":Ljava/lang/Object;
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7d

    .line 2013
    iget-object v5, p4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p3, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2014
    .local v5, "oldWindowIndex":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p3, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v6

    iget-object v4, v6, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2016
    .end local v5    # "oldWindowIndex":I
    :cond_7d
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    if-eqz p7, :cond_8a

    .line 2019
    :cond_85
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    invoke-interface {v5, v1, v2}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    .line 2022
    .end local v3    # "windowUid":Ljava/lang/Object;
    .end local v4    # "oldWindowUid":Ljava/lang/Object;
    :cond_8a
    :goto_8a
    return-void
.end method

.method private updateTrackSelectionPlaybackSpeed(F)V
    .registers 7
    .param p1, "playbackSpeed"    # F

    .line 1822
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1823
    .local v0, "periodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :goto_6
    if-eqz v0, :cond_21

    .line 1824
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 1825
    .local v4, "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-eqz v4, :cond_19

    .line 1826
    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    .line 1824
    .end local v4    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1829
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    .line 1831
    :cond_21
    return-void
.end method

.method private declared-synchronized waitUninterruptibly(Lcom/google/common/base/Supplier;J)V
    .registers 12
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    .local p1, "condition":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Boolean;>;"
    monitor-enter p0

    .line 703
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 704
    .local v0, "deadlineMs":J
    move-wide v2, p2

    .line 705
    .local v2, "remainingMs":J
    const/4 v4, 0x0

    .line 706
    .local v4, "wasInterrupted":Z
    :goto_a
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3b

    if-nez v5, :cond_30

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_30

    .line 708
    :try_start_1c
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/util/Clock;->onThreadBlocked()V

    .line 709
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_24} :catch_25
    .catchall {:try_start_1c .. :try_end_24} :catchall_3b

    .line 712
    goto :goto_27

    .line 710
    .end local p0    # "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
    :catch_25
    move-exception v5

    .line 711
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 713
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_27
    :try_start_27
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v2, v0, v5

    goto :goto_a

    .line 715
    :cond_30
    if-eqz v4, :cond_39

    .line 717
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_3b

    .line 719
    :cond_39
    monitor-exit p0

    return-void

    .line 702
    .end local v0    # "deadlineMs":J
    .end local v2    # "remainingMs":J
    .end local v4    # "wasInterrupted":Z
    .end local p1    # "condition":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Boolean;>;"
    .end local p2    # "timeoutMs":J
    :catchall_3b
    move-exception p1

    monitor-exit p0

    goto :goto_3f

    :goto_3e
    throw p1

    :goto_3f
    goto :goto_3e
.end method


# virtual methods
.method public addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 13
    .param p1, "index"    # I
    .param p3, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 378
    .local p2, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;IJLcom/google/android/exoplayer2/ExoPlayerImplInternal$1;)V

    .line 379
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, v8}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    .line 388
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 389
    return-void
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)V
    .registers 3
    .param p1, "setForegroundModeTimeoutMs"    # J

    .line 311
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    .line 312
    return-void
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .registers 5
    .param p1, "offloadSchedulingEnabled"    # Z

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 317
    nop

    .line 316
    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    .line 318
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 319
    return-void
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .line 456
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 504
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string v1, "Playback error"

    const-string v2, "ExoPlayerImplInternal"

    const/4 v13, 0x0

    const/4 v14, 0x1

    :try_start_a
    iget v0, v12, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1fc

    .line 593
    return v13

    .line 586
    :pswitch_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternalAndSeek()V

    .line 587
    goto/16 :goto_15f

    .line 583
    :pswitch_15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->attemptRendererErrorRecovery()V

    .line 584
    goto/16 :goto_15f

    .line 580
    :pswitch_1a
    iget v0, v12, Landroid/os/Message;->arg1:I

    if-ne v0, v14, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setOffloadSchedulingEnabledInternal(Z)V

    .line 581
    goto/16 :goto_15f

    .line 577
    :pswitch_26
    iget v0, v12, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPauseAtEndOfWindowInternal(Z)V

    .line 578
    goto/16 :goto_15f

    .line 574
    :pswitch_32
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceListUpdateRequestedInternal()V

    .line 575
    goto/16 :goto_15f

    .line 571
    :pswitch_37
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setShuffleOrderInternal(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 572
    goto/16 :goto_15f

    .line 568
    :pswitch_40
    iget v0, v12, Landroid/os/Message;->arg1:I

    iget v3, v12, Landroid/os/Message;->arg2:I

    iget-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {v11, v0, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->removeMediaItemsInternal(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 569
    goto/16 :goto_15f

    .line 565
    :pswitch_4d
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->moveMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;)V

    .line 566
    goto/16 :goto_15f

    .line 562
    :pswitch_56
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    iget v3, v12, Landroid/os/Message;->arg1:I

    invoke-direct {v11, v0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->addMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V

    .line 563
    goto/16 :goto_15f

    .line 559
    :pswitch_61
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V

    .line 560
    goto/16 :goto_15f

    .line 550
    :pswitch_6a
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v11, v0, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V

    .line 551
    goto/16 :goto_15f

    .line 556
    :pswitch_73
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageToTargetThread(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 557
    goto/16 :goto_15f

    .line 553
    :pswitch_7c
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 554
    goto/16 :goto_15f

    .line 534
    :pswitch_85
    iget v0, v12, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_8b

    const/4 v0, 0x1

    goto :goto_8c

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    iget-object v3, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v11, v0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 536
    goto/16 :goto_15f

    .line 519
    :pswitch_95
    iget v0, v12, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_9b

    const/4 v0, 0x1

    goto :goto_9c

    :cond_9b
    const/4 v0, 0x0

    :goto_9c
    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setShuffleModeEnabledInternal(Z)V

    .line 520
    goto/16 :goto_15f

    .line 516
    :pswitch_a1
    iget v0, v12, Landroid/os/Message;->arg1:I

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    .line 517
    goto/16 :goto_15f

    .line 547
    :pswitch_a8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    .line 548
    goto/16 :goto_15f

    .line 544
    :pswitch_ad
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 545
    goto/16 :goto_15f

    .line 541
    :pswitch_b6
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 542
    goto/16 :goto_15f

    .line 589
    :pswitch_bf
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseInternal()V

    .line 591
    return v14

    .line 538
    :pswitch_c3
    invoke-direct {v11, v13, v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 539
    goto/16 :goto_15f

    .line 531
    :pswitch_c8
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/SeekParameters;

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setSeekParametersInternal(Lcom/google/android/exoplayer2/SeekParameters;)V

    .line 532
    goto/16 :goto_15f

    .line 528
    :pswitch_d1
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 529
    goto/16 :goto_15f

    .line 525
    :pswitch_da
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V

    .line 526
    goto/16 :goto_15f

    .line 522
    :pswitch_e3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->doSomeWork()V

    .line 523
    goto/16 :goto_15f

    .line 509
    :pswitch_e8
    iget v0, v12, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_ee

    const/4 v0, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v0, 0x0

    :goto_ef
    iget v3, v12, Landroid/os/Message;->arg2:I

    invoke-direct {v11, v0, v3, v14, v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(ZIZI)V

    .line 514
    goto/16 :goto_15f

    .line 506
    :pswitch_f6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->prepareInternal()V
    :try_end_f9
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_a .. :try_end_f9} :catch_161
    .catch Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException; {:try_start_a .. :try_end_f9} :catch_159
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_a .. :try_end_f9} :catch_133
    .catch Lcom/google/android/exoplayer2/upstream/DataSourceException; {:try_start_a .. :try_end_f9} :catch_12c
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_a .. :try_end_f9} :catch_125
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f9} :catch_11e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_f9} :catch_fb

    .line 507
    goto/16 :goto_15f

    .line 661
    :catch_fb
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v3, v0, Ljava/lang/IllegalStateException;

    if-nez v3, :cond_108

    instance-of v3, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_105

    goto :goto_108

    .line 666
    :cond_105
    const/16 v3, 0x3e8

    .local v3, "errorCode":I
    goto :goto_10a

    .line 664
    .end local v3    # "errorCode":I
    :cond_108
    :goto_108
    const/16 v3, 0x3ec

    .line 668
    .restart local v3    # "errorCode":I
    :goto_10a
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v4

    .line 669
    .local v4, "error":Lcom/google/android/exoplayer2/ExoPlaybackException;
    invoke-static {v2, v1, v4}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    invoke-direct {v11, v14, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 671
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    goto/16 :goto_1f7

    .line 659
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "errorCode":I
    .end local v4    # "error":Lcom/google/android/exoplayer2/ExoPlaybackException;
    :catch_11e
    move-exception v0

    .line 660
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, 0x7d0

    invoke-direct {v11, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_15f

    .line 657
    :catch_125
    move-exception v0

    .line 658
    .local v0, "e":Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
    const/16 v1, 0x3ea

    invoke-direct {v11, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    .end local v0    # "e":Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
    goto :goto_15f

    .line 655
    :catch_12c
    move-exception v0

    .line 656
    .local v0, "e":Lcom/google/android/exoplayer2/upstream/DataSourceException;
    iget v1, v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    invoke-direct {v11, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    .end local v0    # "e":Lcom/google/android/exoplayer2/upstream/DataSourceException;
    goto :goto_15f

    .line 639
    :catch_133
    move-exception v0

    .line 641
    .local v0, "e":Lcom/google/android/exoplayer2/ParserException;
    iget v1, v0, Lcom/google/android/exoplayer2/ParserException;->dataType:I

    if-ne v1, v14, :cond_143

    .line 643
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    if-eqz v1, :cond_13f

    .line 644
    const/16 v1, 0xbb9

    goto :goto_141

    .line 645
    :cond_13f
    const/16 v1, 0xbbb

    :goto_141
    nop

    .local v1, "errorCode":I
    goto :goto_155

    .line 646
    .end local v1    # "errorCode":I
    :cond_143
    iget v1, v0, Lcom/google/android/exoplayer2/ParserException;->dataType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_153

    .line 648
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    if-eqz v1, :cond_14f

    .line 649
    const/16 v1, 0xbba

    goto :goto_151

    .line 650
    :cond_14f
    const/16 v1, 0xbbc

    :goto_151
    nop

    .restart local v1    # "errorCode":I
    goto :goto_155

    .line 652
    .end local v1    # "errorCode":I
    :cond_153
    const/16 v1, 0x3e8

    .line 654
    .restart local v1    # "errorCode":I
    :goto_155
    invoke-direct {v11, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    .end local v0    # "e":Lcom/google/android/exoplayer2/ParserException;
    .end local v1    # "errorCode":I
    goto :goto_15f

    .line 637
    :catch_159
    move-exception v0

    .line 638
    .local v0, "e":Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    iget v1, v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-direct {v11, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    .line 672
    .end local v0    # "e":Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    :goto_15f
    goto/16 :goto_1f7

    .line 595
    :catch_161
    move-exception v0

    .line 596
    .local v0, "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v3, v14, :cond_176

    .line 597
    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    .line 598
    .local v3, "readingPeriod":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    if-eqz v3, :cond_176

    .line 601
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaPeriodId;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 604
    .end local v3    # "readingPeriod":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :cond_176
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    if-eqz v3, :cond_191

    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez v3, :cond_191

    .line 605
    const-string v1, "Recoverable renderer error"

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 606
    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 609
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 610
    const/16 v2, 0x19

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v2

    .line 609
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendMessageAtFrontOfQueue(Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;)Z

    goto :goto_15f

    .line 612
    :cond_191
    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v3, :cond_19a

    .line 613
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 614
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 616
    :cond_19a
    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 617
    iget v1, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v1, v14, :cond_1ea

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 618
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    if-eq v1, v2, :cond_1ea

    .line 621
    :goto_1af
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    if-eq v1, v2, :cond_1c3

    .line 622
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto :goto_1af

    .line 624
    :cond_1c3
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 625
    .local v15, "newPlayingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    iget-object v1, v15, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v15, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-object v1, v15, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-object v1, v15, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 626
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 634
    .end local v15    # "newPlayingPeriodHolder":Lcom/google/android/exoplayer2/MediaPeriodHolder;
    :cond_1ea
    invoke-direct {v11, v14, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 635
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    goto/16 :goto_15f

    .line 673
    .end local v0    # "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    :goto_1f7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 674
    return v14

    nop

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_f6
        :pswitch_e8
        :pswitch_e3
        :pswitch_da
        :pswitch_d1
        :pswitch_c8
        :pswitch_c3
        :pswitch_bf
        :pswitch_b6
        :pswitch_ad
        :pswitch_a8
        :pswitch_a1
        :pswitch_95
        :pswitch_85
        :pswitch_7c
        :pswitch_73
        :pswitch_6a
        :pswitch_61
        :pswitch_56
        :pswitch_4d
        :pswitch_40
        :pswitch_37
        :pswitch_32
        :pswitch_26
        :pswitch_1a
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method

.method synthetic lambda$release$0$com-google-android-exoplayer2-ExoPlayerImplInternal()Ljava/lang/Boolean;
    .registers 2

    .line 451
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$sendMessageToTargetThread$1$com-google-android-exoplayer2-ExoPlayerImplInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 5
    .param p1, "message"    # Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1613
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    :try_end_3
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_3} :catch_5

    .line 1617
    nop

    .line 1618
    return-void

    .line 1614
    :catch_5
    move-exception v0

    .line 1615
    .local v0, "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Unexpected error delivering message on external thread."

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1616
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public moveMediaSources(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newFromIndex"    # I
    .param p4, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 399
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;-><init>(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 401
    .local v0, "moveMediaItemsMessage":Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v2, 0x13

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 402
    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 476
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .line 80
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 4
    .param p1, "newPlaybackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 495
    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 497
    return-void
.end method

.method public onPlaylistUpdateRequested()V
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 464
    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 470
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 471
    return-void
.end method

.method public onRendererCapabilitiesChanged(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 4
    .param p1, "renderer"    # Lcom/google/android/exoplayer2/Renderer;

    .line 487
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x1a

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 488
    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 483
    return-void
.end method

.method public prepare()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 323
    return-void
.end method

.method public declared-synchronized release()Z
    .registers 4

    monitor-enter p0

    .line 447
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_26

    .line 450
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 451
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseTimeoutMs:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 452
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29

    monitor-exit p0

    return v0

    .line 448
    .end local p0    # "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
    :cond_26
    :goto_26
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 446
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeMediaSources(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 392
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 393
    const/16 v1, 0x14

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    .line 394
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 395
    return-void
.end method

.method public seekTo(Lcom/google/android/exoplayer2/Timeline;IJ)V
    .registers 8
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "positionUs"    # J

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    .line 348
    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 350
    return-void
.end method

.method public declared-synchronized sendMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 4
    .param p1, "message"    # Lcom/google/android/exoplayer2/PlayerMessage;

    monitor-enter p0

    .line 410
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1f

    .line 415
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2c

    .line 416
    monitor-exit p0

    return-void

    .line 411
    .end local p0    # "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
    :cond_1f
    :goto_1f
    :try_start_1f
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_2c

    .line 413
    monitor-exit p0

    return-void

    .line 409
    .end local p1    # "message":Lcom/google/android/exoplayer2/PlayerMessage;
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setForegroundMode(Z)Z
    .registers 6
    .param p1, "foregroundMode"    # Z

    monitor-enter p0

    .line 425
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    const/4 v1, 0x1

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_44

    .line 428
    :cond_13
    const/16 v0, 0xd

    const/4 v2, 0x0

    if-eqz p1, :cond_23

    .line 429
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_46

    .line 430
    monitor-exit p0

    return v1

    .line 432
    .end local p0    # "this":Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
    :cond_23
    :try_start_23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 433
    .local v1, "processedFlag":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 434
    invoke-interface {v3, v0, v2, v2, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    .line 435
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 436
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 437
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_42
    .catchall {:try_start_23 .. :try_end_42} :catchall_46

    monitor-exit p0

    return v0

    .line 426
    .end local v1    # "processedFlag":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_44
    :goto_44
    monitor-exit p0

    return v1

    .line 424
    .end local p1    # "foregroundMode":Z
    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMediaSources(Ljava/util/List;IJLcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 15
    .param p2, "windowIndex"    # I
    .param p3, "positionUs"    # J
    .param p5, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;IJ",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 369
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;IJLcom/google/android/exoplayer2/ExoPlayerImplInternal$1;)V

    .line 370
    const/16 v1, 0x11

    invoke-interface {v0, v1, v8}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 374
    return-void
.end method

.method public setPauseAtEndOfWindow(Z)V
    .registers 5
    .param p1, "pauseAtEndOfWindow"    # Z

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 334
    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 336
    return-void
.end method

.method public setPlayWhenReady(ZI)V
    .registers 5
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackSuppressionReason"    # I

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 328
    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 330
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 4
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 353
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 354
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 5
    .param p1, "repeatMode"    # I

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 340
    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .registers 4
    .param p1, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 358
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .registers 5
    .param p1, "shuffleModeEnabled"    # Z

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 344
    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 4
    .param p1, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x15

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 406
    return-void
.end method

.method public stop()V
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 362
    return-void
.end method
