.class public Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;,
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;,
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final adaptationSetIndices:[I

.field private final baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

.field private final cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final elapsedRealtimeOffsetMs:J

.field private fatalError:Ljava/io/IOException;

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final maxSegmentsPerLoad:I

.field private missingLastSegment:Z

.field private periodIndex:I

.field private final playerTrackEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

.field protected final representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

.field private trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

.field private final trackType:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;I[ILcom/google/android/exoplayer2/trackselection/ExoTrackSelection;ILcom/google/android/exoplayer2/upstream/DataSource;JIZLjava/util/List;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Lcom/google/android/exoplayer2/analytics/PlayerId;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;)V
    .registers 48
    .param p1, "chunkExtractorFactory"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;
    .param p2, "manifestLoaderErrorThrower"    # Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;
    .param p3, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p4, "baseUrlExclusionList"    # Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;
    .param p5, "periodIndex"    # I
    .param p6, "adaptationSetIndices"    # [I
    .param p7, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p8, "trackType"    # I
    .param p9, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p10, "elapsedRealtimeOffsetMs"    # J
    .param p12, "maxSegmentsPerLoad"    # I
    .param p13, "enableEventMessageTrack"    # Z
    .param p15, "playerTrackEmsgHandler"    # Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    .param p16, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;
    .param p17, "cmcdConfiguration"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;",
            "Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            "Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;",
            "I[I",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "JIZ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            "Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;",
            ")V"
        }
    .end annotation

    .line 210
    .local p14, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 211
    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 212
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 213
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    .line 214
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndices:[I

    .line 215
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 216
    move/from16 v14, p8

    iput v14, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackType:I

    .line 217
    move-object/from16 v15, p9

    iput-object v15, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 218
    iput v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 219
    move-wide/from16 v12, p10

    iput-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    .line 220
    move/from16 v11, p12

    iput v11, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    .line 221
    move-object/from16 v10, p15

    iput-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 222
    move-object/from16 v9, p17

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 224
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v25

    .line 226
    .local v25, "periodDurationUs":J
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/ArrayList;

    move-result-object v8

    .line 227
    .local v8, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface/range {p7 .. p7}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iput-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 228
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_46
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v1, v1

    if-ge v7, v1, :cond_af

    .line 229
    invoke-interface {v4, v7}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 231
    .local v1, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->selectBaseUrl(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    move-result-object v3

    .line 232
    .local v3, "selectedBaseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v27, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 236
    if-eqz v3, :cond_66

    move-object/from16 v20, v3

    move-object/from16 v28, v20

    goto :goto_73

    :cond_66
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v28, v3

    .end local v3    # "selectedBaseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    .local v28, "selectedBaseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    move-object/from16 v20, v0

    :goto_73
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    .line 237
    move v3, v7

    .end local v7    # "i":I
    .local v3, "i":I
    move-object/from16 v7, p1

    move-object/from16 v29, v8

    .end local v8    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .local v29, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    move/from16 v8, p8

    move-object v9, v0

    move/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    invoke-interface/range {v7 .. v13}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;->createProgressiveMediaExtractor(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    move-result-object v21

    const-wide/16 v22, 0x0

    .line 245
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v24

    move-object/from16 v16, v27

    move-wide/from16 v17, v25

    move-object/from16 v19, v1

    invoke-direct/range {v16 .. v24}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    aput-object v27, v2, v3

    .line 228
    .end local v1    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .end local v28    # "selectedBaseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    add-int/lit8 v7, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-wide/from16 v12, p10

    move/from16 v11, p12

    move-object/from16 v10, p15

    move-object/from16 v9, p17

    move-object/from16 v8, v29

    .end local v3    # "i":I
    .restart local v7    # "i":I
    goto :goto_46

    .line 247
    .end local v7    # "i":I
    .end local v29    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .restart local v8    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_af
    return-void
.end method

.method private createFallbackOptions(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Ljava/util/List;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;
    .registers 10
    .param p1, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;"
        }
    .end annotation

    .line 599
    .local p2, "baseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 600
    .local v0, "nowMs":J
    invoke-interface {p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v2

    .line 601
    .local v2, "numberOfTracks":I
    const/4 v3, 0x0

    .line 602
    .local v3, "numberOfExcludedTracks":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v2, :cond_17

    .line 603
    invoke-interface {p1, v4, v0, v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->isTrackExcluded(IJ)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 604
    add-int/lit8 v3, v3, 0x1

    .line 602
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 607
    .end local v4    # "i":I
    :cond_17
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->getPriorityCount(Ljava/util/List;)I

    move-result v4

    .line 608
    .local v4, "priorityCount":I
    new-instance v5, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    .line 611
    invoke-virtual {v6, p2}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->getPriorityCountAfterExclusion(Ljava/util/List;)I

    move-result v6

    sub-int v6, v4, v6

    invoke-direct {v5, v4, v6, v2, v3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    .line 608
    return-object v5
.end method

.method private getAvailableLiveDurationUs(JJ)J
    .registers 20
    .param p1, "nowUnixTimeUs"    # J
    .param p3, "playbackPositionUs"    # J

    .line 640
    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v1, :cond_3a

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_19

    move-wide/from16 v3, p1

    goto :goto_3c

    .line 643
    :cond_19
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v1, v1, v2

    move-wide/from16 v3, p1

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getLastAvailableSegmentNum(J)J

    move-result-wide v7

    .line 644
    .local v7, "lastSegmentNum":J
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v1, v1, v2

    invoke-virtual {v1, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v1

    .line 645
    .local v1, "lastSegmentEndTimeUs":J
    invoke-direct/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getNowPeriodTimeUs(J)J

    move-result-wide v9

    .line 646
    .local v9, "nowPeriodTimeUs":J
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 647
    .local v11, "availabilityEndTimeUs":J
    sub-long v13, v11, p3

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    return-wide v5

    .line 640
    .end local v1    # "lastSegmentEndTimeUs":J
    .end local v7    # "lastSegmentNum":J
    .end local v9    # "nowPeriodTimeUs":J
    .end local v11    # "availabilityEndTimeUs":J
    :cond_3a
    move-wide/from16 v3, p1

    .line 641
    :goto_3c
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v1
.end method

.method private getNowPeriodTimeUs(J)J
    .registers 8
    .param p1, "nowUnixTimeUs"    # J

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 652
    goto :goto_23

    .line 654
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 655
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    add-long/2addr v0, v2

    .line 654
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    sub-long v2, p1, v0

    .line 651
    :goto_23
    return-wide v2
.end method

.method private getRepresentations()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 632
    .local v0, "manifestAdaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v1, "representations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndices:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_25

    aget v5, v2, v4

    .line 634
    .local v5, "adaptationSetIndex":I
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 633
    .end local v5    # "adaptationSetIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 636
    :cond_25
    return-object v1
.end method

.method private getSegmentNum(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JJJ)J
    .registers 18
    .param p1, "representationHolder"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p2, "previousChunk"    # Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    .param p3, "loadPositionUs"    # J
    .param p5, "firstAvailableSegmentNum"    # J
    .param p7, "lastAvailableSegmentNum"    # J

    .line 622
    if-eqz p2, :cond_a

    .line 623
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide v0

    move-wide v3, v0

    move-object v0, p1

    move-wide v1, p3

    goto :goto_18

    .line 624
    :cond_a
    nop

    .line 625
    move-object v0, p1

    move-wide v1, p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)J

    move-result-wide v3

    .line 624
    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v3

    .line 622
    :goto_18
    return-wide v3
.end method

.method private updateSelectedBaseUrl(I)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .registers 5
    .param p1, "trackIndex"    # I

    .line 807
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v0, v0, p1

    .line 809
    .local v0, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 810
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->selectBaseUrl(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    move-result-object v1

    .line 811
    .local v1, "selectedBaseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    if-eqz v1, :cond_20

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 812
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->copyWithNewSelectedBaseUrl(Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v0

    .line 813
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aput-object v0, v2, p1

    .line 815
    :cond_20
    return-object v0
.end method


# virtual methods
.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 21
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 252
    move-wide/from16 v7, p1

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_4f

    aget-object v10, v0, v2

    .line 253
    .local v10, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v3, v10, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-eqz v3, :cond_4c

    .line 254
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()J

    move-result-wide v11

    .line 255
    .local v11, "segmentCount":J
    const-wide/16 v3, 0x0

    cmp-long v5, v11, v3

    if-nez v5, :cond_1b

    .line 256
    goto :goto_4c

    .line 258
    :cond_1b
    invoke-virtual {v10, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)J

    move-result-wide v13

    .line 259
    .local v13, "segmentNum":J
    invoke-virtual {v10, v13, v14}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v15

    .line 262
    .local v15, "firstSyncUs":J
    cmp-long v0, v15, v7

    if-gez v0, :cond_40

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x1

    cmp-long v4, v11, v0

    if-eqz v4, :cond_39

    .line 264
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()J

    move-result-wide v0

    add-long/2addr v0, v11

    sub-long/2addr v0, v2

    cmp-long v4, v13, v0

    if-gez v4, :cond_40

    .line 265
    :cond_39
    add-long/2addr v2, v13

    invoke-virtual {v10, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_41

    .line 266
    :cond_40
    move-wide v5, v15

    :goto_41
    nop

    .line 267
    .local v5, "secondSyncUs":J
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    move-wide v3, v15

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/SeekParameters;->resolveSeekPositionUs(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 252
    .end local v5    # "secondSyncUs":J
    .end local v10    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v11    # "segmentCount":J
    .end local v13    # "segmentNum":J
    .end local v15    # "firstSyncUs":J
    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 271
    :cond_4f
    return-wide v7
.end method

.method public getNextChunk(JJLjava/util/List;Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
    .registers 51
    .param p1, "playbackPositionUs"    # J
    .param p3, "loadPositionUs"    # J
    .param p6, "out"    # Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;",
            ")V"
        }
    .end annotation

    .line 328
    .local p5, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    move-object/from16 v15, p0

    move-wide/from16 v13, p1

    move-object/from16 v12, p6

    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_b

    .line 329
    return-void

    .line 332
    :cond_b
    sub-long v27, p3, v13

    .line 333
    .local v27, "bufferedDurationUs":J
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 334
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iget-object v2, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 335
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-long v10, v0, p3

    .line 338
    .local v10, "presentationPositionUs":J
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz v0, :cond_31

    .line 339
    invoke-virtual {v0, v10, v11}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maybeRefreshManifestBeforeLoadingNextChunk(J)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 341
    return-void

    .line 344
    :cond_31
    iget-wide v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v7

    .line 345
    .local v7, "nowUnixTimeUs":J
    invoke-direct {v15, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getNowPeriodTimeUs(J)J

    move-result-wide v29

    .line 346
    .local v29, "nowPeriodTimeUs":J
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v24, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_4d

    move-object/from16 v5, p5

    move-object/from16 v2, v24

    goto :goto_5b

    :cond_4d
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move-object/from16 v5, p5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    move-object v2, v0

    .line 347
    .local v2, "previous":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    :goto_5b
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v0

    new-array v6, v0, [Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    .line 348
    .local v6, "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_65
    array-length v0, v6

    if-ge v3, v0, :cond_c6

    .line 349
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v4, v0, v3

    .line 350
    .local v4, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v0, v4, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v0, :cond_7b

    .line 351
    sget-object v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    aput-object v0, v6, v3

    move v9, v3

    move-object/from16 v34, v6

    move-wide/from16 v35, v10

    move-wide v11, v7

    goto :goto_b9

    .line 353
    :cond_7b
    nop

    .line 354
    invoke-virtual {v4, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum(J)J

    move-result-wide v25

    .line 355
    .local v25, "firstAvailableSegmentNum":J
    nop

    .line 356
    invoke-virtual {v4, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getLastAvailableSegmentNum(J)J

    move-result-wide v31

    .line 357
    .local v31, "lastAvailableSegmentNum":J
    nop

    .line 358
    move-object/from16 v0, p0

    move-object v1, v4

    move v9, v3

    move-object/from16 v16, v4

    .end local v3    # "i":I
    .end local v4    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .local v9, "i":I
    .local v16, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    move-wide/from16 v3, p3

    move-object/from16 v34, v6

    .end local v6    # "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .local v34, "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    move-wide/from16 v5, v25

    move-wide/from16 v35, v10

    move-wide v11, v7

    .end local v7    # "nowUnixTimeUs":J
    .end local v10    # "presentationPositionUs":J
    .local v11, "nowUnixTimeUs":J
    .local v35, "presentationPositionUs":J
    move-wide/from16 v7, v31

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getSegmentNum(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JJJ)J

    move-result-wide v0

    .line 364
    .local v0, "segmentNum":J
    cmp-long v3, v0, v25

    if-gez v3, :cond_a4

    .line 365
    sget-object v3, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    aput-object v3, v34, v9

    goto :goto_b9

    .line 367
    :cond_a4
    invoke-direct {v15, v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->updateSelectedBaseUrl(I)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v3

    .line 368
    .end local v16    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .local v3, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-wide/from16 v18, v0

    move-wide/from16 v20, v31

    move-wide/from16 v22, v29

    invoke-direct/range {v16 .. v23}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;-><init>(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;JJJ)V

    aput-object v4, v34, v9

    .line 348
    .end local v0    # "segmentNum":J
    .end local v3    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v25    # "firstAvailableSegmentNum":J
    .end local v31    # "lastAvailableSegmentNum":J
    :goto_b9
    add-int/lit8 v3, v9, 0x1

    move-object/from16 v5, p5

    move-wide v7, v11

    move-object/from16 v6, v34

    move-wide/from16 v10, v35

    const/4 v9, 0x1

    move-object/from16 v12, p6

    .end local v9    # "i":I
    .local v3, "i":I
    goto :goto_65

    .end local v11    # "nowUnixTimeUs":J
    .end local v34    # "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .end local v35    # "presentationPositionUs":J
    .restart local v6    # "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .restart local v7    # "nowUnixTimeUs":J
    .restart local v10    # "presentationPositionUs":J
    :cond_c6
    move v9, v3

    move-object/from16 v34, v6

    move-wide/from16 v35, v10

    move-wide v11, v7

    .line 375
    .end local v3    # "i":I
    .end local v6    # "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .end local v7    # "nowUnixTimeUs":J
    .end local v10    # "presentationPositionUs":J
    .restart local v11    # "nowUnixTimeUs":J
    .restart local v34    # "chunkIterators":[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .restart local v35    # "presentationPositionUs":J
    invoke-direct {v15, v11, v12, v13, v14}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getAvailableLiveDurationUs(JJ)J

    move-result-wide v0

    .line 376
    .local v0, "availableLiveDurationUs":J
    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-wide/from16 v4, p1

    move-wide/from16 v6, v27

    const/4 v10, 0x1

    move-wide v8, v0

    move-wide/from16 v31, v35

    move-wide/from16 v35, v0

    const/4 v0, 0x1

    .end local v0    # "availableLiveDurationUs":J
    .local v31, "presentationPositionUs":J
    .local v35, "availableLiveDurationUs":J
    move-object/from16 v10, p5

    move-wide/from16 v37, v11

    .end local v11    # "nowUnixTimeUs":J
    .local v37, "nowUnixTimeUs":J
    move-object/from16 v11, v34

    invoke-interface/range {v3 .. v11}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V

    .line 379
    iget-object v1, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result v1

    .line 383
    .local v1, "selectedTrackIndex":I
    iget-object v4, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    if-nez v4, :cond_f3

    .line 384
    move-object/from16 v11, v24

    goto :goto_104

    .line 385
    :cond_f3
    new-instance v10, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    iget-object v5, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    const-string v8, "d"

    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v9, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    move-object v3, v10

    move-wide/from16 v6, v27

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;-><init>(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;JLjava/lang/String;Z)V

    move-object v11, v10

    :goto_104
    nop

    .line 391
    .local v11, "cmcdHeadersFactory":Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
    invoke-direct {v15, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->updateSelectedBaseUrl(I)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v12

    .line 392
    .local v12, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v3, v12, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    if-eqz v3, :cond_15c

    .line 393
    iget-object v10, v12, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 394
    .local v10, "selectedRepresentation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    const/4 v3, 0x0

    .line 395
    .local v3, "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    const/4 v4, 0x0

    .line 396
    .local v4, "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    iget-object v5, v12, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    if-nez v5, :cond_120

    .line 397
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_122

    .line 396
    :cond_120
    move-object/from16 v16, v3

    .line 399
    .end local v3    # "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v16, "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :goto_122
    iget-object v3, v12, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v3, :cond_12d

    .line 400
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_12f

    .line 399
    :cond_12d
    move-object/from16 v17, v4

    .line 402
    .end local v4    # "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v17, "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :goto_12f
    if-nez v16, :cond_137

    if-eqz v17, :cond_134

    goto :goto_137

    :cond_134
    move-object/from16 v4, p6

    goto :goto_15e

    .line 404
    :cond_137
    :goto_137
    iget-object v5, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 408
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 409
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v7

    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 410
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v8

    .line 405
    move-object/from16 v3, p0

    move-object v4, v12

    move-object/from16 v9, v16

    move-object v0, v10

    .end local v10    # "selectedRepresentation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .local v0, "selectedRepresentation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    move-object/from16 v10, v17

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->newInitializationChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v3

    move-object/from16 v4, p6

    iput-object v3, v4, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 414
    return-void

    .line 392
    .end local v0    # "selectedRepresentation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .end local v16    # "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v17    # "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_15c
    move-object/from16 v4, p6

    .line 418
    :goto_15e
    # getter for: Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J
    invoke-static {v12}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->access$000(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;)J

    move-result-wide v5

    .line 419
    .local v5, "periodDurationUs":J
    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_176

    iget v3, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    iget-object v7, v15, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 420
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v7

    sub-int/2addr v7, v0

    if-ne v3, v7, :cond_176

    const/4 v3, 0x1

    goto :goto_177

    :cond_176
    const/4 v3, 0x0

    .line 421
    .local v3, "isLastPeriodInDynamicManifest":Z
    :goto_177
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_185

    cmp-long v10, v5, v7

    if-eqz v10, :cond_183

    goto :goto_185

    :cond_183
    const/4 v10, 0x0

    goto :goto_186

    :cond_185
    :goto_185
    const/4 v10, 0x1

    .line 423
    .local v10, "periodEnded":Z
    :goto_186
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v20, v16, v18

    if-nez v20, :cond_193

    .line 425
    iput-boolean v10, v4, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 426
    return-void

    .line 429
    :cond_193
    move-wide/from16 v7, v37

    .end local v37    # "nowUnixTimeUs":J
    .restart local v7    # "nowUnixTimeUs":J
    invoke-virtual {v12, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum(J)J

    move-result-wide v37

    .line 430
    .local v37, "firstAvailableSegmentNum":J
    move/from16 v33, v1

    .end local v1    # "selectedTrackIndex":I
    .local v33, "selectedTrackIndex":I
    invoke-virtual {v12, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getLastAvailableSegmentNum(J)J

    move-result-wide v0

    .line 431
    .local v0, "lastAvailableSegmentNum":J
    if-eqz v3, :cond_1b5

    .line 432
    nop

    .line 433
    invoke-virtual {v12, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v16

    .line 434
    .local v16, "lastAvailableSegmentEndTimeUs":J
    nop

    .line 436
    invoke-virtual {v12, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v18

    sub-long v18, v16, v18

    .line 439
    .local v18, "lastSegmentDurationUs":J
    add-long v24, v16, v18

    cmp-long v20, v24, v5

    if-ltz v20, :cond_1b4

    const/4 v9, 0x1

    :cond_1b4
    and-int/2addr v10, v9

    .line 441
    .end local v16    # "lastAvailableSegmentEndTimeUs":J
    .end local v18    # "lastSegmentDurationUs":J
    :cond_1b5
    nop

    .line 442
    move-object v9, v12

    .end local v12    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .local v9, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    move-object/from16 v12, p0

    move-object v13, v9

    move-object v14, v2

    move-object/from16 v39, v2

    move-object v2, v15

    .end local v2    # "previous":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    .local v39, "previous":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    move-wide/from16 v15, p3

    move-wide/from16 v17, v37

    move-wide/from16 v19, v0

    invoke-direct/range {v12 .. v20}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getSegmentNum(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JJJ)J

    move-result-wide v14

    .line 448
    .local v14, "segmentNum":J
    cmp-long v12, v14, v37

    if-gez v12, :cond_1d4

    .line 450
    new-instance v12, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v12}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v12, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 451
    return-void

    .line 454
    :cond_1d4
    cmp-long v12, v14, v0

    if-gtz v12, :cond_261

    iget-boolean v12, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    if-eqz v12, :cond_1e6

    cmp-long v12, v14, v0

    if-ltz v12, :cond_1e6

    move-wide/from16 v40, v0

    move-wide/from16 v42, v14

    goto/16 :goto_265

    .line 461
    :cond_1e6
    if-eqz v10, :cond_1f4

    invoke-virtual {v9, v14, v15}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v12

    cmp-long v16, v12, v5

    if-ltz v16, :cond_1f4

    .line 463
    const/4 v12, 0x1

    iput-boolean v12, v4, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 464
    return-void

    .line 467
    :cond_1f4
    iget v12, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    int-to-long v12, v12

    sub-long v16, v0, v14

    const-wide/16 v18, 0x1

    move-wide/from16 v40, v0

    .end local v0    # "lastAvailableSegmentNum":J
    .local v40, "lastAvailableSegmentNum":J
    add-long v0, v16, v18

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 468
    .local v1, "maxSegmentCount":I
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v12

    if-eqz v0, :cond_224

    .line 469
    :goto_20d
    const/4 v0, 0x1

    if-le v1, v0, :cond_224

    int-to-long v12, v1

    add-long/2addr v12, v14

    sub-long v12, v12, v18

    .line 470
    invoke-virtual {v9, v12, v13}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v12

    cmp-long v16, v12, v5

    if-ltz v16, :cond_224

    .line 474
    add-int/lit8 v1, v1, -0x1

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_20d

    .line 478
    :cond_224
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22d

    move-wide/from16 v22, p3

    goto :goto_232

    :cond_22d
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 479
    .local v22, "seekTimeUs":J
    :goto_232
    iget-object v0, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget v13, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackType:I

    iget-object v12, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 484
    invoke-interface {v12}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v16

    iget-object v12, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 485
    invoke-interface {v12}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v17

    iget-object v12, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 486
    invoke-interface {v12}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v18

    .line 480
    move-object/from16 v12, p0

    move/from16 v19, v13

    move-object v13, v9

    move-wide/from16 v42, v14

    .end local v14    # "segmentNum":J
    .local v42, "segmentNum":J
    move-object v14, v0

    move/from16 v15, v19

    move-wide/from16 v19, v42

    move/from16 v21, v1

    move-wide/from16 v24, v29

    move-object/from16 v26, v11

    invoke-virtual/range {v12 .. v26}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->newMediaChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JIJJLcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 492
    return-void

    .line 454
    .end local v1    # "maxSegmentCount":I
    .end local v22    # "seekTimeUs":J
    .end local v40    # "lastAvailableSegmentNum":J
    .end local v42    # "segmentNum":J
    .restart local v0    # "lastAvailableSegmentNum":J
    .restart local v14    # "segmentNum":J
    :cond_261
    move-wide/from16 v40, v0

    move-wide/from16 v42, v14

    .line 457
    .end local v0    # "lastAvailableSegmentNum":J
    .end local v14    # "segmentNum":J
    .restart local v40    # "lastAvailableSegmentNum":J
    .restart local v42    # "segmentNum":J
    :goto_265
    iput-boolean v10, v4, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 458
    return-void
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .registers 6
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 307
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    goto :goto_15

    .line 310
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    return v0

    .line 308
    :cond_15
    :goto_15
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_a

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 303
    return-void

    .line 299
    :cond_a
    throw v0
.end method

.method protected newInitializationChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .registers 25
    .param p1, "representationHolder"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "initializationUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p7, "indexUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p8, "cmcdHeadersFactory"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    .line 667
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 669
    .local v3, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    if-eqz v1, :cond_19

    .line 672
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 673
    move-object/from16 v5, p7

    invoke-virtual {v1, v5, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v4

    .line 674
    .local v4, "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v4, :cond_1d

    .line 675
    move-object/from16 v4, p6

    goto :goto_1d

    .line 678
    .end local v4    # "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_19
    move-object/from16 v5, p7

    move-object/from16 v4, p7

    .line 681
    .restart local v4    # "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_1d
    :goto_1d
    if-nez v2, :cond_24

    .line 682
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    goto :goto_2f

    .line 685
    :cond_24
    nop

    .line 684
    const-string v6, "i"

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->setObjectType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    move-result-object v6

    .line 685
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->createHttpRequestHeaders()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    :goto_2f
    nop

    .line 686
    .local v6, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v7, v7, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 687
    const/4 v8, 0x0

    invoke-static {v3, v7, v4, v8, v6}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;ILjava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v7

    .line 693
    .local v7, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v8, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    move-object v9, v8

    move-object/from16 v10, p2

    move-object v11, v7

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v9 .. v15}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;)V

    return-object v8
.end method

.method protected newMediaChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JIJJLcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .registers 53
    .param p1, "representationHolder"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "firstSegmentNum"    # J
    .param p9, "maxSegmentCount"    # I
    .param p10, "seekTimeUs"    # J
    .param p12, "nowPeriodTimeUs"    # J
    .param p14, "cmcdHeadersFactory"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    .line 714
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v14, p7

    move-wide/from16 v12, p12

    move-object/from16 v10, p14

    iget-object v11, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 715
    .local v11, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    invoke-virtual {v1, v14, v15}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v22

    .line 716
    .local v22, "startTimeUs":J
    invoke-virtual {v1, v14, v15}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v8

    .line 717
    .local v8, "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v2, :cond_72

    .line 718
    invoke-virtual {v1, v14, v15}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v16

    .line 720
    .local v16, "endTimeUs":J
    invoke-virtual {v1, v14, v15, v12, v13}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->isSegmentAvailableAtFullNetworkSpeed(JJ)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 722
    goto :goto_28

    .line 723
    :cond_26
    const/16 v3, 0x8

    :goto_28
    move v9, v3

    .line 725
    .local v9, "flags":I
    if-nez v10, :cond_30

    .line 726
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    goto :goto_44

    .line 730
    :cond_30
    sub-long v2, v16, v22

    .line 728
    invoke-virtual {v10, v2, v3}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->setChunkDurationUs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 729
    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->getObjectType(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->setObjectType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    move-result-object v2

    .line 730
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->createHttpRequestHeaders()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    :goto_44
    move-object v7, v2

    .line 731
    .local v7, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 732
    invoke-static {v11, v2, v8, v9, v7}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;ILjava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v18

    .line 738
    .local v18, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v19, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;

    move-object/from16 v2, v19

    move-object/from16 v3, p2

    move-object/from16 v4, v18

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v20, v7

    .end local v7    # "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v20, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v7, p6

    move-object/from16 v21, v8

    move/from16 v24, v9

    .end local v8    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v9    # "flags":I
    .local v21, "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v24, "flags":I
    move-wide/from16 v8, v22

    move-object v0, v10

    move-object/from16 v25, v11

    .end local v11    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .local v25, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    move-wide/from16 v10, v16

    move-wide/from16 v12, p7

    move/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v2 .. v15}, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJILcom/google/android/exoplayer2/Format;)V

    return-object v19

    .line 750
    .end local v16    # "endTimeUs":J
    .end local v18    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v20    # "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v24    # "flags":I
    .end local v25    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v8    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v11    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_72
    move-object/from16 v21, v8

    move-object v0, v10

    move-object/from16 v25, v11

    .end local v8    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v11    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v21    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v25    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    const/4 v2, 0x1

    .line 751
    .local v2, "segmentCount":I
    const/4 v5, 0x1

    move v12, v2

    move-object/from16 v13, v21

    .end local v2    # "segmentCount":I
    .end local v21    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v5, "i":I
    .local v12, "segmentCount":I
    .local v13, "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :goto_7c
    move/from16 v10, p9

    if-ge v5, v10, :cond_99

    .line 752
    int-to-long v6, v5

    add-long v6, p7, v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    .line 754
    .local v2, "nextSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 755
    invoke-virtual {v13, v2, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v6

    .line 756
    .local v6, "mergedSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v6, :cond_92

    .line 758
    goto :goto_99

    .line 760
    :cond_92
    move-object v13, v6

    .line 761
    nop

    .end local v2    # "nextSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v6    # "mergedSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    add-int/lit8 v12, v12, 0x1

    .line 751
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 763
    .end local v5    # "i":I
    :cond_99
    :goto_99
    int-to-long v5, v12

    add-long v5, p7, v5

    const-wide/16 v7, 0x1

    sub-long v14, v5, v7

    .line 764
    .local v14, "segmentNum":J
    invoke-virtual {v1, v14, v15}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v26

    .line 765
    .local v26, "endTimeUs":J
    # getter for: Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->access$000(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;)J

    move-result-wide v28

    .line 767
    .local v28, "periodDurationUs":J
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v28, v5

    if-eqz v2, :cond_b8

    cmp-long v2, v28, v26

    if-gtz v2, :cond_b8

    .line 768
    move-wide/from16 v5, v28

    goto :goto_b9

    .line 769
    :cond_b8
    nop

    :goto_b9
    move-wide v8, v14

    .end local v14    # "segmentNum":J
    .local v8, "segmentNum":J
    move-wide v14, v5

    .line 771
    .local v14, "clippedEndTimeUs":J
    move-wide/from16 v6, p12

    invoke-virtual {v1, v8, v9, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->isSegmentAvailableAtFullNetworkSpeed(JJ)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 772
    goto :goto_c6

    .line 773
    :cond_c4
    const/16 v3, 0x8

    :goto_c6
    move v11, v3

    .line 775
    .local v11, "flags":I
    if-nez v0, :cond_d0

    .line 776
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    move-object/from16 v0, p0

    goto :goto_e6

    .line 780
    :cond_d0
    sub-long v2, v26, v22

    .line 778
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->setChunkDurationUs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 779
    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->getObjectType(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->setObjectType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;

    move-result-object v2

    .line 780
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->createHttpRequestHeaders()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    :goto_e6
    move-object v5, v2

    .line 781
    .local v5, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 782
    move-object/from16 v3, v25

    .end local v25    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .local v3, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    invoke-static {v3, v2, v13, v11, v5}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;ILjava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v24

    .local v24, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    move-object/from16 v4, v24

    .line 788
    move-object v7, v5

    .end local v5    # "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v5, v3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    neg-long v5, v5

    .local v5, "sampleOffsetUs":J
    move-wide/from16 v19, v5

    .line 789
    new-instance v25, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;

    move-object/from16 v2, v25

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    move-object/from16 v21, v0

    move-object v0, v3

    .end local v3    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .local v0, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    move-object/from16 v3, p2

    move-wide/from16 v31, v5

    move-object/from16 v30, v7

    .end local v5    # "sampleOffsetUs":J
    .end local v7    # "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v30, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v31, "sampleOffsetUs":J
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v33, v8

    .end local v8    # "segmentNum":J
    .local v33, "segmentNum":J
    move-wide/from16 v8, v22

    move/from16 v35, v11

    .end local v11    # "flags":I
    .local v35, "flags":I
    move-wide/from16 v10, v26

    move/from16 v37, v12

    move-object/from16 v36, v13

    .end local v12    # "segmentCount":I
    .end local v13    # "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v36, "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local v37, "segmentCount":I
    move-wide/from16 v12, p10

    move-wide/from16 v16, p7

    move/from16 v18, v37

    invoke-direct/range {v2 .. v21}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractor;)V

    return-object v25
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .registers 10
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 496
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    if-eqz v0, :cond_30

    .line 497
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    .line 498
    .local v0, "initializationChunk":Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 499
    .local v1, "trackIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v2, v2, v1

    .line 503
    .local v2, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v3, :cond_30

    .line 504
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->getChunkIndex()Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    move-result-object v3

    .line 505
    .local v3, "chunkIndex":Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    if-eqz v3, :cond_30

    .line 506
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v5, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;

    iget-object v6, v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    invoke-direct {v5, v3, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;J)V

    .line 507
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->copyWithNewSegmentIndex(Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v5

    aput-object v5, v4, v1

    .line 513
    .end local v0    # "initializationChunk":Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    .end local v1    # "trackIndex":I
    .end local v2    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v3    # "chunkIndex":Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    :cond_30
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz v0, :cond_37

    .line 514
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 516
    :cond_37
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Z
    .registers 15
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "cancelable"    # Z
    .param p3, "loadErrorInfo"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
    .param p4, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 524
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 525
    return v0

    .line 527
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 528
    return v2

    .line 531
    :cond_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v1, :cond_5c

    instance-of v1, p1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    if-eqz v1, :cond_5c

    iget-object v1, p3, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    instance-of v1, v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v1, :cond_5c

    iget-object v1, p3, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    check-cast v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v1, v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v3, 0x194

    if-ne v1, v3, :cond_5c

    .line 535
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 536
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    aget-object v1, v1, v3

    .line 537
    .local v1, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()J

    move-result-wide v3

    .line 538
    .local v3, "segmentCount":J
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5c

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5c

    .line 539
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()J

    move-result-wide v5

    add-long/2addr v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 540
    .local v5, "lastAvailableSegmentNum":J
    move-object v7, p1

    check-cast v7, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-lez v9, :cond_5c

    .line 541
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    .line 542
    return v2

    .line 547
    .end local v1    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v3    # "segmentCount":J
    .end local v5    # "lastAvailableSegmentNum":J
    :cond_5c
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 548
    .local v1, "trackIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v3, v3, v1

    .line 550
    .local v3, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    iget-object v5, v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 551
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->selectBaseUrl(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    move-result-object v4

    .line 552
    .local v4, "newBaseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    if-eqz v4, :cond_7d

    iget-object v5, v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 555
    return v2

    .line 558
    :cond_7d
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iget-object v6, v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 559
    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->createFallbackOptions(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Ljava/util/List;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    move-result-object v5

    .line 560
    .local v5, "fallbackOptions":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result v7

    if-nez v7, :cond_95

    .line 561
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result v7

    if-nez v7, :cond_95

    .line 562
    return v0

    .line 565
    :cond_95
    nop

    .line 566
    invoke-interface {p4, v5, p3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getFallbackSelectionFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object v7

    .line 567
    .local v7, "fallbackSelection":Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;
    if-eqz v7, :cond_c8

    iget v8, v7, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result v8

    if-nez v8, :cond_a5

    goto :goto_c8

    .line 572
    :cond_a5
    const/4 v0, 0x0

    .line 573
    .local v0, "cancelLoad":Z
    iget v8, v7, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    if-ne v8, v6, :cond_b9

    .line 574
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iget-object v6, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 576
    invoke-interface {v2, v6}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    iget-wide v8, v7, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    .line 575
    invoke-interface {v2, v6, v8, v9}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->excludeTrack(IJ)Z

    move-result v0

    goto :goto_c7

    .line 577
    :cond_b9
    iget v6, v7, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    if-ne v6, v2, :cond_c7

    .line 578
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    iget-object v6, v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-wide v8, v7, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    invoke-virtual {v2, v6, v8, v9}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->exclude(Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;J)V

    .line 580
    const/4 v0, 0x1

    .line 582
    :cond_c7
    :goto_c7
    return v0

    .line 569
    .end local v0    # "cancelLoad":Z
    :cond_c8
    :goto_c8
    return v0
.end method

.method public release()V
    .registers 6

    .line 587
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 588
    .local v3, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 589
    .local v4, "chunkExtractor":Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    if-eqz v4, :cond_f

    .line 590
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->release()V

    .line 587
    .end local v3    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v4    # "chunkExtractor":Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 593
    :cond_12
    return-void
.end method

.method public shouldCancelLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z
    .registers 6
    .param p1, "playbackPositionUs"    # J
    .param p3, "loadingChunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 316
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_6

    .line 317
    const/4 v0, 0x0

    return v0

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->shouldCancelChunkLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .registers 10
    .param p1, "newManifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "newPeriodIndex"    # I

    .line 277
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 278
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 279
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v0

    .line 280
    .local v0, "periodDurationUs":J
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/ArrayList;

    move-result-object v2

    .line 281
    .local v2, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v4, v4

    if-ge v3, v4, :cond_2b

    .line 282
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 283
    .local v4, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v6, v5, v3

    .line 284
    invoke-virtual {v6, v0, v1, v4}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->copyWithNewRepresentation(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v6

    aput-object v6, v5, v3
    :try_end_28
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_28} :catch_2c

    .line 281
    .end local v4    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 288
    .end local v0    # "periodDurationUs":J
    .end local v2    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    .end local v3    # "i":I
    :cond_2b
    goto :goto_2f

    .line 286
    :catch_2c
    move-exception v0

    .line 287
    .local v0, "e":Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 289
    .end local v0    # "e":Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
    :goto_2f
    return-void
.end method

.method public updateTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .registers 2
    .param p1, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 293
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 294
    return-void
.end method
