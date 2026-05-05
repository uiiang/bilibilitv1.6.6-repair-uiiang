.class public abstract Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;,
        Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;,
        Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/google/android/exoplayer2/offline/FilterableManifest<",
        "TM;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/offline/Downloader;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x20000

.field public static final DEFAULT_MAX_MERGED_SEGMENT_START_TIME_DIFF_MS:J = 0x4e20L


# instance fields
.field private final activeRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

.field private final cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile isCanceled:Z

.field private final manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final maxMergedSegmentStartTimeDiffUs:J

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final streamKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


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
            "TM;>;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;>;"
    .local p2, "manifestParser":Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<TM;>;"
    const-wide/16 v5, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V
    .registers 9
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p3, "cacheDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "maxMergedSegmentStartTimeDiffMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "TM;>;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            "J)V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;>;"
    .local p2, "manifestParser":Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<TM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 144
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    .line 146
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    .line 147
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    .line 148
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 149
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->getCacheKeyFactory()Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 150
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->getUpstreamPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 152
    invoke-static {p5, p6}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->maxMergedSegmentStartTimeDiffUs:J

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/offline/SegmentDownloader;)Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/SegmentDownloader;

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-object v0
.end method

.method private addActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
            "TT;*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 427
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;>;"
    .local p1, "runnable":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TT;*>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 428
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Z

    if-nez v1, :cond_e

    .line 431
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    monitor-exit v0

    .line 433
    return-void

    .line 429
    :cond_e
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    .end local p1    # "runnable":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TT;*>;"
    throw v1

    .line 432
    .restart local p1    # "runnable":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TT;*>;"
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private static canMergeSegments(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec;)Z
    .registers 7
    .param p0, "dataSpec1"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "dataSpec2"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3f

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3f

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    .line 480
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    if-ne v0, v1, :cond_3f

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    .line 483
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    .line 477
    :goto_40
    return v0
.end method

.method protected static getCompressibleDataSpec(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 422
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    return-object v0
.end method

.method private static mergeSegments(Ljava/util/List;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;J)V
    .registers 20
    .param p1, "keyFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
    .param p2, "maxMergedSegmentStartTimeDiffUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;",
            "J)V"
        }
    .end annotation

    .line 449
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 450
    .local v1, "lastIndexByCacheKey":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 451
    .local v2, "nextOutIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8b

    .line 452
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    .line 453
    .local v4, "segment":Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    iget-object v5, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v6, p1

    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "cacheKey":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 455
    .local v7, "lastIndex":Ljava/lang/Integer;
    if-nez v7, :cond_27

    const/4 v8, 0x0

    goto :goto_31

    :cond_27
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    .line 456
    .local v8, "lastSegment":Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    :goto_31
    if-eqz v8, :cond_7b

    iget-wide v9, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    iget-wide v11, v8, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    add-long v11, v11, p2

    cmp-long v13, v9, v11

    if-gtz v13, :cond_7b

    iget-object v9, v8, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v10, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 458
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->canMergeSegments(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec;)Z

    move-result v9

    if-nez v9, :cond_48

    goto :goto_7b

    .line 464
    :cond_48
    iget-object v9, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v9, v9, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v11, -0x1

    cmp-long v13, v9, v11

    if-nez v13, :cond_53

    .line 465
    goto :goto_5c

    .line 466
    :cond_53
    iget-object v9, v8, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v9, v9, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget-object v11, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v11, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    add-long/2addr v11, v9

    :goto_5c
    move-wide v9, v11

    .line 467
    .local v9, "mergedLength":J
    iget-object v11, v8, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13, v9, v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(JJ)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v11

    .line 468
    .local v11, "mergedDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    nop

    .line 469
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    new-instance v13, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-wide v14, v8, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    invoke-direct {v13, v14, v15, v11}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 468
    invoke-interface {v0, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_87

    .line 459
    .end local v9    # "mergedLength":J
    .end local v11    # "mergedDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_7b
    :goto_7b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 461
    add-int/lit8 v2, v2, 0x1

    .line 451
    .end local v4    # "segment":Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    .end local v5    # "cacheKey":Ljava/lang/String;
    .end local v7    # "lastIndex":Ljava/lang/Integer;
    .end local v8    # "lastSegment":Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    :goto_87
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    :cond_8b
    move-object/from16 v6, p1

    .line 473
    .end local v3    # "i":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    .line 474
    return-void
.end method

.method private removeActiveRunnable(I)V
    .registers 4
    .param p1, "index"    # I

    .line 442
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 443
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 444
    monitor-exit v0

    .line 445
    return-void

    .line 444
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private removeActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
            "**>;)V"
        }
    .end annotation

    .line 436
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;>;"
    .local p1, "runnable":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<**>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 437
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 438
    monitor-exit v0

    .line 439
    return-void

    .line 438
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .line 299
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 300
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Z

    .line 301
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 302
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancel(Z)Z

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 304
    .end local v2    # "i":I
    :cond_1d
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    goto :goto_23

    :goto_22
    throw v1

    :goto_23
    goto :goto_22
