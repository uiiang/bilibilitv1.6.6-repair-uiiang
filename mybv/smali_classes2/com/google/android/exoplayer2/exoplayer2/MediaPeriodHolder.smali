.class final Lcom/google/android/exoplayer2/MediaPeriodHolder;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPeriodHolder"


# instance fields
.field public allRenderersInCorrectState:Z

.field public hasEnabledTracks:Z

.field public info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

.field private final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private final mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

.field private next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

.field public prepared:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private rendererPositionOffsetUs:J

.field public final sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .registers 24
    .param p1, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "rendererPositionOffsetUs"    # J
    .param p4, "trackSelector"    # Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .param p5, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p6, "mediaSourceList"    # Lcom/google/android/exoplayer2/MediaSourceList;
    .param p7, "info"    # Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .param p8, "emptyTrackSelectorResult"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 104
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 106
    move-wide/from16 v3, p2

    iput-wide v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 107
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 108
    move-object/from16 v13, p6

    iput-object v13, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 109
    iget-object v6, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iput-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 110
    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 111
    sget-object v6, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 112
    move-object/from16 v14, p8

    iput-object v14, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 113
    array-length v6, v1

    new-array v6, v6, [Lcom/google/android/exoplayer2/source/SampleStream;

    iput-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    .line 114
    array-length v6, v1

    new-array v6, v6, [Z

    iput-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    .line 115
    iget-object v6, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v9, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v11, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    .line 116
    move-object/from16 v7, p6

    move-object/from16 v8, p5

    invoke-static/range {v6 .. v12}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->createMediaPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/upstream/Allocator;JJ)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 118
    return-void
.end method

.method private associateNoSampleRenderersWithEmptySampleStream([Lcom/google/android/exoplayer2/source/SampleStream;)V
    .registers 5
    .param p1, "sampleStreams"    # [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_21

    .line 423
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 424
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 425
    new-instance v1, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/EmptySampleStream;-><init>()V

    aput-object v1, p1, v0

    .line 422
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 428
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method private static createMediaPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/upstream/Allocator;JJ)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 16
    .param p0, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p1, "mediaSourceList"    # Lcom/google/android/exoplayer2/MediaSourceList;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J
    .param p5, "endPositionUs"    # J

    .line 441
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/google/android/exoplayer2/MediaSourceList;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v7

    .line 442
    .local v7, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_19

    .line 443
    new-instance v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v8

    move-object v1, v7

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;ZJJ)V

    move-object v7, v8

    .line 447
    :cond_19
    return-object v7
.end method

