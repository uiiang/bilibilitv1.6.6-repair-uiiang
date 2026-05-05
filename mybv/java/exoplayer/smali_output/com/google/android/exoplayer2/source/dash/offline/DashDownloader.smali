.class public final Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.source "DashDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/offline/SegmentDownloader<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .registers 12
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p3, "cacheDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    .local p2, "manifestParser":Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    const-wide/16 v5, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V
    .registers 8
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p3, "cacheDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "maxMergedSegmentStartTimeDiffMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            "J)V"
        }
    .end annotation

    .line 154
    .local p2, "manifestParser":Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    .line 160
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;)V
    .registers 4
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "cacheDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .registers 11
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "cacheDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 108
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    const-wide/16 v5, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    .line 114
    return-void
.end method

.method private addSegmentsForAdaptationSet(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;JJZLjava/util/ArrayList;)V
    .registers 40
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "adaptationSet"    # Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .param p3, "periodStartUs"    # J
    .param p5, "periodDurationUs"    # J
    .param p7, "removing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            "JJZ",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 189
    .local p8, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p7

    move-object/from16 v10, p8

    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_a
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_c7

    .line 190
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 193
    .local v12, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :try_start_1b
    iget v0, v8, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1d} :catch_ba

    move-object/from16 v13, p1

    :try_start_1f
    invoke-direct {v7, v13, v0, v12, v9}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getSegmentIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_b8

    .line 194
    .local v0, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-eqz v0, :cond_ac

    .line 204
    nop

    .line 206
    move-wide/from16 v14, p5

    invoke-interface {v0, v14, v15}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v16

    .line 207
    .local v16, "segmentCount":J
    const-wide/16 v1, -0x1

    cmp-long v3, v16, v1

    if-eqz v3, :cond_a4

    .line 211
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->baseUrlExclusionList:Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;

    iget-object v2, v12, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->selectBaseUrl(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 212
    .local v6, "baseUrl":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v18

    .line 213
    .local v18, "initializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-eqz v18, :cond_5a

    .line 214
    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v6

    move-wide/from16 v4, p3

    move-object/from16 v19, v6

    .end local v6    # "baseUrl":Ljava/lang/String;
    .local v19, "baseUrl":Ljava/lang/String;
    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->createSegment(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;JLcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 213
    .end local v19    # "baseUrl":Ljava/lang/String;
    .restart local v6    # "baseUrl":Ljava/lang/String;
    :cond_5a
    move-object/from16 v19, v6

    .line 216
    .end local v6    # "baseUrl":Ljava/lang/String;
    .restart local v19    # "baseUrl":Ljava/lang/String;
    :goto_5c
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v20

    .line 217
    .local v20, "indexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-eqz v20, :cond_72

    .line 218
    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, v19

    move-wide/from16 v4, p3

    move-object/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->createSegment(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;JLcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_72
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v21

    .line 221
    .local v21, "firstSegmentNum":J
    add-long v1, v21, v16

    const-wide/16 v23, 0x1

    sub-long v25, v1, v23

    .line 222
    .local v25, "lastSegmentNum":J
    move-wide/from16 v1, v21

    move-wide v4, v1

    .local v4, "j":J
    :goto_7f
    cmp-long v1, v4, v25

    if-gtz v1, :cond_a1

    .line 223
    nop

    .line 227
    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v1

    add-long v27, p3, v1

    .line 228
    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v6

    .line 224
    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, v19

    move-wide/from16 v29, v4

    .end local v4    # "j":J
    .local v29, "j":J
    move-wide/from16 v4, v27

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->createSegment(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;JLcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    move-result-object v1

    .line 223
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-long v4, v29, v23

    .end local v29    # "j":J
    .restart local v4    # "j":J
    goto :goto_7f

    :cond_a1
    move-wide/from16 v29, v4

    .end local v4    # "j":J
    .restart local v29    # "j":J
    goto :goto_c2

    .line 208
    .end local v18    # "initializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v19    # "baseUrl":Ljava/lang/String;
    .end local v20    # "indexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v21    # "firstSegmentNum":J
    .end local v25    # "lastSegmentNum":J
    .end local v29    # "j":J
    :cond_a4
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadException;

    const-string v2, "Unbounded segment index"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    .end local v16    # "segmentCount":J
    :cond_ac
    move-wide/from16 v14, p5

    :try_start_ae
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadException;

    const-string v2, "Missing segment index"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    .end local v11    # "i":I
    .end local v12    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .end local p1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local p2    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local p3    # "periodStartUs":J
    .end local p5    # "periodDurationUs":J
    .end local p7    # "removing":Z
    .end local p8    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    throw v1
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b6} :catch_b6

    .line 198
    .end local v0    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .restart local v11    # "i":I
    .restart local v12    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local p1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .restart local p2    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .restart local p3    # "periodStartUs":J
    .restart local p5    # "periodDurationUs":J
    .restart local p7    # "removing":Z
    .restart local p8    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    :catch_b6
    move-exception v0

    goto :goto_bf

    :catch_b8
    move-exception v0

    goto :goto_bd

    :catch_ba
    move-exception v0

    move-object/from16 v13, p1

    :goto_bd
    move-wide/from16 v14, p5

    .line 199
    .local v0, "e":Ljava/io/IOException;
    :goto_bf
    if-eqz v9, :cond_c6

    .line 203
    nop

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :goto_c2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    .line 200
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v12    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_c6
    throw v0

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_c7
    move-object/from16 v13, p1

    move-wide/from16 v14, p5

    .line 231
    .end local v11    # "i":I
    return-void
.end method

.method private createSegment(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;JLcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    .registers 8
    .param p1, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "startTimeUs"    # J
    .param p5, "rangedUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 235
    nop

    .line 241
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 236
    const/4 v1, 0x0

    invoke-static {p1, p2, p5, v1, v0}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;ILjava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 242
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-direct {v1, p3, p4, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    return-object v1
.end method

.method private getSegmentIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .registers 11
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "trackType"    # I
    .param p3, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p4, "removing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 249
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0

    .line 250
    .local v0, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-eqz v0, :cond_7

    .line 251
    return-object v0

    .line 253
    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;-><init>(Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)V

    .line 260
    .local v1, "runnable":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<Lcom/google/android/exoplayer2/extractor/ChunkIndex;Ljava/io/IOException;>;"
    invoke-virtual {p0, v1, p4}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->execute(Lcom/google/android/exoplayer2/util/RunnableFutureTask;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 261
    .local v2, "seekMap":Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    if-nez v2, :cond_16

    .line 262
    const/4 v3, 0x0

    goto :goto_1d

    .line 263
    :cond_16
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;

    iget-wide v4, p3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;J)V

    .line 261
    :goto_1d
    return-object v3
.end method


# virtual methods
.method protected bridge synthetic getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    check-cast p2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Z)Ljava/util/List;
    .registers 23
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "removing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 167
    move-object/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v2

    if-ge v11, v2, :cond_4b

    .line 169
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v12

    .line 170
    .local v12, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    iget-wide v2, v12, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v13

    .line 171
    .local v13, "periodStartUs":J
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v15

    .line 172
    .local v15, "periodDurationUs":J
    iget-object v10, v12, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 173
    .local v10, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    const/4 v2, 0x0

    move v9, v2

    .local v9, "j":I
    :goto_21
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_44

    .line 174
    nop

    .line 175
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 174
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide v5, v13

    move-wide v7, v15

    move/from16 v17, v9

    .end local v9    # "j":I
    .local v17, "j":I
    move/from16 v9, p3

    move-object/from16 v18, v10

    .end local v10    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .local v18, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegmentsForAdaptationSet(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;JJZLjava/util/ArrayList;)V

    .line 173
    add-int/lit8 v9, v17, 0x1

    move-object/from16 v10, v18

    .end local v17    # "j":I
    .restart local v9    # "j":I
    goto :goto_21

    .end local v18    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .restart local v10    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    :cond_44
    move/from16 v17, v9

    move-object/from16 v18, v10

    .line 168
    .end local v9    # "j":I
    .end local v10    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .end local v12    # "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .end local v13    # "periodStartUs":J
    .end local v15    # "periodDurationUs":J
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 178
    .end local v11    # "i":I
    :cond_4b
    return-object v1
.end method