.end method

.method public final download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    .registers 32
    .param p1, "progressListener"    # Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 158
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;>;"
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    move-object v2, v0

    .line 159
    .local v2, "pendingSegments":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    move-object v3, v0

    .line 160
    .local v3, "recycledRunnables":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;>;"
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v4, -0x3e8

    if-eqz v0, :cond_17

    .line 161
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    .line 164
    :cond_17
    const/4 v5, 0x1

    :try_start_18
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceForDownloading()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    move-object v6, v0

    .line 166
    .local v6, "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v0, v7}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Lcom/google/android/exoplayer2/offline/FilterableManifest;

    move-result-object v0

    .line 167
    .local v0, "manifest":Lcom/google/android/exoplayer2/offline/FilterableManifest;, "TM;"
    iget-object v8, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_38

    .line 168
    iget-object v8, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/offline/FilterableManifest;

    move-object v0, v8

    goto :goto_39

    .line 167
    :cond_38
    move-object v8, v0

    .line 170
    .end local v0    # "manifest":Lcom/google/android/exoplayer2/offline/FilterableManifest;, "TM;"
    .local v8, "manifest":Lcom/google/android/exoplayer2/offline/FilterableManifest;, "TM;"
    :goto_39
    invoke-virtual {v1, v6, v8, v7}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    .line 174
    .local v7, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 175
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->maxMergedSegmentStartTimeDiffUs:J

    invoke-static {v7, v0, v9, v10}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->mergeSegments(Ljava/util/List;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;J)V

    .line 178
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    .line 179
    .local v15, "totalSegments":I
    const/4 v0, 0x0

    .line 180
    .local v0, "segmentsDownloaded":I
    const-wide/16 v9, 0x0

    .line 181
    .local v9, "contentLength":J
    const-wide/16 v11, 0x0

    .line 182
    .local v11, "bytesDownloaded":J
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v5

    move-wide/from16 v19, v9

    move-wide/from16 v21, v11

    move v9, v0

    .end local v0    # "segmentsDownloaded":I
    .end local v11    # "bytesDownloaded":J
    .local v9, "segmentsDownloaded":I
    .local v13, "i":I
    .local v19, "contentLength":J
    .local v21, "bytesDownloaded":J
    :goto_5b
    if-ltz v13, :cond_c0

    .line 183
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 184
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    iget-object v10, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    invoke-interface {v10, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, "cacheKey":Ljava/lang/String;
    iget-wide v11, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    .line 186
    .local v11, "segmentLength":J
    const-wide/16 v16, -0x1

    cmp-long v14, v11, v16

    if-nez v14, :cond_8b

    .line 187
    iget-object v14, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 188
    invoke-interface {v14, v10}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v23

    .line 189
    .local v23, "resourceLength":J
    cmp-long v14, v23, v16

    if-eqz v14, :cond_88

    .line 190
    move-object/from16 v29, v6

    .end local v6    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .local v29, "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long v11, v23, v5

    goto :goto_8d

    .line 189
    .end local v29    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .restart local v6    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    :cond_88
    move-object/from16 v29, v6

    .end local v6    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .restart local v29    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    goto :goto_8d

    .line 186
    .end local v23    # "resourceLength":J
    .end local v29    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .restart local v6    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    :cond_8b
    move-object/from16 v29, v6

    .line 193
    .end local v6    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .restart local v29    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    :goto_8d
    iget-object v5, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-object v14, v5

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 194
    move-object/from16 v23, v14

    move-object/from16 v24, v10

    move-wide/from16 v25, v4

    move-wide/from16 v27, v11

    invoke-interface/range {v23 .. v28}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v4

    .line 195
    .local v4, "segmentBytesDownloaded":J
    add-long v21, v21, v4

    .line 196
    cmp-long v14, v11, v16

    if-eqz v14, :cond_b4

    .line 197
    cmp-long v14, v11, v4

    if-nez v14, :cond_ad

    .line 199
    add-int/lit8 v9, v9, 0x1

    .line 200
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 202
    :cond_ad
    cmp-long v14, v19, v16

    if-eqz v14, :cond_b8

    .line 203
    add-long v19, v19, v11

    goto :goto_b8

    .line 206
    :cond_b4
    const-wide/16 v16, -0x1

    move-wide/from16 v19, v16

    .line 182
    .end local v0    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v4    # "segmentBytesDownloaded":J
    .end local v10    # "cacheKey":Ljava/lang/String;
    .end local v11    # "segmentLength":J
    :cond_b8
    :goto_b8
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v6, v29

    const/16 v4, -0x3e8

    const/4 v5, 0x1

    goto :goto_5b

    .end local v29    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .restart local v6    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    :cond_c0
    move-object/from16 v29, v6

    .line 213
    .end local v6    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .end local v13    # "i":I
    .restart local v29    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    if-eqz p1, :cond_d3

    .line 214
    new-instance v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;

    move-object v11, v0

    move-object/from16 v12, p1

    move-wide/from16 v13, v19

    move-wide/from16 v16, v21

    move/from16 v18, v9

    invoke-direct/range {v11 .. v18}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;-><init>(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;JIJI)V

    goto :goto_d4

    .line 220
    :cond_d3
    const/4 v0, 0x0

    :goto_d4
    move-object v4, v0

    .line 221
    .local v4, "progressNotifier":Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;
    invoke-virtual {v2, v7}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 222
    :goto_d8
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Z

    if-nez v0, :cond_17f

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17f

    .line 224
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_eb

    .line 225
    const/16 v5, -0x3e8

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 231
    :cond_eb
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ff

    .line 232
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;

    .line 233
    .local v0, "recycledRunnable":Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;
    iget-object v5, v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 234
    .local v5, "segmentDataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    iget-object v10, v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    move-object v0, v10

    .line 235
    .local v0, "temporaryBuffer":[B
    move-object v10, v5

    move-object v5, v0

    goto :goto_10c

    .line 236
    .end local v0    # "temporaryBuffer":[B
    .end local v5    # "segmentDataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    :cond_ff
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceForDownloading()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    move-object v5, v0

    .line 237
    .restart local v5    # "segmentDataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    const/high16 v0, 0x20000

    new-array v0, v0, [B

    move-object v10, v5

    move-object v5, v0

    .line 239
    .local v5, "temporaryBuffer":[B
    .local v10, "segmentDataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    :goto_10c
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    move-object v11, v0

    .line 240
    .local v11, "segment":Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    new-instance v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;

    invoke-direct {v0, v11, v10, v4, v5}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;-><init>(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;[B)V

    move-object v12, v0

    .line 243
    .local v12, "downloadRunnable":Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;
    invoke-direct {v1, v12}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->addActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    .line 244
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    move v13, v0

    .local v13, "j":I
    :goto_12a
    if-ltz v13, :cond_17a

    .line 248
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;

    move-object v14, v0

    .line 252
    .local v14, "activeRunnable":Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_141

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->isDone()Z

    move-result v0
    :try_end_13f
    .catchall {:try_start_18 .. :try_end_13f} :catchall_1bc

    if-eqz v0, :cond_173

    .line 254
    :cond_141
    :try_start_141
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->get()Ljava/lang/Object;

    .line 255
    invoke-direct {v1, v13}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 256
    invoke-virtual {v3, v14}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_14a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_141 .. :try_end_14a} :catch_14b
    .catchall {:try_start_141 .. :try_end_14a} :catchall_1bc

    .line 270
    goto :goto_173

    .line 257
    :catch_14b
    move-exception v0

    .line 258
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_14c
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Throwable;

    move-object/from16 v17, v16

    .line 259
    .local v17, "cause":Ljava/lang/Throwable;
    move-object/from16 v6, v17

    move-object/from16 v17, v0

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .local v6, "cause":Ljava/lang/Throwable;
    .local v17, "e":Ljava/util/concurrent/ExecutionException;
    instance-of v0, v6, Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;

    if-eqz v0, :cond_16c

    .line 261
    iget-object v0, v14, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 262
    invoke-direct {v1, v13}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 263
    invoke-virtual {v3, v14}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_173

    .line 264
    :cond_16c
    instance-of v0, v6, Ljava/io/IOException;

    if-nez v0, :cond_176

    .line 268
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 247
    .end local v6    # "cause":Ljava/lang/Throwable;
    .end local v14    # "activeRunnable":Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;
    .end local v17    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_173
    :goto_173
    add-int/lit8 v13, v13, -0x1

    goto :goto_12a

    .line 265
    .restart local v6    # "cause":Ljava/lang/Throwable;
    .restart local v14    # "activeRunnable":Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;
    .restart local v17    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_176
    move-object v0, v6

    check-cast v0, Ljava/io/IOException;

    .end local v2    # "pendingSegments":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    .end local v3    # "recycledRunnables":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;>;"
    .end local p1    # "progressListener":Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
    throw v0

    .line 276
    .end local v6    # "cause":Ljava/lang/Throwable;
    .end local v13    # "j":I
    .end local v14    # "activeRunnable":Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;
    .end local v17    # "e":Ljava/util/concurrent/ExecutionException;
    .restart local v2    # "pendingSegments":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    .restart local v3    # "recycledRunnables":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;>;"
    .restart local p1    # "progressListener":Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
    :cond_17a
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->blockUntilStarted()V
    :try_end_17d
    .catchall {:try_start_14c .. :try_end_17d} :catchall_1bc

    .line 277
    .end local v5    # "temporaryBuffer":[B
    .end local v10    # "segmentDataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .end local v11    # "segment":Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    .end local v12    # "downloadRunnable":Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;
    goto/16 :goto_d8

    .line 282
    .end local v4    # "progressNotifier":Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;
    .end local v7    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    .end local v8    # "manifest":Lcom/google/android/exoplayer2/offline/FilterableManifest;, "TM;"
    .end local v9    # "segmentsDownloaded":I
    .end local v15    # "totalSegments":I
    .end local v19    # "contentLength":J
    .end local v21    # "bytesDownloaded":J
    .end local v29    # "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    :cond_17f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_180
    iget-object v4, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_197

    .line 283
    iget-object v4, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancel(Z)Z

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_180

    :cond_197
    const/4 v5, 0x1

    .line 287
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    .restart local v0    # "i":I
    :goto_19f
    if-ltz v0, :cond_1b2

    .line 288
    iget-object v4, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 289
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 287
    add-int/lit8 v0, v0, -0x1

    goto :goto_19f

    .line 291
    .end local v0    # "i":I
    :cond_1b2
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_1bb

    .line 292
    const/16 v4, -0x3e8

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 295
    :cond_1bb
    return-void

    .line 282
    :catchall_1bc
    move-exception v0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1be
    iget-object v5, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1d5

    .line 283
    iget-object v5, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancel(Z)Z

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_1be

    :cond_1d5
    const/4 v7, 0x1

    .line 287
    .end local v4    # "i":I
    iget-object v4, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    .restart local v4    # "i":I
    :goto_1dd
    if-ltz v4, :cond_1f0

    .line 288
    iget-object v5, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 289
    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 287
    add-int/lit8 v4, v4, -0x1

    goto :goto_1dd

    .line 291
    .end local v4    # "i":I
    :cond_1f0
    iget-object v4, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v4, :cond_1f9

    .line 292
    const/16 v5, -0x3e8

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 294
    :cond_1f9
    goto :goto_1fb

    :goto_1fa
    throw v0

    :goto_1fb
    goto :goto_1fa
.end method

.method protected final execute(Lcom/google/android/exoplayer2/util/RunnableFutureTask;Z)Ljava/lang/Object;
    .registers 6
    .param p2, "removing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
            "TT;*>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;>;"
    .local p1, "runnable":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TT;*>;"
    if-eqz p2, :cond_21

    .line 362
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->run()V

    .line 364
    :try_start_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 365
    :catch_a
    move-exception v0

    .line 366
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 367
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_1d

    .line 371
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    goto :goto_21

    .line 368
    :cond_1d
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 376
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_21
    :goto_21
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Z

    if-nez v0, :cond_6c

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_2e

    .line 381
    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 383
    :cond_2e
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->addActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    .line 384
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 386
    :try_start_36
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_3a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_36 .. :try_end_3a} :catch_43
    .catchall {:try_start_36 .. :try_end_3a} :catchall_41

    .line 399
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 400
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    .line 386
    return-object v0

    .line 399
    :catchall_41
    move-exception v0

    goto :goto_65

    .line 387
    :catch_43
    move-exception v0

    .line 388
    .restart local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :try_start_44
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 389
    .restart local v1    # "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;

    if-eqz v2, :cond_53

    goto :goto_5a

    .line 391
    :cond_53
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_61

    .line 395
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_41

    .line 399
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_5a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 400
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    .line 401
    goto :goto_21

    .line 392
    .restart local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .restart local v1    # "cause":Ljava/lang/Throwable;
    :cond_61
    :try_start_61
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    .end local p1    # "runnable":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TT;*>;"
    .end local p2    # "removing":Z
    throw v2
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_41

    .line 399
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    .restart local p1    # "runnable":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TT;*>;"
    .restart local p2    # "removing":Z
    :goto_65
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 400
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    .line 401
    throw v0

    .line 377
    :cond_6c
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_73

    :goto_72
    throw v0

    :goto_73
    goto :goto_72
.end method

.method protected final getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Lcom/google/android/exoplayer2/offline/FilterableManifest;
    .registers 5
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "removing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Z)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;>;"
    new-instance v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$1;-><init>(Lcom/google/android/exoplayer2/offline/SegmentDownloader;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->execute(Lcom/google/android/exoplayer2/util/RunnableFutureTask;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/FilterableManifest;

    return-object v0
.end method

.method protected abstract getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "TM;Z)",
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
.end method

.method public final remove()V
    .registers 8

    .line 309
    .local p0, "this":Lcom/google/android/exoplayer2/offline/SegmentDownloader;, "Lcom/google/android/exoplayer2/offline/SegmentDownloader<TM;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceForRemovingDownload()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    .line 311
    .local v0, "dataSource":Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    :try_start_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Lcom/google/android/exoplayer2/offline/FilterableManifest;

    move-result-object v1

    .line 312
    .local v1, "manifest":Lcom/google/android/exoplayer2/offline/FilterableManifest;, "TM;"
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v2

    .line 313
    .local v2, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 314
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v6, v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeResource(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_2b} :catch_40
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2b} :catch_31
    .catchall {:try_start_6 .. :try_end_2b} :catchall_2f

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .end local v1    # "manifest":Lcom/google/android/exoplayer2/offline/FilterableManifest;, "TM;"
    .end local v2    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    .end local v3    # "i":I
    :cond_2e
    goto :goto_32

    .line 322
    :catchall_2f
    move-exception v1

    goto :goto_4a

    .line 318
    :catch_31
    move-exception v1

    .line 322
    :goto_32
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeResource(Ljava/lang/String;)V

    .line 323
    goto :goto_49

    .line 316
    :catch_40
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_2f

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_32

    .line 324
    :goto_49
    return-void

    .line 322
    :goto_4a
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeResource(Ljava/lang/String;)V

    .line 323
    goto :goto_59

    :goto_58
    throw v1

    :goto_59
    goto :goto_58
.end method
