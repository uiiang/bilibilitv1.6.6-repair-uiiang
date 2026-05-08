.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_FALLBACK_TARGET_LIVE_OFFSET_MS:J = 0x7530L

.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_MS:J = 0x7530L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_MEDIA_ID:Ljava/lang/String; = "DashMediaSource"

.field private static final DEFAULT_NOTIFY_MANIFEST_INTERVAL_MS:J = 0x1388L

.field public static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L

.field private static final TAG:Ljava/lang/String; = "DashMediaSource"


# instance fields
.field private final baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private elapsedRealtimeOffsetMs:J

.field private expiredManifestPublishTimeUs:J

.field private final fallbackTargetLiveOffsetMs:J

.field private firstPeriodId:I

.field private handler:Landroid/os/Handler;

.field private initialManifestUri:Landroid/net/Uri;

.field private liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private manifestFatalError:Ljava/io/IOException;

.field private manifestLoadEndTimestampMs:J

.field private final manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private manifestLoadPending:Z

.field private manifestLoadStartTimestampMs:J

.field private final manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field

.field private manifestUri:Landroid/net/Uri;

.field private final manifestUriLock:Ljava/lang/Object;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final minLiveStartPositionUs:J

.field private final periodsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

.field private final refreshManifestRunnable:Ljava/lang/Runnable;

.field private final sideloadedManifest:Z

.field private final simulateManifestRefreshRunnable:Ljava/lang/Runnable;

.field private staleManifestReloadAttempt:I


# direct methods
.method public static synthetic $r8$lambda$Cbfv38hh_bge_0zl8BZ2qKibtNM(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 106
    const-string v0, "goog.exo.dash"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JJ)V
    .registers 30
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "manifestDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p5, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p6, "compositeSequenceableLoaderFactory"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p7, "cmcdConfiguration"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    .param p8, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p9, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p10, "fallbackTargetLiveOffsetMs"    # J
    .param p12, "minLiveStartPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;",
            "Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;",
            "Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager;",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            "JJ)V"
        }
    .end annotation

    .line 451
    .local p4, "manifestParser":Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<+Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 452
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 453
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 454
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 455
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    .line 456
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 457
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 458
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 459
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 460
    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 461
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 462
    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 463
    move-wide/from16 v9, p10

    iput-wide v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->fallbackTargetLiveOffsetMs:J

    .line 464
    move-wide/from16 v11, p12

    iput-wide v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->minLiveStartPositionUs:J

    .line 465
    move-object/from16 v13, p6

    iput-object v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 466
    new-instance v14, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    invoke-direct {v14}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;-><init>()V

    iput-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    .line 467
    if-eqz v2, :cond_52

    const/4 v15, 0x1

    goto :goto_53

    :cond_52
    const/4 v15, 0x0

    :goto_53
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    .line 468
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 469
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 470
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 471
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;

    invoke-direct {v1, v0, v14}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    .line 472
    move v1, v15

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 473
    iput-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 474
    if-eqz v1, :cond_93

    .line 475
    iget-boolean v1, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v14, 0x1

    xor-int/2addr v1, v14

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 476
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    .line 477
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 478
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 479
    new-instance v1, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Placeholder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Placeholder;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    goto :goto_b0

    .line 481
    :cond_93
    const/4 v1, 0x0

    new-instance v14, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    invoke-direct {v14, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    iput-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    .line 482
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 483
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 484
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 486
    :goto_b0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JJLcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V
    .registers 15
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p4, "x3"    # Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .param p5, "x4"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p6, "x5"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p7, "x6"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    .param p8, "x7"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p9, "x8"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p10, "x9"    # J
    .param p12, "x10"    # J
    .param p14, "x11"    # Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;

    .line 103
    invoke-direct/range {p0 .. p13}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;J)V
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
    .param p1, "x1"    # J

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Ljava/io/IOException;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
    .param p1, "x1"    # Ljava/io/IOException;

    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Lcom/google/android/exoplayer2/upstream/Loader;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Ljava/io/IOException;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    return-object v0
.end method

