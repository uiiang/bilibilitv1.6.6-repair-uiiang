.class public final Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000


# instance fields
.field private final continueLoadingCheckIntervalBytes:I

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private final loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

.field private timelineDurationUs:J

.field private timelineIsLive:Z

.field private timelineIsPlaceholder:Z

.field private timelineIsSeekable:Z

.field private transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;I)V
    .registers 9
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "progressiveMediaExtractorFactory"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;
    .param p4, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p5, "loadableLoadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p6, "continueLoadingCheckIntervalBytes"    # I

    .line 253
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 254
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 255
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 256
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 257
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

    .line 258
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 259
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 260
    iput p6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    .line 262
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 263
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ILcom/google/android/exoplayer2/source/ProgressiveMediaSource$1;)V
    .registers 8
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;
    .param p4, "x3"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p5, "x4"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$1;

    .line 56
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;I)V

    return-void
.end method

.method private notifySourceInfoRefreshed()V
    .registers 10

    .line 339
    new-instance v8, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsLive:Z

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    .line 347
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-eqz v1, :cond_1a

    .line 350
    new-instance v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    move-object v0, v1

    .line 368
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 369
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 20
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 286
    move-object v12, p0

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v13

    .line 287
    .local v13, "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_e

    .line 288
    invoke-interface {v13, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 290
    :cond_e
    new-instance v14, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

    .line 293
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;->createProgressiveMediaExtractor(Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    move-result-object v3

    iget-object v4, v12, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 295
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v5

    iget-object v6, v12, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 297
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v7

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v10, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget v11, v12, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    move-object v0, v14

    move-object v2, v13

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V

    .line 290
    return-object v14
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1

    .line 282
    return-void
.end method

.method public onSourceInfoRefreshed(JZZ)V
    .registers 8
    .param p1, "durationUs"    # J
    .param p3, "isSeekable"    # Z
    .param p4, "isLive"    # Z

    .line 319
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    goto :goto_d

    :cond_c
    move-wide v0, p1

    :goto_d
    move-wide p1, v0

    .line 320
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-nez v0, :cond_21

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_21

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_21

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsLive:Z

    if-ne v0, p4, :cond_21

    .line 325
    return-void

    .line 327
    :cond_21
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 328
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    .line 329
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsLive:Z

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    .line 331
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    .line 332
    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 5
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 272
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 274
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v2

    .line 273
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    .line 276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    .line 277
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 306
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->release()V

    .line 307
    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    .line 312
    return-void
.end method
