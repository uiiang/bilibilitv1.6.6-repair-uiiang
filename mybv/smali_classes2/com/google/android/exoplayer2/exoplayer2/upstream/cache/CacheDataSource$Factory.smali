.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private cacheIsReadOnly:Z

.field private cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

.field private cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

.field private eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

.field private flags:I

.field private upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private upstreamPriority:I

.field private upstreamPriorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 85
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->DEFAULT:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 86
    return-void
.end method

.method private createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/DataSource;II)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .registers 19
    .param p1, "upstreamDataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "flags"    # I
    .param p3, "upstreamPriority"    # I

    .line 305
    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 307
    .local v1, "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cacheIsReadOnly:Z

    if-nez v2, :cond_29

    if-nez p1, :cond_10

    goto :goto_29

    .line 309
    :cond_10
    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    if-eqz v2, :cond_1a

    .line 310
    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/DataSink$Factory;->createDataSink()Lcom/google/android/exoplayer2/upstream/DataSink;

    move-result-object v2

    move-object v13, v2

    .local v2, "cacheWriteDataSink":Lcom/google/android/exoplayer2/upstream/DataSink;
    goto :goto_2b

    .line 312
    .end local v2    # "cacheWriteDataSink":Lcom/google/android/exoplayer2/upstream/DataSink;
    :cond_1a
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;->createDataSink()Lcom/google/android/exoplayer2/upstream/DataSink;

    move-result-object v2

    move-object v13, v2

    .restart local v2    # "cacheWriteDataSink":Lcom/google/android/exoplayer2/upstream/DataSink;
    goto :goto_2b

    .line 308
    .end local v2    # "cacheWriteDataSink":Lcom/google/android/exoplayer2/upstream/DataSink;
    :cond_29
    :goto_29
    const/4 v2, 0x0

    move-object v13, v2

    .line 314
    .local v13, "cacheWriteDataSink":Lcom/google/android/exoplayer2/upstream/DataSink;
    :goto_2b
    new-instance v14, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 317
    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v5

    iget-object v7, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    iget-object v9, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->upstreamPriorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget-object v11, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    const/4 v12, 0x0

    move-object v2, v14

    move-object v3, v1

    move-object/from16 v4, p1

    move-object v6, v13

    move/from16 v8, p2

    move/from16 v10, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$1;)V

    .line 314
    return-object v14
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 2

    .line 70
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .registers 4

    .line 260
    nop

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->flags:I

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->upstreamPriority:I

    .line 260
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/DataSource;II)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSourceForDownloading()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .registers 4

    .line 278
    nop

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->flags:I

    or-int/lit8 v1, v1, 0x1

    .line 278
    const/16 v2, -0x3e8

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/DataSource;II)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSourceForRemovingDownload()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .registers 4

    .line 299
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->flags:I

    or-int/lit8 v0, v0, 0x1

    const/16 v1, -0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/DataSource;II)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object v0
.end method

.method public getCacheKeyFactory()Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    return-object v0
.end method

.method public getUpstreamPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->upstreamPriorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object v0
.end method

.method public setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .registers 2
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 98
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 99
    return-object p0
.end method

.method public setCacheKeyFactory(Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .registers 2
    .param p1, "cacheKeyFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 154
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 155
    return-object p0
.end method

.method public setCacheReadDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .registers 2
    .param p1, "cacheReadDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 122
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 123
    return-object p0
.end method

.method public setCacheWriteDataSinkFactory(Lcom/google/android/exoplayer2/upstream/DataSink$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .registers 3
    .param p1, "cacheWriteDataSinkFactory"    # Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    .line 139
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    .line 140
    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->cacheIsReadOnly:Z

    .line 141
    return-object p0
.end method

.method public setEventListener(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .registers 2
    .param p1, "eventListener"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    .line 254
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    .line 255
    return-object p0
.end method

.method public setFlags(I)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .registers 2
    .param p1, "flags"    # I

    .line 240
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->flags:I

    .line 241
    return-object p0
.end method

.method public setUpstreamDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .registers 2
    .param p1, "upstreamDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 177
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 178
    return-object p0
.end method

.method public setUpstreamPriority(I)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .registers 2
    .param p1, "upstreamPriority"    # I

    .line 226
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->upstreamPriority:I

    .line 227
    return-object p0
.end method

.method public setUpstreamPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .registers 2
    .param p1, "upstreamPriorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 202
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->upstreamPriorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 203
    return-object p0
.end method
