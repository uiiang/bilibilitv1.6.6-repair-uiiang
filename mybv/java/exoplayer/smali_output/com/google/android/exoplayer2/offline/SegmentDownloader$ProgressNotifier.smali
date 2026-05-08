.class final Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProgressNotifier"
.end annotation


# instance fields
.field private bytesDownloaded:J

.field private final contentLength:J

.field private final progressListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

.field private segmentsDownloaded:I

.field private final totalSegments:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;JIJI)V
    .registers 8
    .param p1, "progressListener"    # Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
    .param p2, "contentLength"    # J
    .param p4, "totalSegments"    # I
    .param p5, "bytesDownloaded"    # J
    .param p7, "segmentsDownloaded"    # I

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->progressListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

    .line 539
    iput-wide p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    .line 540
    iput p4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->totalSegments:I

    .line 541
    iput-wide p5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    .line 542
    iput p7, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    .line 543
    return-void
.end method

.method private getPercentDownloaded()F
    .registers 7

    .line 557
    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    const-wide/16 v2, -0x1

    const/high16 v4, 0x42c80000    # 100.0f

    cmp-long v5, v0, v2

    if-eqz v5, :cond_18

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_18

    .line 558
    iget-wide v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    long-to-float v2, v2

    mul-float v2, v2, v4

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2

    .line 559
    :cond_18
    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->totalSegments:I

    if-eqz v0, :cond_24

    .line 560
    iget v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    int-to-float v1, v1

    mul-float v1, v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    .line 562
    :cond_24
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method


# virtual methods
.method public onProgress(JJJ)V
    .registers 15
    .param p1, "requestLength"    # J
    .param p3, "bytesCached"    # J
    .param p5, "newBytesCached"    # J

    .line 547
    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    add-long v5, v0, p5

    iput-wide v5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    .line 548
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->progressListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->getPercentDownloaded()F

    move-result v7

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;->onProgress(JJF)V

    .line 549
    return-void
.end method

.method public onSegmentDownloaded()V
    .registers 8

    .line 552
    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    .line 553
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->progressListener:Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;->getPercentDownloaded()F

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;->onProgress(JJF)V

    .line 554
    return-void
.end method
