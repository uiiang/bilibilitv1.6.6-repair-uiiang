.class public final Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationHolder"
.end annotation


# instance fields
.field final chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

.field private final periodDurationUs:J

.field public final representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

.field public final segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

.field private final segmentNumShift:J

.field public final selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;


# direct methods
.method constructor <init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V
    .registers 9
    .param p1, "periodDurationUs"    # J
    .param p3, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p4, "selectedBaseUrl"    # Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    .param p5, "chunkExtractor"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .param p6, "segmentNumShift"    # J
    .param p8, "segmentIndex"    # Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 895
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 896
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 897
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 898
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 899
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    .line 900
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 876
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    return-wide v0
.end method


# virtual methods
.method copyWithNewRepresentation(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .registers 35
    .param p1, "newPeriodDurationUs"    # J
    .param p3, "newRepresentation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
        }
    .end annotation

    .line 906
    move-object/from16 v0, p0

    move-wide/from16 v10, p1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v12

    .line 907
    .local v12, "oldIndex":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v13

    .line 909
    .local v13, "newIndex":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-nez v12, :cond_22

    .line 911
    new-instance v14, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v14

    .line 920
    :cond_22
    invoke-interface {v12}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 922
    new-instance v14, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v14

    .line 931
    :cond_3a
    invoke-interface {v12, v10, v11}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v14

    .line 932
    .local v14, "oldIndexSegmentCount":J
    const-wide/16 v1, 0x0

    cmp-long v3, v14, v1

    if-nez v3, :cond_57

    .line 934
    new-instance v16, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object/from16 v1, v16

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v16

    .line 943
    :cond_57
    invoke-interface {v12}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v7

    .line 944
    .local v7, "oldIndexFirstSegmentNum":J
    invoke-interface {v12, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v5

    .line 945
    .local v5, "oldIndexStartTimeUs":J
    add-long v1, v7, v14

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 946
    .local v1, "oldIndexLastSegmentNum":J
    nop

    .line 947
    invoke-interface {v12, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v16

    .line 948
    invoke-interface {v12, v1, v2, v10, v11}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v18

    add-long v16, v16, v18

    .line 949
    .local v16, "oldIndexEndTimeUs":J
    invoke-interface {v13}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v3

    .line 950
    .local v3, "newIndexFirstSegmentNum":J
    move-wide/from16 v20, v14

    .end local v14    # "oldIndexSegmentCount":J
    .local v20, "oldIndexSegmentCount":J
    invoke-interface {v13, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v14

    .line 951
    .local v14, "newIndexStartTimeUs":J
    move-wide/from16 v22, v7

    .end local v7    # "oldIndexFirstSegmentNum":J
    .local v22, "oldIndexFirstSegmentNum":J
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 952
    .local v7, "newSegmentNumShift":J
    cmp-long v9, v16, v14

    if-nez v9, :cond_8c

    .line 954
    const-wide/16 v18, 0x1

    add-long v18, v1, v18

    sub-long v18, v18, v3

    add-long v7, v7, v18

    move-wide/from16 v18, v7

    goto :goto_ab

    .line 955
    :cond_8c
    cmp-long v9, v16, v14

    if-ltz v9, :cond_c6

    .line 959
    cmp-long v9, v14, v5

    if-gez v9, :cond_a0

    .line 962
    nop

    .line 963
    invoke-interface {v13, v5, v6, v10, v11}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v18

    sub-long v18, v18, v22

    sub-long v7, v7, v18

    move-wide/from16 v18, v7

    goto :goto_ab

    .line 967
    :cond_a0
    nop

    .line 968
    invoke-interface {v12, v14, v15, v10, v11}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v18

    sub-long v18, v18, v3

    add-long v7, v7, v18

    move-wide/from16 v18, v7

    .line 971
    .end local v7    # "newSegmentNumShift":J
    .local v18, "newSegmentNumShift":J
    :goto_ab
    new-instance v24, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    move-wide/from16 v25, v1

    .end local v1    # "oldIndexLastSegmentNum":J
    .local v25, "oldIndexLastSegmentNum":J
    move-object/from16 v1, v24

    move-wide/from16 v27, v3

    .end local v3    # "newIndexFirstSegmentNum":J
    .local v27, "newIndexFirstSegmentNum":J
    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v29, v5

    .end local v5    # "oldIndexStartTimeUs":J
    .local v29, "oldIndexStartTimeUs":J
    move-object v5, v7

    move-object v6, v8

    move-wide/from16 v7, v18

    move-object v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v24

    .line 958
    .end local v18    # "newSegmentNumShift":J
    .end local v25    # "oldIndexLastSegmentNum":J
    .end local v27    # "newIndexFirstSegmentNum":J
    .end local v29    # "oldIndexStartTimeUs":J
    .restart local v1    # "oldIndexLastSegmentNum":J
    .restart local v3    # "newIndexFirstSegmentNum":J
    .restart local v5    # "oldIndexStartTimeUs":J
    .restart local v7    # "newSegmentNumShift":J
    :cond_c6
    move-wide/from16 v25, v1

    .end local v1    # "oldIndexLastSegmentNum":J
    .restart local v25    # "oldIndexLastSegmentNum":J
    new-instance v1, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    throw v1
.end method

.method copyWithNewSegmentIndex(Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .registers 12
    .param p1, "segmentIndex"    # Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    .line 982
    new-instance v9, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v9
.end method

.method copyWithNewSelectedBaseUrl(Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;)Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .registers 12
    .param p1, "selectedBaseUrl"    # Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 993
    new-instance v9, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-object v0, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;JLcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V

    return-object v9
.end method

.method public getFirstAvailableSegmentNum(J)J
    .registers 7
    .param p1, "nowUnixTimeUs"    # J

    .line 1007
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getFirstSegmentNum()J
    .registers 5

    .line 1003
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastAvailableSegmentNum(J)J
    .registers 8
    .param p1, "nowUnixTimeUs"    # J

    .line 1033
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 1034
    invoke-interface {v2, v3, v4, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getAvailableSegmentCount(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 1033
    return-wide v0
.end method

.method public getSegmentCount()J
    .registers 4

    .line 1012
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentEndTimeUs(J)J
    .registers 10
    .param p1, "segmentNum"    # J

    .line 1020
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long v3, p1, v3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 1021
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1020
    return-wide v0
.end method

.method public getSegmentNum(J)J
    .registers 7
    .param p1, "positionUs"    # J

    .line 1025
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSegmentStartTimeUs(J)J
    .registers 6
    .param p1, "segmentNum"    # J

    .line 1016
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long v1, p1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 6
    .param p1, "segmentNum"    # J

    .line 1029
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long v1, p1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public isSegmentAvailableAtFullNetworkSpeed(JJ)Z
    .registers 9
    .param p1, "segmentNum"    # J
    .param p3, "nowPeriodTimeUs"    # J

    .line 1039
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1043
    return v1

    .line 1045
    :cond_a
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v2

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v2

    cmp-long v0, v2, p3

    if-gtz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    return v1
.end method
