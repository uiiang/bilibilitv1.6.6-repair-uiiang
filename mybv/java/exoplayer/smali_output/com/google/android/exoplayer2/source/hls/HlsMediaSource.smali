.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;,
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$MetadataType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final METADATA_TYPE_EMSG:I = 0x3

.field public static final METADATA_TYPE_ID3:I = 0x1


# instance fields
.field private final allowChunklessPreparation:Z

.field private final cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private final elapsedRealTimeOffsetMs:J

.field private final extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final metadataType:I

.field private final playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final timestampAdjusterInitializationTimeoutMs:J

.field private final useSessionKeys:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    const-string v0, "goog.exo.hls"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZJ)V
    .registers 32
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p3, "extractorFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p4, "compositeSequenceableLoaderFactory"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p5, "cmcdConfiguration"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    .param p6, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p7, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p8, "playlistTracker"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p9, "elapsedRealTimeOffsetMs"    # J
    .param p11, "allowChunklessPreparation"    # Z
    .param p12, "metadataType"    # I
    .param p13, "useSessionKeys"    # Z
    .param p14, "timestampAdjusterInitializationTimeoutMs"    # J

    .line 438
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 439
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 440
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 441
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 442
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 443
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 444
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 445
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 446
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 447
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 448
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 449
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->elapsedRealTimeOffsetMs:J

    .line 450
    move/from16 v11, p11

    iput-boolean v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->allowChunklessPreparation:Z

    .line 451
    move/from16 v12, p12

    iput v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->metadataType:I

    .line 452
    move/from16 v13, p13

    iput-boolean v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->useSessionKeys:Z

    .line 453
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->timestampAdjusterInitializationTimeoutMs:J

    .line 454
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZJLcom/google/android/exoplayer2/source/hls/HlsMediaSource$1;)V
    .registers 17
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p4, "x3"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;
    .param p5, "x4"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    .param p6, "x5"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p7, "x6"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p8, "x7"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p9, "x8"    # J
    .param p11, "x9"    # Z
    .param p12, "x10"    # I
    .param p13, "x11"    # Z
    .param p14, "x12"    # J
    .param p16, "x13"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$1;

    .line 75
    invoke-direct/range {p0 .. p15}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZJ)V

    return-void
.end method

.method private createTimelineForLive(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJLcom/google/android/exoplayer2/source/hls/HlsManifest;)Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;
    .registers 39
    .param p1, "playlist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "presentationStartTimeMs"    # J
    .param p4, "windowStartTimeMs"    # J
    .param p6, "manifest"    # Lcom/google/android/exoplayer2/source/hls/HlsManifest;

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 541
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 543
    .local v2, "offsetFromInitialStartTimeUs":J
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_1b

    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v7, v2

    move-wide v13, v7

    goto :goto_1c

    :cond_1b
    move-wide v13, v5

    .line 544
    .local v13, "periodDurationUs":J
    :goto_1c
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getLiveEdgeOffsetUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)J

    move-result-wide v11

    .line 546
    .local v11, "liveEdgeOffsetUs":J
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v7, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v4, v7, v5

    if-eqz v4, :cond_31

    .line 548
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v4

    .local v4, "targetLiveOffsetUs":J
    goto :goto_35

    .line 551
    .end local v4    # "targetLiveOffsetUs":J
    :cond_31
    invoke-static {v1, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getTargetLiveOffsetUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)J

    move-result-wide v4

    .line 554
    .restart local v4    # "targetLiveOffsetUs":J
    :goto_35
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v15, v6, v11

    .line 555
    move-wide v7, v4

    move-wide v9, v11

    move-wide/from16 v17, v4

    move-wide v4, v11

    .end local v11    # "liveEdgeOffsetUs":J
    .local v4, "liveEdgeOffsetUs":J
    .local v17, "targetLiveOffsetUs":J
    move-wide v11, v15

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v11

    .line 557
    .end local v17    # "targetLiveOffsetUs":J
    .local v11, "targetLiveOffsetUs":J
    invoke-direct {v0, v1, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->updateLiveConfiguration(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)V

    .line 558
    nop

    .line 559
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getLiveWindowDefaultStartPositionUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)J

    move-result-wide v27

    .line 560
    .local v27, "windowDefaultStartPositionUs":J
    iget v6, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_58

    iget-boolean v6, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasPositiveStartOffset:Z

    if-eqz v6, :cond_58

    const/16 v23, 0x1

    goto :goto_5b

    :cond_58
    const/4 v6, 0x0

    const/16 v23, 0x0

    .line 563
    .local v23, "suppressPositionProjection":Z
    :goto_5b
    new-instance v29, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    const/16 v21, 0x1

    iget-boolean v6, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    xor-int/lit8 v22, v6, 0x1

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object/from16 v25, v6

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-object/from16 v26, v6

    move-object/from16 v6, v29

    move-wide/from16 v7, p2

    move-wide/from16 v17, v9

    move-wide/from16 v9, p4

    move-wide/from16 v30, v11

    .end local v11    # "targetLiveOffsetUs":J
    .local v30, "targetLiveOffsetUs":J
    move-wide v11, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v2

    move-wide/from16 v19, v27

    move-object/from16 v24, p6

    invoke-direct/range {v6 .. v26}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    return-object v29
