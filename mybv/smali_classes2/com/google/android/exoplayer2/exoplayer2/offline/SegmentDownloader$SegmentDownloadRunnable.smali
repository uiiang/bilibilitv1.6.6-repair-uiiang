.class final Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;
.super Lcom/google/android/exoplayer2/util/RunnableFutureTask;
.source "SegmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SegmentDownloadRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheWriter:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

.field public final dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private final progressNotifier:Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;

.field public final segment:Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

.field public final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;[B)V
    .registers 7
    .param p1, "segment"    # Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .param p3, "progressNotifier"    # Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;
    .param p4, "temporaryBuffer"    # [B

    .line 498
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    .line 500
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 501
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->progressNotifier:Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;

    .line 502
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    .line 503
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    iget-object v1, p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, p2, v1, p4, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;-><init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;[BLcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    .line 505
    return-void
.end method


# virtual methods
.method protected cancelWork()V
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cancel()V

    .line 519
    return-void
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->doWork()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doWork()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache()V

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->progressNotifier:Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;

    if-eqz v0, :cond_c

    .line 511
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->onSegmentDownloaded()V

    .line 513
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method
