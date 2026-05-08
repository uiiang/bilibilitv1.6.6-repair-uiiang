.class public Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final chunkCount:I

.field private final chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

.field private volatile loadCanceled:Z

.field private loadCompleted:Z

.field private nextLoadPosition:J

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractor;)V
    .registers 25
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "clippedStartTimeUs"    # J
    .param p12, "clippedEndTimeUs"    # J
    .param p14, "chunkIndex"    # J
    .param p16, "chunkCount"    # I
    .param p17, "sampleOffsetUs"    # J
    .param p19, "chunkExtractor"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 82
    move-object v0, p0

    invoke-direct/range {p0 .. p15}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 93
    move/from16 v1, p16

    iput v1, v0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    .line 94
    move-wide/from16 v2, p17

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 95
    move-object/from16 v4, p19

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 96
    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .registers 2

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    .line 113
    return-void
.end method

.method public getNextChunkIndex()J
    .registers 5

    .line 100
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->chunkIndex:J

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getTrackOutputProvider(Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;
    .registers 2
    .param p1, "baseMediaChunkOutput"    # Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .line 153
    return-object p1
.end method

.method public isLoadCompleted()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public final load()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3a

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->getOutput()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-result-object v0

    .line 121
    .local v0, "output":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 122
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 123
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->getTrackOutputProvider(Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v4

    .line 124
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->clippedStartTimeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v1, v5

    if-nez v7, :cond_24

    move-wide v1, v5

    goto :goto_29

    :cond_24
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->clippedStartTimeUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v1, v7

    .line 125
    :goto_29
    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->clippedEndTimeUs:J

    cmp-long v9, v7, v5

    if-nez v9, :cond_30

    goto :goto_35

    :cond_30
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->clippedEndTimeUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v5, v7

    :goto_35
    move-wide v7, v5

    .line 122
    move-wide v5, v1

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->init(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V

    .line 129
    .end local v0    # "output":Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 130
    .local v0, "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v7, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 132
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataReader;JJ)V
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_86

    move-object v1, v7

    .line 135
    .local v1, "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    :goto_53
    :try_start_53
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v2, :cond_60

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_79

    if-eqz v2, :cond_60

    goto :goto_53

    .line 137
    :cond_60
    :try_start_60
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->nextLoadPosition:J
    :try_end_6b
    .catchall {:try_start_60 .. :try_end_6b} :catchall_86

    .line 138
    nop

    .line 140
    .end local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v1    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 141
    nop

    .line 142
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    .line 143
    return-void

    .line 137
    .restart local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local v1    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    :catchall_79
    move-exception v2

    :try_start_7a
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    .line 138
    throw v2
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_86

    .line 140
    .end local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v1    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    :catchall_86
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 141
    goto :goto_8e

    :goto_8d
    throw v0

    :goto_8e
    goto :goto_8d
.end method
