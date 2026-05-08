.class public final Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
.super Lcom/google/android/exoplayer2/source/chunk/Chunk;
.source "InitializationChunk.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

.field private volatile loadCanceled:Z

.field private nextLoadPosition:J

.field private trackOutputProvider:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;)V
    .registers 18
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "chunkExtractor"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 63
    const/4 v3, 0x2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/chunk/Chunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 72
    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    .line 73
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .registers 2

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->loadCanceled:Z

    .line 91
    return-void
.end method

.method public init(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;)V
    .registers 2
    .param p1, "trackOutputProvider"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->trackOutputProvider:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    .line 84
    return-void
.end method

.method public load()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->nextLoadPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    .line 97
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->trackOutputProvider:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->init(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V

    .line 102
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->nextLoadPosition:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 103
    .local v0, "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v7, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 105
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataReader;JJ)V
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_5f

    move-object v1, v7

    .line 108
    .local v1, "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    :goto_32
    :try_start_32
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->loadCanceled:Z

    if-nez v2, :cond_3f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->chunkExtractor:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_52

    if-eqz v2, :cond_3f

    goto :goto_32

    .line 110
    :cond_3f
    :try_start_3f
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->nextLoadPosition:J
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_5f

    .line 111
    nop

    .line 113
    .end local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v1    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 114
    nop

    .line 115
    return-void

    .line 110
    .restart local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local v1    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    :catchall_52
    move-exception v2

    :try_start_53
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->nextLoadPosition:J

    .line 111
    throw v2
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_5f

    .line 113
    .end local v0    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v1    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    :catchall_5f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 114
    goto :goto_67

    :goto_66
    throw v0

    :goto_67
    goto :goto_66
.end method
