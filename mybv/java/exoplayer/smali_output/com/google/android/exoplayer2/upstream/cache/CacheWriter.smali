.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;
.super Ljava/lang/Object;
.source "CacheWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private bytesCached:J

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private endPosition:J

.field private volatile isCanceled:Z

.field private nextPosition:J

.field private final progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

.field private final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;[BLcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;)V
    .registers 7
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "temporaryBuffer"    # [B
    .param p4, "progressListener"    # Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 84
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 85
    nop

    .line 86
    if-nez p3, :cond_15

    const/high16 v0, 0x20000

    new-array v0, v0, [B

    goto :goto_16

    :cond_15
    move-object v0, p3

    :goto_16
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->temporaryBuffer:[B

    .line 87
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    .line 88
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getCacheKeyFactory()Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    .line 89
    iget-wide v0, p2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    .line 90
    return-void
.end method

.method private getLength()J
    .registers 6

    .line 234
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    goto :goto_f

    :cond_9
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long v2, v0, v2

    :goto_f
    return-wide v2
.end method

.method private onNewBytesCached(J)V
    .registers 12
    .param p1, "newBytesCached"    # J

    .line 227
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    .line 228
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    if-eqz v2, :cond_13

    .line 229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->getLength()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    move-wide v7, p1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    .line 231
    :cond_13
    return-void
.end method

.method private onRequestEndPosition(J)V
    .registers 13
    .param p1, "endPosition"    # J

    .line 217
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    .line 218
    return-void

    .line 220
    :cond_7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    .line 221
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    if-eqz v3, :cond_18

    .line 222
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->getLength()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    const-wide/16 v8, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    .line 224
    :cond_18
    return-void
.end method

.method private readBlockToCache(JJ)J
    .registers 16
    .param p1, "position"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    add-long v0, p1, p3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    cmp-long v7, v0, v2

    if-eqz v7, :cond_12

    cmp-long v0, p3, v5

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 158
    .local v0, "isLastBlock":Z
    :goto_13
    const-wide/16 v1, -0x1

    .line 159
    .local v1, "resolvedLength":J
    const/4 v3, 0x0

    .line 160
    .local v3, "isDataSourceOpen":Z
    cmp-long v7, p3, v5

    if-eqz v7, :cond_3b

    .line 163
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 164
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v7

    .line 166
    .local v7, "boundedDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :try_start_2c
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v8
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_32} :catch_35

    move-wide v1, v8

    .line 167
    const/4 v3, 0x1

    .line 170
    goto :goto_3b

    .line 168
    :catch_35
    move-exception v8

    .line 169
    .local v8, "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-static {v9}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 173
    .end local v7    # "boundedDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v8    # "e":Ljava/io/IOException;
    :cond_3b
    :goto_3b
    if-nez v3, :cond_61

    .line 176
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    .line 177
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 178
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v7

    .line 180
    .local v7, "unboundedDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :try_start_52
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v8
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_58} :catch_5a

    move-wide v1, v8

    .line 184
    goto :goto_61

    .line 181
    :catch_5a
    move-exception v4

    .line 182
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-static {v5}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 183
    throw v4

    .line 187
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "unboundedDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_61
    :goto_61
    const/4 v7, 0x0

    .line 189
    .local v7, "totalBytesRead":I
    if-eqz v0, :cond_70

    cmp-long v8, v1, v5

    if-eqz v8, :cond_70

    .line 190
    add-long v5, p1, v1

    :try_start_6a
    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->onRequestEndPosition(J)V

    goto :goto_70

    .line 204
    :catch_6e
    move-exception v4

    goto :goto_91

    .line 192
    :cond_70
    :goto_70
    const/4 v5, 0x0

    .line 193
    .local v5, "bytesRead":I
    :cond_71
    :goto_71
    const/4 v6, -0x1

    if-eq v5, v6, :cond_89

    .line 194
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    .line 195
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->temporaryBuffer:[B

    array-length v10, v9

    invoke-virtual {v8, v9, v4, v10}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->read([BII)I

    move-result v8

    move v5, v8

    .line 196
    if-eq v5, v6, :cond_71

    .line 197
    int-to-long v8, v5

    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->onNewBytesCached(J)V

    .line 198
    add-int/2addr v7, v5

    goto :goto_71

    .line 201
    :cond_89
    if-eqz v0, :cond_97

    .line 202
    int-to-long v8, v7

    add-long/2addr v8, p1

    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->onRequestEndPosition(J)V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_90} :catch_6e

    goto :goto_97

    .line 205
    .end local v5    # "bytesRead":I
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_91
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-static {v5}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 206
    throw v4

    .line 207
    .end local v4    # "e":Ljava/io/IOException;
    :cond_97
    :goto_97
    nop

    .line 212
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->close()V

    .line 213
    int-to-long v4, v7

    return-wide v4
.end method

.method private throwIfCanceled()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 238
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->isCanceled:Z

    if-nez v0, :cond_5

    .line 241
    return-void

    .line 239
    :cond_5
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public cache()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2b

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    goto :goto_40

    .line 124
    :cond_2b
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v0

    .line 125
    .local v0, "contentLength":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_3d

    move-wide v4, v2

    goto :goto_3e

    :cond_3d
    move-wide v4, v0

    :goto_3e
    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    .line 127
    .end local v0    # "contentLength":J
    :goto_40
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    if-eqz v6, :cond_4f

    .line 128
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->getLength()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    const-wide/16 v11, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    .line 131
    :cond_4f
    :goto_4f
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5d

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    cmp-long v6, v4, v0

    if-gez v6, :cond_5c

    goto :goto_5d

    .line 145
    :cond_5c
    return-void

    .line 132
    :cond_5d
    :goto_5d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    .line 134
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v0, v2

    if-nez v6, :cond_6d

    move-wide v10, v4

    goto :goto_71

    :cond_6d
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    sub-long/2addr v0, v6

    move-wide v10, v0

    .line 135
    .local v10, "maxRemainingLength":J
    :goto_71
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    invoke-interface/range {v6 .. v11}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    .line 136
    .local v0, "blockLength":J
    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-lez v8, :cond_87

    .line 137
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    goto :goto_98

    .line 140
    :cond_87
    neg-long v0, v0

    .line 141
    cmp-long v6, v0, v4

    if-nez v6, :cond_8e

    move-wide v4, v2

    goto :goto_8f

    :cond_8e
    move-wide v4, v0

    .line 142
    .local v4, "nextRequestLength":J
    :goto_8f
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->readBlockToCache(JJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    .line 144
    .end local v0    # "blockLength":J
    .end local v4    # "nextRequestLength":J
    .end local v10    # "maxRemainingLength":J
    :goto_98
    goto :goto_4f
.end method

.method public cancel()V
    .registers 2

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->isCanceled:Z

    .line 99
    return-void
.end method