.method private static getAvailableEndTimeInManifestUs(Lcom/google/android/exoplayer2/source/dash/manifest/Period;JJ)J
    .registers 28
    .param p0, "period"    # Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 1144
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v5

    .line 1145
    .local v5, "periodStartTimeInManifestUs":J
    const-wide v7, 0x7fffffffffffffffL

    .line 1146
    .local v7, "availableEndTimeInManifestUs":J
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->hasVideoOrAudioAdaptationSets(Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Z

    move-result v9

    .line 1147
    .local v9, "haveAudioVideoAdaptationSets":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_16
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_82

    .line 1148
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 1149
    .local v11, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v12, v11, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 1152
    .local v12, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    iget v13, v11, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v13, v15, :cond_35

    iget v13, v11, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v15, 0x2

    if-eq v13, v15, :cond_35

    const/4 v15, 0x1

    goto :goto_36

    :cond_35
    const/4 v15, 0x0

    :goto_36
    move v13, v15

    .line 1154
    .local v13, "adaptationSetIsNotAudioVideo":Z
    if-eqz v9, :cond_3b

    if-nez v13, :cond_79

    .line 1155
    :cond_3b
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_42

    .line 1156
    goto :goto_79

    .line 1158
    :cond_42
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v14

    .line 1159
    .local v14, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-nez v14, :cond_51

    .line 1160
    add-long v15, v5, v1

    return-wide v15

    .line 1162
    :cond_51
    invoke-interface {v14, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getAvailableSegmentCount(JJ)J

    move-result-wide v15

    .line 1163
    .local v15, "availableSegmentCount":J
    const-wide/16 v17, 0x0

    cmp-long v19, v15, v17

    if-nez v19, :cond_5c

    .line 1164
    return-wide v5

    .line 1166
    :cond_5c
    nop

    .line 1167
    invoke-interface {v14, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v17

    .line 1168
    .local v17, "firstAvailableSegmentNum":J
    add-long v19, v17, v15

    const-wide/16 v21, 0x1

    sub-long v3, v19, v21

    .line 1169
    .local v3, "lastAvailableSegmentNum":J
    nop

    .line 1171
    invoke-interface {v14, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v19

    add-long v19, v5, v19

    .line 1172
    invoke-interface {v14, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v21

    add-long v0, v19, v21

    .line 1173
    .local v0, "adaptationSetAvailableEndTimeInManifestUs":J
    nop

    .line 1174
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 1147
    .end local v0    # "adaptationSetAvailableEndTimeInManifestUs":J
    .end local v3    # "lastAvailableSegmentNum":J
    .end local v11    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v12    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .end local v13    # "adaptationSetIsNotAudioVideo":Z
    .end local v14    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .end local v15    # "availableSegmentCount":J
    .end local v17    # "firstAvailableSegmentNum":J
    :cond_79
    :goto_79
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    goto :goto_16

    .line 1176
    .end local v10    # "i":I
    :cond_82
    return-wide v7
.end method

.method private static getAvailableStartTimeInManifestUs(Lcom/google/android/exoplayer2/source/dash/manifest/Period;JJ)J
    .registers 26
    .param p0, "period"    # Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 1110
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v5

    .line 1111
    .local v5, "periodStartTimeInManifestUs":J
    move-wide v7, v5

    .line 1112
    .local v7, "availableStartTimeInManifestUs":J
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->hasVideoOrAudioAdaptationSets(Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Z

    move-result v9

    .line 1113
    .local v9, "haveAudioVideoAdaptationSets":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_12
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_72

    .line 1114
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 1115
    .local v11, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v12, v11, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 1118
    .local v12, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    iget v13, v11, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v13, v15, :cond_31

    iget v13, v11, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v15, 0x2

    if-eq v13, v15, :cond_31

    const/4 v15, 0x1

    goto :goto_32

    :cond_31
    const/4 v15, 0x0

    :goto_32
    move v13, v15

    .line 1120
    .local v13, "adaptationSetIsNotAudioVideo":Z
    if-eqz v9, :cond_37

    if-nez v13, :cond_6b

    .line 1121
    :cond_37
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3e

    .line 1122
    goto :goto_6b

    .line 1124
    :cond_3e
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v14

    .line 1125
    .local v14, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-nez v14, :cond_4b

    .line 1126
    return-wide v5

    .line 1128
    :cond_4b
    invoke-interface {v14, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getAvailableSegmentCount(JJ)J

    move-result-wide v15

    .line 1129
    .local v15, "availableSegmentCount":J
    const-wide/16 v17, 0x0

    cmp-long v19, v15, v17

    if-nez v19, :cond_56

    .line 1130
    return-wide v5

    .line 1132
    :cond_56
    nop

    .line 1133
    move-object/from16 v17, v11

    move-object/from16 v18, v12

    .end local v11    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v12    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .local v17, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .local v18, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface {v14, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v11

    .line 1134
    .local v11, "firstAvailableSegmentNum":J
    nop

    .line 1135
    invoke-interface {v14, v11, v12}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v19

    add-long v0, v5, v19

    .line 1136
    .local v0, "adaptationSetAvailableStartTimeInManifestUs":J
    nop

    .line 1137
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 1113
    .end local v0    # "adaptationSetAvailableStartTimeInManifestUs":J
    .end local v11    # "firstAvailableSegmentNum":J
    .end local v13    # "adaptationSetIsNotAudioVideo":Z
    .end local v14    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .end local v15    # "availableSegmentCount":J
    .end local v17    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v18    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_6b
    :goto_6b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    goto :goto_12

    .line 1139
    .end local v10    # "i":I
    :cond_72
    return-wide v7
.end method

.method private static getIntervalUntilNextManifestRefreshMs(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;J)J
    .registers 28
    .param p0, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p1, "nowUnixTimeMs"    # J

    .line 1078
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1079
    .local v1, "periodIndex":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    .line 1080
    .local v2, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v3

    .line 1081
    .local v3, "periodStartUs":J
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v5

    .line 1082
    .local v5, "periodDurationUs":J
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v7

    .line 1083
    .local v7, "nowUnixTimeUs":J
    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v9

    .line 1084
    .local v9, "availabilityStartTimeUs":J
    const-wide/16 v11, 0x1388

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v11

    .line 1085
    .local v11, "intervalUs":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_27
    iget-object v14, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_6f

    .line 1086
    iget-object v14, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v14, v14, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 1087
    .local v14, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_40

    .line 1088
    goto :goto_6c

    .line 1090
    :cond_40
    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v15

    .line 1091
    .local v15, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-eqz v15, :cond_6c

    .line 1092
    add-long v16, v9, v3

    .line 1095
    invoke-interface {v15, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getNextSegmentAvailableTimeUs(JJ)J

    move-result-wide v18

    add-long v16, v16, v18

    .line 1096
    .local v16, "nextSegmentShiftUnixTimeUs":J
    sub-long v18, v16, v7

    .line 1098
    .local v18, "requiredIntervalUs":J
    const-wide/32 v20, 0x186a0

    sub-long v22, v11, v20

    cmp-long v24, v18, v22

    if-ltz v24, :cond_6a

    cmp-long v22, v18, v11

    if-lez v22, :cond_6c

    add-long v20, v11, v20

    cmp-long v22, v18, v20

    if-gez v22, :cond_6c

    .line 1100
    :cond_6a
    move-wide/from16 v11, v18

    .line 1085
    .end local v14    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .end local v15    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .end local v16    # "nextSegmentShiftUnixTimeUs":J
    .end local v18    # "requiredIntervalUs":J
    :cond_6c
    :goto_6c
    add-int/lit8 v13, v13, 0x1

    goto :goto_27

    .line 1105
    .end local v13    # "i":I
    :cond_6f
    const-wide/16 v13, 0x3e8

    sget-object v15, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v11, v12, v13, v14, v15}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v13

    return-wide v13
.end method

.method private getManifestLoadRetryDelayMillis()J
    .registers 3

    .line 1063
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static hasVideoOrAudioAdaptationSets(Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Z
    .registers 5
    .param p0, "period"    # Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    .line 1191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1192
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    .line 1193
    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    goto :goto_1d

    .line 1191
    .end local v1    # "type":I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1194
    .restart local v1    # "type":I
    :cond_1d
    :goto_1d
    return v2

    .line 1197
    .end local v0    # "i":I
    .end local v1    # "type":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private static isIndexExplicit(Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Z
    .registers 4
    .param p0, "period"    # Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    .line 1180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2c

    .line 1182
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v1

    .line 1183
    .local v1, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_2a

    .line 1180
    .end local v1    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1184
    .restart local v1    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    :cond_2a
    :goto_2a
    const/4 v2, 0x1

    return v2

    .line 1187
    .end local v0    # "i":I
    .end local v1    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    :cond_2c
    return v2
.end method

.method private loadNtpTimeOffset()V
    .registers 3

    .line 822
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/SntpClient;->initialize(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;)V

    .line 835
    return-void
.end method

.method private onUtcTimestampResolutionError(Ljava/io/IOException;)V
    .registers 4
    .param p1, "error"    # Ljava/io/IOException;

    .line 843
    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve time offset."

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 845
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    .line 846
    return-void
.end method

.method private onUtcTimestampResolved(J)V
    .registers 4
    .param p1, "elapsedRealtimeOffsetMs"    # J

    .line 838
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 839
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    .line 840
    return-void
.end method

.method private processManifest(Z)V
    .registers 50
    .param p1, "scheduleRefresh"    # Z

    .line 850
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 851
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 852
    .local v2, "id":I
    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    if-lt v2, v3, :cond_26

    .line 853
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    .line 850
    .end local v2    # "id":I
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 859
    .end local v1    # "i":I
    :cond_29
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v1

    .line 860
    .local v1, "firstPeriod":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 861
    .local v3, "lastPeriodIndex":I
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    .line 862
    .local v5, "lastPeriod":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    .line 863
    .local v6, "lastPeriodDurationUs":J
    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v8

    .line 864
    .local v8, "nowUnixTimeUs":J
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 866
    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v10

    .line 865
    invoke-static {v1, v10, v11, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getAvailableStartTimeInManifestUs(Lcom/google/android/exoplayer2/source/dash/manifest/Period;JJ)J

    move-result-wide v10

    .line 867
    .local v10, "windowStartTimeInManifestUs":J
    nop

    .line 868
    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getAvailableEndTimeInManifestUs(Lcom/google/android/exoplayer2/source/dash/manifest/Period;JJ)J

    move-result-wide v12

    .line 869
    .local v12, "windowEndTimeInManifestUs":J
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v14, v14, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v14, :cond_6b

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->isIndexExplicit(Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Z

    move-result v14

    if-nez v14, :cond_6b

    const/4 v14, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v14, 0x0

    .line 870
    .local v14, "windowChangingImplicitly":Z
    :goto_6c
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v14, :cond_8d

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v19, v5

    .end local v5    # "lastPeriod":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .local v19, "lastPeriod":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    cmp-long v2, v4, v15

    if-eqz v2, :cond_8f

    .line 872
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    .line 873
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v4

    sub-long v4, v12, v4

    .line 874
    .local v4, "timeShiftBufferStartTimeInManifestUs":J
    nop

    .line 875
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_8f

    .line 870
    .end local v4    # "timeShiftBufferStartTimeInManifestUs":J
    .end local v19    # "lastPeriod":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .restart local v5    # "lastPeriod":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    :cond_8d
    move-object/from16 v19, v5

    .line 877
    .end local v5    # "lastPeriod":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .restart local v19    # "lastPeriod":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    :cond_8f
    :goto_8f
    sub-long v4, v12, v10

    .line 878
    .local v4, "windowDurationUs":J
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 879
    .local v20, "windowStartUnixTimeMs":J
    const-wide/16 v22, 0x0

    .line 880
    .local v22, "windowDefaultPositionUs":J
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v2, :cond_ee

    .line 881
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v37, v3

    .end local v3    # "lastPeriodIndex":I
    .local v37, "lastPeriodIndex":I
    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    cmp-long v24, v2, v15

    if-eqz v24, :cond_aa

    const/4 v2, 0x1

    goto :goto_ab

    :cond_aa
    const/4 v2, 0x0

    :goto_ab
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 882
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 884
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v2

    sub-long v2, v8, v2

    sub-long/2addr v2, v10

    .line 886
    .local v2, "nowInWindowUs":J
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->updateLiveConfiguration(JJ)V

    .line 887
    iget-object v15, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-wide/from16 v38, v6

    .end local v6    # "lastPeriodDurationUs":J
    .local v38, "lastPeriodDurationUs":J
    iget-wide v6, v15, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 888
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v15

    add-long v20, v6, v15

    .line 889
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v6

    sub-long v22, v2, v6

    .line 890
    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->minLiveStartPositionUs:J

    const-wide/16 v15, 0x2

    move-wide/from16 v24, v2

    .end local v2    # "nowInWindowUs":J
    .local v24, "nowInWindowUs":J
    div-long v2, v4, v15

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 891
    .local v2, "minimumWindowDefaultPositionUs":J
    cmp-long v6, v22, v2

    if-gez v6, :cond_e9

    .line 895
    move-wide/from16 v22, v2

    move-wide/from16 v2, v20

    move-wide/from16 v6, v22

    goto :goto_f6

    .line 891
    :cond_e9
    move-wide/from16 v2, v20

    move-wide/from16 v6, v22

    goto :goto_f6

    .line 880
    .end local v2    # "minimumWindowDefaultPositionUs":J
    .end local v24    # "nowInWindowUs":J
    .end local v37    # "lastPeriodIndex":I
    .end local v38    # "lastPeriodDurationUs":J
    .restart local v3    # "lastPeriodIndex":I
    .restart local v6    # "lastPeriodDurationUs":J
    :cond_ee
    move/from16 v37, v3

    move-wide/from16 v38, v6

    .end local v3    # "lastPeriodIndex":I
    .end local v6    # "lastPeriodDurationUs":J
    .restart local v37    # "lastPeriodIndex":I
    .restart local v38    # "lastPeriodDurationUs":J
    move-wide/from16 v2, v20

    move-wide/from16 v6, v22

    .line 898
    .end local v20    # "windowStartUnixTimeMs":J
    .end local v22    # "windowDefaultPositionUs":J
    .local v2, "windowStartUnixTimeMs":J
    .local v6, "windowDefaultPositionUs":J
    :goto_f6
    move-wide v15, v8

    .end local v8    # "nowUnixTimeUs":J
    .local v15, "nowUnixTimeUs":J
    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v8

    sub-long v8, v10, v8

    .line 899
    .local v8, "offsetInFirstPeriodUs":J
    new-instance v40, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;

    move-object/from16 v41, v1

    .end local v1    # "firstPeriod":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .local v41, "firstPeriod":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-wide/from16 v42, v10

    .end local v10    # "windowStartTimeInManifestUs":J
    .local v42, "windowStartTimeInManifestUs":J
    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    move-wide/from16 v44, v12

    .end local v12    # "windowEndTimeInManifestUs":J
    .local v44, "windowEndTimeInManifestUs":J
    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    move-wide/from16 v46, v15

    .end local v15    # "nowUnixTimeUs":J
    .local v46, "nowUnixTimeUs":J
    iget-object v15, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move/from16 v16, v14

    .end local v14    # "windowChangingImplicitly":Z
    .local v16, "windowChangingImplicitly":Z
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 910
    move-object/from16 v35, v14

    iget-boolean v14, v15, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v14, :cond_120

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    goto :goto_121

    :cond_120
    const/4 v14, 0x0

    :goto_121
    move-object/from16 v36, v14

    move-object/from16 v20, v40

    move-wide/from16 v21, v10

    move-wide/from16 v23, v2

    move-wide/from16 v25, v12

    move/from16 v27, v1

    move-wide/from16 v28, v8

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move-object/from16 v34, v15

    invoke-direct/range {v20 .. v36}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;-><init>(JJJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    move-object/from16 v1, v40

    .line 911
    .local v1, "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 913
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-nez v10, :cond_1a1

    .line 915
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 917
    if-eqz v16, :cond_15d

    .line 918
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 921
    invoke-static {v13, v14}, Lcom/google/android/exoplayer2/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v13

    .line 920
    invoke-static {v12, v13, v14}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getIntervalUntilNextManifestRefreshMs(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;J)J

    move-result-wide v12

    .line 918
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 923
    :cond_15d
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    if-eqz v10, :cond_168

    .line 924
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    move-wide/from16 v20, v2

    move-object v3, v1

    goto :goto_1a4

    .line 925
    :cond_168
    if-eqz p1, :cond_19d

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v10, v10, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v10, :cond_19d

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v10, v12

    if-eqz v14, :cond_19d

    .line 929
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    .line 930
    .local v10, "minUpdatePeriodMs":J
    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_189

    .line 935
    const-wide/16 v10, 0x1388

    .line 937
    :cond_189
    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    add-long/2addr v14, v10

    .line 938
    .local v14, "nextLoadTimestampMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move-wide/from16 v20, v2

    move-object v3, v1

    .end local v1    # "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    .end local v2    # "windowStartUnixTimeMs":J
    .local v3, "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    .restart local v20    # "windowStartUnixTimeMs":J
    sub-long v1, v14, v17

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 939
    .local v1, "delayUntilNextLoadMs":J
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh(J)V

    goto :goto_1a4

    .line 925
    .end local v3    # "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    .end local v10    # "minUpdatePeriodMs":J
    .end local v14    # "nextLoadTimestampMs":J
    .end local v20    # "windowStartUnixTimeMs":J
    .local v1, "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    .restart local v2    # "windowStartUnixTimeMs":J
    :cond_19d
    move-wide/from16 v20, v2

    move-object v3, v1

    .end local v1    # "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    .end local v2    # "windowStartUnixTimeMs":J
    .restart local v3    # "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    .restart local v20    # "windowStartUnixTimeMs":J
    goto :goto_1a4

    .line 913
    .end local v3    # "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    .end local v20    # "windowStartUnixTimeMs":J
    .restart local v1    # "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    .restart local v2    # "windowStartUnixTimeMs":J
    :cond_1a1
    move-wide/from16 v20, v2

    move-object v3, v1

    .line 942
    .end local v1    # "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    .end local v2    # "windowStartUnixTimeMs":J
    .restart local v3    # "timeline":Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
    .restart local v20    # "windowStartUnixTimeMs":J
    :goto_1a4
    return-void
.end method

.method private resolveUtcTimingElement(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .registers 5
    .param p1, "timingElement"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    .line 784
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->schemeIdUri:Ljava/lang/String;

    .line 785
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "urn:mpeg:dash:utc:direct:2014"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 786
    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_68

    .line 788
    :cond_13
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 789
    const-string v1, "urn:mpeg:dash:utc:http-iso:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_5f

    .line 791
    :cond_24
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 792
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_55

    .line 794
    :cond_35
    const-string v1, "urn:mpeg:dash:utc:ntp:2014"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 795
    const-string v1, "urn:mpeg:dash:utc:ntp:2012"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_51

    .line 799
    :cond_46
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unsupported UTC timing scheme"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    goto :goto_6b

    .line 796
    :cond_51
    :goto_51
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadNtpTimeOffset()V

    goto :goto_6b

    .line 793
    :cond_55
    :goto_55
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_6b

    .line 790
    :cond_5f
    :goto_5f
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_6b

    .line 787
    :cond_68
    :goto_68
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementDirect(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    .line 801
    :goto_6b
    return-void
.end method

.method private resolveUtcTimingElementDirect(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .registers 6
    .param p1, "timingElement"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    .line 805
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 806
    .local v0, "utcTimestampMs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    sub-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V
    :try_end_d
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_d} :catch_e

    .line 809
    .end local v0    # "utcTimestampMs":J
    goto :goto_12

    .line 807
    :catch_e
    move-exception v0

    .line 808
    .local v0, "e":Lcom/google/android/exoplayer2/ParserException;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    .line 810
    .end local v0    # "e":Lcom/google/android/exoplayer2/ParserException;
    :goto_12
    return-void
.end method

.method private resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .registers 7
    .param p1, "timingElement"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 814
    .local p2, "parser":Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<Ljava/lang/Long;>;"
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    .line 816
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    .line 814
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    .line 819
    return-void
.end method

.method private scheduleManifestRefresh(J)V
    .registers 5
    .param p1, "delayUntilNextLoadMs"    # J

    .line 1039
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1040
    return-void
.end method

.method private startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V
    .registers 14
    .param p3, "minRetryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1070
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<TT;>;"
    .local p2, "callback":Lcom/google/android/exoplayer2/upstream/Loader$Callback;, "Lcom/google/android/exoplayer2/upstream/Loader$Callback<Lcom/google/android/exoplayer2/upstream/ParsingLoadable<TT;>;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v7

    .line 1071
    .local v7, "elapsedRealtimeMs":J
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    new-instance v9, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v1, v9

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v0, v9, v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    .line 1074
    return-void
.end method

.method private startLoadingManifest()V
    .registers 6

    .line 1043
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1044
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1045
    return-void

    .line 1047
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    .line 1049
    return-void

    .line 1052
    :cond_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_1f
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 1054
    .local v1, "manifestUri":Landroid/net/Uri;
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3b

    .line 1055
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    .line 1056
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 1059
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v3

    .line 1056
    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    .line 1060
    return-void

    .line 1054
    .end local v1    # "manifestUri":Landroid/net/Uri;
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private updateLiveConfiguration(JJ)V
    .registers 26
    .param p1, "nowInWindowUs"    # J
    .param p3, "windowDurationUs"    # J

    .line 946
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v7

    .line 947
    .local v7, "maxPossibleLiveOffsetMs":J
    move-wide v1, v7

    .line 949
    .local v1, "maxLiveOffsetMs":J
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v9

    if-eqz v5, :cond_22

    .line 950
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move-wide v11, v1

    goto :goto_3f

    .line 951
    :cond_22
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v3, :cond_3e

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->maxOffsetMs:J

    cmp-long v5, v3, v9

    if-eqz v5, :cond_3e

    .line 953
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->maxOffsetMs:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move-wide v11, v1

    goto :goto_3f

    .line 956
    :cond_3e
    move-wide v11, v1

    .end local v1    # "maxLiveOffsetMs":J
    .local v11, "maxLiveOffsetMs":J
    :goto_3f
    sub-long v1, p1, p3

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v1

    .line 957
    .local v1, "minLiveOffsetMs":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_51

    cmp-long v5, v11, v3

    if-lez v5, :cond_51

    .line 960
    const-wide/16 v1, 0x0

    .line 962
    :cond_51
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minBufferTimeMs:J

    cmp-long v5, v3, v9

    if-eqz v5, :cond_64

    .line 964
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minBufferTimeMs:J

    add-long/2addr v3, v1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move-wide v13, v1

    goto :goto_65

    .line 962
    :cond_64
    move-wide v13, v1

    .line 968
    .end local v1    # "minLiveOffsetMs":J
    .local v13, "minLiveOffsetMs":J
    :goto_65
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v3, v1, v9

    if-eqz v3, :cond_7c

    .line 969
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 970
    move-wide v3, v13

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v13

    goto :goto_98

    .line 972
    :cond_7c
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v1, :cond_98

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->minOffsetMs:J

    cmp-long v3, v1, v9

    if-eqz v3, :cond_98

    .line 974
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->minOffsetMs:J

    .line 975
    move-wide v3, v13

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v13

    .line 978
    :cond_98
    :goto_98
    cmp-long v1, v13, v11

    if-lez v1, :cond_9d

    .line 981
    move-wide v11, v13

    .line 984
    :cond_9d
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v3, v1, v9

    if-eqz v3, :cond_aa

    .line 986
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .local v1, "targetOffsetMs":J
    goto :goto_d0

    .line 987
    .end local v1    # "targetOffsetMs":J
    :cond_aa
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v1, :cond_c1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    cmp-long v3, v1, v9

    if-eqz v3, :cond_c1

    .line 989
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    .restart local v1    # "targetOffsetMs":J
    goto :goto_d0

    .line 990
    .end local v1    # "targetOffsetMs":J
    :cond_c1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    cmp-long v3, v1, v9

    if-eqz v3, :cond_ce

    .line 991
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    .restart local v1    # "targetOffsetMs":J
    goto :goto_d0

    .line 993
    .end local v1    # "targetOffsetMs":J
    :cond_ce
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->fallbackTargetLiveOffsetMs:J

    .line 995
    .restart local v1    # "targetOffsetMs":J
    :goto_d0
    cmp-long v3, v1, v13

    if-gez v3, :cond_d7

    .line 996
    move-wide v1, v13

    move-wide v15, v1

    goto :goto_d8

    .line 995
    :cond_d7
    move-wide v15, v1

    .line 998
    .end local v1    # "targetOffsetMs":J
    .local v15, "targetOffsetMs":J
    :goto_d8
    cmp-long v1, v15, v11

    if-lez v1, :cond_f7

    .line 999
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->minLiveStartPositionUs:J

    const-wide/16 v3, 0x2

    div-long v3, p3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    .line 1000
    .local v17, "safeDistanceFromWindowStartUs":J
    sub-long v1, p1, v17

    .line 1001
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v19

    .line 1002
    .local v19, "maxTargetOffsetForSafeDistanceToWindowStartMs":J
    nop

    .line 1003
    move-wide/from16 v1, v19

    move-wide v3, v13

    move-wide v5, v11

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v15

    move-wide v1, v15

    goto :goto_f8

    .line 998
    .end local v17    # "safeDistanceFromWindowStartUs":J
    .end local v19    # "maxTargetOffsetForSafeDistanceToWindowStartMs":J
    :cond_f7
    move-wide v1, v15

    .line 1006
    .end local v15    # "targetOffsetMs":J
    .restart local v1    # "targetOffsetMs":J
    :goto_f8
    const v3, -0x800001

    .line 1007
    .local v3, "minPlaybackSpeed":F
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v4, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v5, -0x800001

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_10f

    .line 1008
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v3, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    goto :goto_11b

    .line 1009
    :cond_10f
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v4, :cond_11b

    .line 1010
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget v3, v4, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->minPlaybackSpeed:F

    .line 1012
    :cond_11b
    :goto_11b
    const v4, -0x800001

    .line 1013
    .local v4, "maxPlaybackSpeed":F
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v6, v6, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v6, v6, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_12f

    .line 1014
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v6, v6, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v4, v6, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    goto :goto_13b

    .line 1015
    :cond_12f
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v6, :cond_13b

    .line 1016
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget v4, v6, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->maxPlaybackSpeed:F

    .line 1018
    :cond_13b
    :goto_13b
    cmpl-float v6, v3, v5

    if-nez v6, :cond_157

    cmpl-float v5, v4, v5

    if-nez v5, :cond_157

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v5, :cond_153

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    cmp-long v15, v5, v9

    if-nez v15, :cond_157

    .line 1025
    :cond_153
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1026
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1028
    :cond_157
    new-instance v5, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    .line 1030
    invoke-virtual {v5, v1, v2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v5

    .line 1031
    invoke-virtual {v5, v13, v14}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v5

    .line 1032
    invoke-virtual {v5, v11, v12}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v5

    .line 1033
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v5

    .line 1034
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v5

    .line 1035
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1036
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 30
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    move-object/from16 v0, p0

    move-object/from16 v16, p2

    .line 529
    move-object/from16 v15, p1

    iget-object v1, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int v20, v1, v2

    .local v20, "periodIndex":I
    move/from16 v5, v20

    .line 530
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v21

    .local v21, "periodEventDispatcher":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    move-object/from16 v12, v21

    .line 531
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v22

    .local v22, "drmEventDispatcher":Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    move-object/from16 v10, v22

    .line 532
    new-instance v23, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    move-object/from16 v1, v23

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int v2, v2, v20

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    move-object/from16 v18, v1

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v19

    move-object/from16 v1, v24

    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;-><init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    move-object/from16 v1, v23

    .line 551
    .local v1, "mediaPeriod":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget v3, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 552
    return-object v1
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 2

    .line 504
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method synthetic lambda$new$0$com-google-android-exoplayer2-source-dash-DashMediaSource()V
    .registers 2

    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 525
    return-void
.end method

.method onDashManifestPublishTimeExpired(J)V
    .registers 8
    .param p1, "expiredManifestPublishTimeUs"    # J

    .line 595
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    cmp-long v2, v0, p1

    if-gez v2, :cond_11

    .line 597
    :cond_f
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 599
    :cond_11
    return-void
.end method

.method onDashManifestRefreshRequested()V
    .registers 3

    .line 590
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 591
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    .line 592
    return-void
.end method

.method onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .registers 21
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "*>;JJ)V"
        }
    .end annotation

    .line 768
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<*>;"
    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v14, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 772
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 773
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 776
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 777
    .local v2, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 778
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    .line 779
    return-void
.end method

.method onManifestLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .registers 23
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ)V"
        }
    .end annotation

    .line 605
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v13, p2

    new-instance v0, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 609
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 610
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v15

    move-object v3, v0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-wide v13, v15

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 614
    .local v3, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 615
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v4, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    .line 616
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 618
    .local v4, "newManifest":Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v5, 0x0

    if-nez v0, :cond_3d

    const/4 v0, 0x0

    goto :goto_41

    :cond_3d
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    :goto_41
    move v6, v0

    .line 619
    .local v6, "oldPeriodCount":I
    const/4 v0, 0x0

    .line 620
    .local v0, "removedPeriodCount":I
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v7

    iget-wide v7, v7, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    move v9, v0

    .line 621
    .end local v0    # "removedPeriodCount":I
    .local v7, "newFirstPeriodStartTimeMs":J
    .local v9, "removedPeriodCount":I
    :goto_4a
    if-ge v9, v6, :cond_5b

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 622
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    cmp-long v0, v10, v7

    if-gez v0, :cond_5b

    .line 623
    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    .line 626
    :cond_5b
    iget-boolean v0, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_d3

    .line 627
    const/4 v0, 0x0

    .line 628
    .local v0, "isManifestStale":Z
    sub-int v10, v6, v9

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v11

    if-le v10, v11, :cond_71

    .line 634
    const-string v10, "DashMediaSource"

    const-string v11, "Loaded out of sync manifest"

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/4 v0, 0x1

    goto :goto_af

    .line 636
    :cond_71
    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v10, v12

    if-eqz v14, :cond_af

    iget-wide v10, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    cmp-long v14, v10, v12

    if-gtz v14, :cond_af

    .line 641
    const-string v10, "DashMediaSource"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loaded stale dynamic manifest: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v0, 0x1

    .line 650
    :cond_af
    :goto_af
    if-eqz v0, :cond_d1

    .line 651
    iget v5, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    add-int/lit8 v10, v5, 0x1

    iput v10, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v11, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 652
    invoke-interface {v10, v11}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v10

    if-ge v5, v10, :cond_c9

    .line 653
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getManifestLoadRetryDelayMillis()J

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh(J)V

    goto :goto_d0

    .line 655
    :cond_c9
    new-instance v5, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;-><init>()V

    iput-object v5, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    .line 657
    :goto_d0
    return-void

    .line 659
    :cond_d1
    iput v5, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 662
    .end local v0    # "isManifestStale":Z
    :cond_d3
    iput-object v4, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 663
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    iget-boolean v10, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    and-int/2addr v0, v10

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    .line 664
    move-wide/from16 v10, p2

    sub-long v12, v10, p4

    iput-wide v12, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 665
    iput-wide v10, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 667
    iget-object v12, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v12

    .line 672
    :try_start_e7
    iget-object v0, v2, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v13, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    const/4 v14, 0x1

    if-ne v0, v13, :cond_f1

    const/4 v5, 0x1

    :cond_f1
    move v0, v5

    .line 673
    .local v0, "isSameUriInstance":Z
    if-eqz v0, :cond_105

    .line 677
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    if-eqz v5, :cond_ff

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    goto :goto_103

    :cond_ff
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v5

    :goto_103
    iput-object v5, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 679
    .end local v0    # "isSameUriInstance":Z
    :cond_105
    monitor-exit v12
    :try_end_106
    .catchall {:try_start_e7 .. :try_end_106} :catchall_12d

    .line 681
    if-nez v6, :cond_124

    .line 682
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_120

    .line 683
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    if-eqz v0, :cond_11c

    .line 684
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElement(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    goto :goto_12c

    .line 686
    :cond_11c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadNtpTimeOffset()V

    goto :goto_12c

    .line 689
    :cond_120
    invoke-direct {v1, v14}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_12c

    .line 692
    :cond_124
    iget v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    .line 693
    invoke-direct {v1, v14}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    .line 695
    :goto_12c
    return-void

    .line 679
    :catchall_12d
    move-exception v0

    :try_start_12e
    monitor-exit v12
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    goto :goto_131

    :goto_130
    throw v0

    :goto_131
    goto :goto_130
.end method

.method onManifestLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 24
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    .line 703
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    new-instance v15, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 707
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 708
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 711
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 712
    .local v3, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    new-instance v4, Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(I)V

    .line 713
    .local v4, "mediaLoadData":Lcom/google/android/exoplayer2/source/MediaLoadData;
    new-instance v5, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v6, p7

    invoke-direct {v5, v3, v4, v2, v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 715
    .local v5, "loadErrorInfo":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v7, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v7

    .line 717
    .local v7, "retryDelayMs":J
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v7, v9

    if-nez v11, :cond_40

    .line 718
    sget-object v9, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    goto :goto_45

    .line 719
    :cond_40
    const/4 v9, 0x0

    invoke-static {v9, v7, v8}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v9

    :goto_45
    nop

    .line 720
    .local v9, "loadErrorAction":Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    .line 721
    .local v10, "wasCanceled":Z
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v12, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v11, v3, v12, v2, v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 722
    if-eqz v10, :cond_5c

    .line 723
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v12, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v11, v12, v13}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 725
    :cond_5c
    return-object v9
.end method

.method onUtcTimestampLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .registers 21
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 730
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Ljava/lang/Long;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v14, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 734
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 735
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 738
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 739
    .local v2, "loadEventInfo":Lcom/google/android/exoplayer2/source/LoadEventInfo;
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 740
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;I)V

    .line 741
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v3, p2

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    .line 742
    return-void
.end method

.method onUtcTimestampLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 24
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    .line 749
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    new-instance v14, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v7, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 753
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 754
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v9

    .line 757
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v0, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 749
    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v2, v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 762
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    .line 763
    sget-object v3, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-object v3
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 5
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 509
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 511
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    .line 512
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz v0, :cond_1d

    .line 513
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_37

    .line 515
    :cond_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 516
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "DashMediaSource"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 517
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 518
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    .line 520
    :goto_37
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 5
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 557
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    .line 558
    .local v0, "dashMediaPeriod":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->release()V

    .line 559
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 560
    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 5

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    .line 565
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 566
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v2, :cond_f

    .line 567
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    .line 568
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 570
    :cond_f
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 571
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 572
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    goto :goto_1d

    :cond_1c
    move-object v2, v1

    :goto_1d
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 573
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 574
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    .line 575
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_2e

    .line 576
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 577
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 579
    :cond_2e
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 580
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 581
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 582
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 583
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->reset()V

    .line 584
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    .line 585
    return-void
.end method

.method public replaceManifestUri(Landroid/net/Uri;)V
    .registers 4
    .param p1, "manifestUri"    # Landroid/net/Uri;

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 496
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    .line 497
    monitor-exit v0

    .line 498
    return-void

    .line 497
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method
