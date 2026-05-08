.class public final Lcom/google/android/exoplayer2/source/dash/DashUtil;
.super Ljava/lang/Object;
.source "DashUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDataSpec(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;I)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .registers 5
    .param p0, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p1, "requestUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 98
    invoke-static {p0, v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;ILjava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    return-object v0
.end method

.method public static buildDataSpec(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;I)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .registers 5
    .param p0, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "requestUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p3, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    nop

    .line 89
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 88
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;ILjava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    return-object v0
.end method

.method public static buildDataSpec(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;ILjava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .registers 8
    .param p0, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "requestUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;"
        }
    .end annotation

    .line 72
    .local p4, "httpRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    .line 73
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    .line 76
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->resolveCacheKey(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method private static getFirstRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/Period;I)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .registers 6
    .param p0, "period"    # Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .param p1, "type"    # I

    .line 357
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v0

    .line 358
    .local v0, "index":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 359
    return-object v2

    .line 361
    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 362
    .local v1, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_21

    :cond_1a
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    :goto_21
    return-object v2
.end method

.method public static loadChunkIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    .registers 4
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "trackType"    # I
    .param p2, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadChunkIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;I)Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    move-result-object v0

    return-object v0
.end method

.method public static loadChunkIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;I)Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    .registers 6
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "trackType"    # I
    .param p2, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p3, "baseUrlIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    if-nez v0, :cond_8

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_8
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->newChunkExtractor(ILcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    move-result-object v0

    .line 215
    .local v0, "chunkExtractor":Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    const/4 v1, 0x1

    :try_start_f
    invoke-static {v0, p0, p2, p3, v1}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;IZ)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1b

    .line 218
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->release()V

    .line 219
    nop

    .line 220
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->getChunkIndex()Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    move-result-object v1

    return-object v1

    .line 218
    :catchall_1b
    move-exception v1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->release()V

    .line 219
    throw v1
.end method

.method public static loadFormatWithDrmInitData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Lcom/google/android/exoplayer2/Format;
    .registers 7
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "period"    # Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x2

    .line 130
    .local v0, "primaryTrackType":I
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->getFirstRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/Period;I)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    .line 131
    .local v1, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    if-nez v1, :cond_10

    .line 132
    const/4 v0, 0x1

    .line 133
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->getFirstRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/Period;I)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    .line 134
    if-nez v1, :cond_10

    .line 135
    const/4 v2, 0x0

    return-object v2

    .line 138
    :cond_10
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    .line 140
    .local v2, "manifestFormat":Lcom/google/android/exoplayer2/Format;
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadSampleFormat(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 141
    .local v3, "sampleFormat":Lcom/google/android/exoplayer2/Format;
    if-nez v3, :cond_1a

    .line 142
    move-object v4, v2

    goto :goto_1e

    .line 143
    :cond_1a
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 141
    :goto_1e
    return-object v4
.end method

.method private static loadInitializationData(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;IZ)V
    .registers 8
    .param p0, "chunkExtractor"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p3, "baseUrlIndex"    # I
    .param p4, "loadIndex"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 263
    .local v0, "initializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-eqz p4, :cond_28

    .line 264
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    .line 265
    .local v1, "indexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v1, :cond_13

    .line 266
    return-void

    .line 270
    :cond_13
    iget-object v2, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 271
    invoke-virtual {v2, p3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    .line 272
    .local v2, "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v2, :cond_27

    .line 273
    invoke-static {p1, p2, p3, p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;ILcom/google/android/exoplayer2/source/chunk/ChunkExtractor;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    .line 275
    move-object v2, v1

    .line 277
    .end local v1    # "indexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_27
    goto :goto_29

    .line 278
    .end local v2    # "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_28
    move-object v2, v0

    .line 280
    .restart local v2    # "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :goto_29
    invoke-static {p1, p2, p3, p0, v2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;ILcom/google/android/exoplayer2/source/chunk/ChunkExtractor;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    .line 281
    return-void
.end method

.method public static loadInitializationData(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)V
    .registers 5
    .param p0, "chunkExtractor"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p3, "loadIndex"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;IZ)V

    .line 303
    return-void
.end method

.method private static loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;ILcom/google/android/exoplayer2/source/chunk/ChunkExtractor;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V
    .registers 15
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p2, "baseUrlIndex"    # I
    .param p3, "chunkExtractor"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .param p4, "requestUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 315
    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 318
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 313
    const/4 v2, 0x0

    invoke-static {p1, v0, p4, v2, v1}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;ILjava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 319
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, v0

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;)V

    .line 327
    .local v1, "initializationChunk":Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->load()V

    .line 328
    return-void
.end method

.method public static loadManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .registers 4
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->load(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Landroid/net/Uri;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    return-object v0
.end method

.method public static loadSampleFormat(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/Format;
    .registers 4
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "trackType"    # I
    .param p2, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadSampleFormat(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static loadSampleFormat(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;I)Lcom/google/android/exoplayer2/Format;
    .registers 7
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "trackType"    # I
    .param p2, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p3, "baseUrlIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    if-nez v0, :cond_8

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_8
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->newChunkExtractor(ILcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    move-result-object v0

    .line 167
    .local v0, "chunkExtractor":Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    const/4 v1, 0x0

    :try_start_f
    invoke-static {v0, p0, p2, p3, v1}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;IZ)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_23

    .line 170
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->release()V

    .line 171
    nop

    .line 172
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/Format;

    aget-object v1, v2, v1

    return-object v1

    .line 170
    :catchall_23
    move-exception v1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;->release()V

    .line 171
    throw v1
.end method

.method private static newChunkExtractor(ILcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .registers 6
    .param p0, "trackType"    # I
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 346
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 347
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 349
    const-string v1, "video/webm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 350
    const-string v1, "audio/webm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 351
    .local v1, "isWebm":Z
    :goto_17
    if-eqz v1, :cond_1f

    new-instance v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>()V

    goto :goto_24

    :cond_1f
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    .line 352
    .local v2, "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :goto_24
    new-instance v3, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor;

    invoke-direct {v3, v2, p0, p1}, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/Format;)V

    return-object v3
.end method

.method public static resolveCacheKey(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Ljava/lang/String;
    .registers 5
    .param p0, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p1, "rangedUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 339
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "cacheKey":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 341
    move-object v1, v0

    goto :goto_1b

    .line 342
    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    :goto_1b
    return-object v1
.end method
