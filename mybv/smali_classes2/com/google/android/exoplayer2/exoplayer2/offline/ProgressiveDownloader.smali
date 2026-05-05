.class public final Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;
.super Ljava/lang/Object;
.source "ProgressiveDownloader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/Downloader;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cacheWriter:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private volatile downloadRunnable:Lcom/google/android/exoplayer2/util/RunnableFutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
            "Ljava/lang/Void;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile isCanceled:Z

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private progressListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;


# direct methods
.method public static synthetic $r8$lambda$jTR-yQ80tvqq1k5F55r6HxM2p9Y(Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;JJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->onProgress(JJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;)V
    .registers 4
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "cacheDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .registers 9
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "cacheDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->executor:Ljava/util/concurrent/Executor;

    .line 82
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    .line 87
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 89
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceForDownloading()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 91
    new-instance v2, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;)V

    .line 92
    .local v2, "progressListener":Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;
    new-instance v3, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;-><init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;[BLcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cacheWriter:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    .line 94
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->getUpstreamPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;)Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;

    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->cacheWriter:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    return-object v0
.end method

.method private onProgress(JJJ)V
    .registers 13
    .param p1, "contentLength"    # J
    .param p3, "bytesCached"    # J
    .param p5, "newBytesCached"    # J

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->progressListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

    if-nez v0, :cond_5

    .line 166
    return-void

    .line 169
    :cond_5
    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1b

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_12

    goto :goto_1b

    .line 171
    :cond_12
    long-to-float v1, p3

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    long-to-float v2, p1

    div-float/2addr v1, v2

    move v5, v1

    goto :goto_1f

    .line 170
    :cond_1b
    :goto_1b
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 171
    :goto_1f
    nop

    .line 172
    .local v5, "percentDownloaded":F
    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;->onProgress(JJF)V

    .line 173
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->isCanceled:Z

    .line 153
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->downloadRunnable:Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    .line 154
    .local v1, "downloadRunnable":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<Ljava/lang/Void;Ljava/io/IOException;>;"
    if-eqz v1, :cond_a

    .line 155
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancel(Z)Z

    .line 157
    :cond_a
    return-void
.end method

.method public download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    .registers 7
    .param p1, "progressListener"    # Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->progressListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v1, -0x3e8

    if-eqz v0, :cond_b

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    .line 105
    :cond_b
    const/4 v0, 0x0

    .line 106
    .local v0, "finished":Z
    :goto_c
    if-nez v0, :cond_5e

    :try_start_e
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->isCanceled:Z

    if-nez v2, :cond_5e

    .line 108
    new-instance v2, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$1;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$1;-><init>(Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->downloadRunnable:Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    .line 121
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v2, :cond_20

    .line 122
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 124
    :cond_20
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->downloadRunnable:Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_4a

    .line 126
    :try_start_27
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->downloadRunnable:Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->get()Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_27 .. :try_end_2c} :catch_2e
    .catchall {:try_start_27 .. :try_end_2c} :catchall_4a

    .line 127
    const/4 v0, 0x1

    .line 138
    :goto_2d
    goto :goto_c

    .line 128
    :catch_2e
    move-exception v2

    .line 129
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2f
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 130
    .local v3, "cause":Ljava/lang/Throwable;
    instance-of v4, v3, Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;

    if-eqz v4, :cond_3e

    goto :goto_2d

    .line 132
    :cond_3e
    instance-of v4, v3, Ljava/io/IOException;

    if-nez v4, :cond_46

    .line 136
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 133
    :cond_46
    move-object v4, v3

    check-cast v4, Ljava/io/IOException;

    .end local p1    # "progressListener":Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
    throw v4
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_4a

    .line 143
    .end local v0    # "finished":Z
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v3    # "cause":Ljava/lang/Throwable;
    .restart local p1    # "progressListener":Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
    :catchall_4a
    move-exception v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->downloadRunnable:Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 144
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v2, :cond_5d

    .line 145
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 147
    :cond_5d
    throw v0

    .line 143
    :cond_5e
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->downloadRunnable:Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_70

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 148
    :cond_70
    return-void
.end method

.method public remove()V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getCacheKeyFactory()Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeResource(Ljava/lang/String;)V

    .line 162
    return-void
.end method
