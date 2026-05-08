.class public final Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private loadCompleted:Z

.field private nextLoadPosition:J

.field private final sampleFormat:Lcom/google/android/exoplayer2/Format;

.field private final trackType:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJILcom/google/android/exoplayer2/Format;)V
    .registers 30
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "chunkIndex"    # J
    .param p12, "trackType"    # I
    .param p13, "sampleFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 69
    move-object/from16 v14, p0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v14, p10

    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 80
    move/from16 v1, p12

    iput v1, v0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->trackType:I

    .line 81
    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    .line 82
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .registers 1

    .line 94
    return-void
.end method

.method public isLoadCompleted()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->getOutput()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-result-object v2

    .line 100
    .local v2, "output":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 101
    const/4 v0, 0x0

    iget v3, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->trackType:I

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v3

    .line 102
    .local v3, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 105
    :try_start_17
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 106
    .local v0, "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    .line 107
    .local v4, "length":J
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_30

    .line 108
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    add-long/2addr v4, v6

    move-wide v12, v4

    goto :goto_31

    .line 107
    :cond_30
    move-wide v12, v4

    .line 110
    .end local v4    # "length":J
    .local v12, "length":J
    :goto_31
    new-instance v4, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    move-object v6, v4

    move-wide v10, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataReader;JJ)V

    move-object v11, v4

    .line 113
    .local v11, "extractorInput":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    const/4 v4, 0x0

    move v14, v4

    .line 114
    .local v14, "result":I
    :goto_3f
    const/4 v4, -0x1

    const/4 v15, 0x1

    if-eq v14, v4, :cond_52

    .line 115
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    int-to-long v6, v14

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    .line 116
    const v4, 0x7fffffff

    invoke-interface {v3, v11, v4, v15}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v4

    move v14, v4

    goto :goto_3f

    .line 118
    :cond_52
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    long-to-int v10, v4

    .line 119
    .local v10, "sampleSize":I
    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->startTimeUs:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object v4, v3

    move v8, v10

    move/from16 v17, v10

    .end local v10    # "sampleSize":I
    .local v17, "sampleSize":I
    move-object/from16 v10, v16

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    :try_end_64
    .catchall {:try_start_17 .. :try_end_64} :catchall_6d

    .line 121
    .end local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v11    # "extractorInput":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .end local v12    # "length":J
    .end local v14    # "result":I
    .end local v17    # "sampleSize":I
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 122
    nop

    .line 123
    iput-boolean v15, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    .line 124
    return-void

    .line 121
    :catchall_6d
    move-exception v0

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v4}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 122
    goto :goto_75

    :goto_74
    throw v0

    :goto_75
    goto :goto_74
.end method