.end method

.method private createTimelineForOnDemand(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJLcom/google/android/exoplayer2/source/hls/HlsManifest;)Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;
    .registers 32
    .param p1, "playlist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "presentationStartTimeMs"    # J
    .param p4, "windowStartTimeMs"    # J
    .param p6, "manifest"    # Lcom/google/android/exoplayer2/source/hls/HlsManifest;

    .line 585
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_31

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_31

    .line 588
    :cond_16
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->preciseStart:Z

    if-nez v1, :cond_2e

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_23

    goto :goto_2e

    .line 591
    :cond_23
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    .line 592
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->findClosestPrecedingSegment(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    .local v1, "windowDefaultStartPositionUs":J
    goto :goto_33

    .line 589
    .end local v1    # "windowDefaultStartPositionUs":J
    :cond_2e
    :goto_2e
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    .restart local v1    # "windowDefaultStartPositionUs":J
    goto :goto_33

    .line 586
    .end local v1    # "windowDefaultStartPositionUs":J
    :cond_31
    :goto_31
    const-wide/16 v1, 0x0

    .line 596
    .restart local v1    # "windowDefaultStartPositionUs":J
    :goto_33
    new-instance v24, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    move-object/from16 v3, v24

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    const-wide/16 v14, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v6, p0

    iget-object v4, v6, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object/from16 v22, v4

    const/16 v23, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v16, v1

    move-object/from16 v21, p6

    invoke-direct/range {v3 .. v23}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    return-object v24
.end method

.method private static findClosestPrecedingIndependentPart(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .registers 9
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;"
        }
    .end annotation

    .line 698
    .local p0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;>;"
    const/4 v0, 0x0

    .line 699
    .local v0, "closestPart":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 700
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    .line 701
    .local v2, "part":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_1a

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    if-eqz v3, :cond_1a

    .line 702
    move-object v0, v2

    goto :goto_21

    .line 703
    :cond_1a
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_21

    .line 704
    goto :goto_24

    .line 699
    .end local v2    # "part":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 707
    .end local v1    # "i":I
    :cond_24
    :goto_24
    return-object v0
.end method

.method private static findClosestPrecedingSegment(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .registers 5
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;"
        }
    .end annotation

    .line 716
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    nop

    .line 718
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 717
    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v0

    .line 719
    .local v0, "segmentIndex":I
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    return-object v1
.end method

.method private getLiveEdgeOffsetUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)J
    .registers 6
    .param p1, "playlist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 613
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    if-eqz v0, :cond_14

    .line 614
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->elapsedRealTimeOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_16

    .line 615
    :cond_14
    const-wide/16 v0, 0x0

    .line 613
    :goto_16
    return-wide v0
.end method

.method private getLiveWindowDefaultStartPositionUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)J
    .registers 10
    .param p1, "playlist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "liveEdgeOffsetUs"    # J

    .line 621
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    .line 622
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    goto :goto_1a

    .line 625
    :cond_e
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v0, p2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_1a
    nop

    .line 626
    .local v0, "startPositionUs":J
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->preciseStart:Z

    if-eqz v2, :cond_20

    .line 627
    return-wide v0

    .line 630
    :cond_20
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 631
    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->findClosestPrecedingIndependentPart(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    move-result-object v2

    .line 632
    .local v2, "part":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    if-eqz v2, :cond_2b

    .line 633
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    return-wide v3

    .line 635
    :cond_2b
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 636
    const-wide/16 v3, 0x0

    return-wide v3

    .line 638
    :cond_36
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 639
    invoke-static {v3, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->findClosestPrecedingSegment(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v3

    .line 640
    .local v3, "segment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-static {v4, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->findClosestPrecedingIndependentPart(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    move-result-object v2

    .line 641
    if-eqz v2, :cond_47

    .line 642
    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    return-wide v4

    .line 644
    :cond_47
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    return-wide v4
.end method

.method private static getTargetLiveOffsetUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)J
    .registers 9
    .param p0, "playlist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p1, "liveEdgeOffsetUs"    # J

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    .line 680
    .local v0, "serverControl":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_13

    .line 681
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    sub-long/2addr v1, v3

    .local v1, "targetOffsetUs":J
    goto :goto_31

    .line 682
    .end local v1    # "targetOffsetUs":J
    :cond_13
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->partHoldBackUs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_22

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_22

    .line 685
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->partHoldBackUs:J

    .restart local v1    # "targetOffsetUs":J
    goto :goto_31

    .line 686
    .end local v1    # "targetOffsetUs":J
    :cond_22
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->holdBackUs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2b

    .line 687
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->holdBackUs:J

    .restart local v1    # "targetOffsetUs":J
    goto :goto_31

    .line 690
    .end local v1    # "targetOffsetUs":J
    :cond_2b
    const-wide/16 v1, 0x3

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    mul-long v1, v1, v3

    .line 692
    .restart local v1    # "targetOffsetUs":J
    :goto_31
    add-long v3, v1, p1

    return-wide v3
.end method

.method private updateLiveConfiguration(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)V
    .registers 9
    .param p1, "playlist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "targetLiveOffsetUs"    # J

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v1, -0x800001

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2e

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->holdBackUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_2e

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->partHoldBackUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 653
    .local v0, "disableSpeedAdjustment":Z
    :goto_2f
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    .line 655
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 656
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_43

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_47

    :cond_43
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v3, v3, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    :goto_47
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 657
    if-eqz v0, :cond_4e

    goto :goto_52

    :cond_4e
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v2, v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    :goto_52
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 658
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 659
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 29
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    .line 480
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v19

    .local v19, "mediaSourceEventDispatcher":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    move-object/from16 v10, v19

    .line 481
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v20

    .local v20, "drmEventDispatcher":Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    move-object/from16 v8, v20

    .line 482
    new-instance v21, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    move-object/from16 v1, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->allowChunklessPreparation:Z

    iget v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->metadataType:I

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->useSessionKeys:Z

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v16

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->timestampAdjusterInitializationTimeoutMs:J

    move-wide/from16 v17, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct/range {v1 .. v18}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ZIZLcom/google/android/exoplayer2/analytics/PlayerId;J)V

    .line 482
    return-object v21
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 2

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPrimaryPlaylistRefreshError()V

    .line 476
    return-void
.end method

.method public onPrimaryPlaylistRefreshed(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .registers 14
    .param p1, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 515
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_11

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_12

    :cond_11
    move-wide v9, v1

    .line 520
    .local v9, "windowStartTimeMs":J
    :goto_12
    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1f

    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1d

    goto :goto_1f

    .line 522
    :cond_1d
    move-wide v7, v1

    goto :goto_20

    .line 521
    :cond_1f
    :goto_1f
    move-wide v7, v9

    .line 522
    :goto_20
    nop

    .line 524
    .local v7, "presentationStartTimeMs":J
    new-instance v11, Lcom/google/android/exoplayer2/source/hls/HlsManifest;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 525
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMultivariantPlaylist()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    invoke-direct {v11, v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsManifest;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 527
    .local v11, "manifest":Lcom/google/android/exoplayer2/source/hls/HlsManifest;
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 528
    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createTimelineForLive(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJLcom/google/android/exoplayer2/source/hls/HlsManifest;)Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    move-result-object v0

    goto :goto_4a

    .line 530
    :cond_41
    move-object v0, p0

    move-object v1, p1

    move-wide v2, v7

    move-wide v4, v9

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createTimelineForOnDemand(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJLcom/google/android/exoplayer2/source/hls/HlsManifest;)Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    move-result-object v0

    :goto_4a
    nop

    .line 532
    .local v0, "timeline":Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 533
    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 5
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 463
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 464
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 465
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v2

    .line 464
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    .line 467
    nop

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    .line 469
    .local v0, "eventDispatcher":Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->start(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V

    .line 471
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 503
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->release()V

    .line 504
    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 2

    .line 508
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->stop()V

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    .line 510
    return-void
.end method