.method private disableTrackSelectionsInResult()V
    .registers 4

    .line 391
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    if-nez v0, :cond_7

    .line 392
    return-void

    .line 394
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v1, :cond_24

    .line 395
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    .line 396
    .local v1, "rendererEnabled":Z
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    .line 397
    .local v2, "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-eqz v1, :cond_21

    if-eqz v2, :cond_21

    .line 398
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->disable()V

    .line 394
    .end local v1    # "rendererEnabled":Z
    .end local v2    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 401
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method private disassociateNoSampleRenderersWithEmptySampleStream([Lcom/google/android/exoplayer2/source/SampleStream;)V
    .registers 5
    .param p1, "sampleStreams"    # [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 410
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_12

    .line 411
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 409
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 414
    .end local v0    # "i":I
    :cond_15
    return-void
.end method

.method private enableTrackSelectionsInResult()V
    .registers 4

    .line 378
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    if-nez v0, :cond_7

    .line 379
    return-void

    .line 381
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v1, :cond_24

    .line 382
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    .line 383
    .local v1, "rendererEnabled":Z
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    .line 384
    .local v2, "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-eqz v1, :cond_21

    if-eqz v2, :cond_21

    .line 385
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->enable()V

    .line 381
    .end local v1    # "rendererEnabled":Z
    .end local v2    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 388
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method private isLoadingMediaPeriod()Z
    .registers 2

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static releaseMediaPeriod(Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 5
    .param p0, "mediaSourceList"    # Lcom/google/android/exoplayer2/MediaSourceList;
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 453
    :try_start_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    if-eqz v0, :cond_d

    .line 454
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_10

    .line 456
    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_11

    .line 461
    :goto_10
    goto :goto_19

    .line 458
    :catch_11
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_19
    return-void
.end method


# virtual methods
.method public applyTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ)J
    .registers 12
    .param p1, "trackSelectorResult"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .param p2, "positionUs"    # J
    .param p4, "forceRecreateStreams"    # Z

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->applyTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public applyTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ[Z)J
    .registers 19
    .param p1, "newTrackSelectorResult"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .param p2, "positionUs"    # J
    .param p4, "forceRecreateStreams"    # Z
    .param p5, "streamResetFlags"    # [Z

    .line 291
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->length:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1d

    .line 292
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    if-nez p4, :cond_17

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 293
    invoke-virtual {p1, v6, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;I)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v4, 0x1

    goto :goto_18

    :cond_17
    nop

    :goto_18
    aput-boolean v4, v3, v2

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 298
    .end local v2    # "i":I
    :cond_1d
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->disassociateNoSampleRenderersWithEmptySampleStream([Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 299
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    .line 300
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 301
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    .line 303
    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v7, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iget-object v8, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    .line 304
    move-object/from16 v10, p5

    move-wide v11, p2

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v2

    .line 310
    .end local p2    # "positionUs":J
    .local v2, "positionUs":J
    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->associateNoSampleRenderersWithEmptySampleStream([Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 313
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    .line 314
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_41
    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    array-length v8, v7

    if-ge v6, v8, :cond_6e

    .line 315
    aget-object v7, v7, v6

    if-eqz v7, :cond_5f

    .line 316
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 318
    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_6b

    .line 319
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    goto :goto_6b

    .line 322
    :cond_5f
    iget-object v7, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v7, v7, v6

    if-nez v7, :cond_67

    const/4 v7, 0x1

    goto :goto_68

    :cond_67
    const/4 v7, 0x0

    :goto_68
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 314
    :cond_6b
    :goto_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    .line 325
    .end local v6    # "i":I
    :cond_6e
    return-wide v2
.end method

.method public continueLoading(J)V
    .registers 6
    .param p1, "rendererPositionUs"    # J

    .line 227
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    .line 229
    .local v0, "loadingPeriodPositionUs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    .line 230
    return-void
.end method

.method public getBufferedPositionUs()J
    .registers 6

    .line 168
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    return-wide v0

    .line 172
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v3

    goto :goto_17

    :cond_16
    move-wide v3, v1

    .line 173
    .local v3, "bufferedPositionUs":J
    :goto_17
    cmp-long v0, v3, v1

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    goto :goto_21

    :cond_20
    move-wide v0, v3

    :goto_21
    return-wide v0
.end method

.method public getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 181
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_d
    return-wide v0
.end method

.method public getRendererOffset()J
    .registers 3

    .line 138
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    return-wide v0
.end method

.method public getStartPositionRendererTime()J
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    return-object v0
.end method

.method public handlePrepared(FLcom/google/android/exoplayer2/Timeline;)V
    .registers 12
    .param p1, "playbackSpeed"    # F
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->selectTracks(FLcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 195
    .local v0, "selectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    .line 196
    .local v1, "requestedStartPositionUs":J
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_35

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_35

    .line 198
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 200
    :cond_35
    nop

    .line 201
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->applyTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ)J

    move-result-wide v3

    .line 203
    .local v3, "newStartPositionUs":J
    iget-wide v5, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 204
    iget-object v5, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->copyWithStartPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 205
    return-void
.end method

.method public isFullyBuffered()Z
    .registers 6

    .line 157
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 158
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 157
    :goto_17
    return v0
.end method

.method public reevaluateBuffer(J)V
    .registers 6
    .param p1, "rendererPositionUs"    # J

    .line 214
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 215
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_14

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->reevaluateBuffer(J)V

    .line 218
    :cond_14
    return-void
.end method

.method public release()V
    .registers 3

    .line 330
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->releaseMediaPeriod(Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 332
    return-void
.end method

.method public selectTracks(FLcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .registers 8
    .param p1, "playbackSpeed"    # F
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 246
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 247
    .local v0, "selectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 248
    .local v4, "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-eqz v4, :cond_1d

    .line 249
    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    .line 247
    .end local v4    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 252
    :cond_20
    return-object v0
.end method

.method public setNext(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V
    .registers 3
    .param p1, "nextMediaPeriodHolder"    # Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-ne p1, v0, :cond_5

    .line 342
    return-void

    .line 344
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    .line 345
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 346
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    .line 347
    return-void
.end method

.method public setRendererOffset(J)V
    .registers 3
    .param p1, "rendererPositionOffsetUs"    # J

    .line 147
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 148
    return-void
.end method

.method public toPeriodTime(J)J
    .registers 5
    .param p1, "rendererTimeUs"    # J

    .line 133
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public toRendererTime(J)J
    .registers 5
    .param p1, "periodTimeUs"    # J

    .line 125
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public updateClipping()V
    .registers 6

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    instance-of v0, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    if-eqz v0, :cond_23

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_1a

    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    .line 373
    .local v0, "endPositionUs":J
    :goto_1a
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    check-cast v2, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->updateClipping(JJ)V

    .line 375
    .end local v0    # "endPositionUs":J
    :cond_23
    return-void
.end method
