.class Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
.super Ljava/lang/Thread;
.source "DownloadManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field private contentLength:J

.field private final downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

.field private final downloader:Lcom/google/android/exoplayer2/offline/Downloader;

.field private finalException:Ljava/lang/Exception;

.field private volatile internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

.field private volatile isCanceled:Z

.field private final isRemove:Z

.field private final minRetryCount:I

.field private final request:Lcom/google/android/exoplayer2/offline/DownloadRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;)V
    .registers 9
    .param p1, "request"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p2, "downloader"    # Lcom/google/android/exoplayer2/offline/Downloader;
    .param p3, "downloadProgress"    # Lcom/google/android/exoplayer2/offline/DownloadProgress;
    .param p4, "isRemove"    # Z
    .param p5, "minRetryCount"    # I
    .param p6, "internalHandler"    # Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 1307
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1308
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 1309
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    .line 1310
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    .line 1311
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z

    .line 1312
    iput p5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->minRetryCount:I

    .line 1313
    iput-object p6, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 1314
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    .line 1315
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;Lcom/google/android/exoplayer2/offline/DownloadManager$1;)V
    .registers 8
    .param p1, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/offline/Downloader;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/offline/DownloadProgress;
    .param p4, "x3"    # Z
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;
    .param p7, "x6"    # Lcom/google/android/exoplayer2/offline/DownloadManager$1;

    .line 1287
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 1287
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 1287
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 1287
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Ljava/lang/Exception;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 1287
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->finalException:Ljava/lang/Exception;

    return-object v0
.end method

.method private static getRetryDelayMillis(I)I
    .registers 3
    .param p0, "errorCount"    # I

    .line 1393
    add-int/lit8 v0, p0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel(Z)V
    .registers 3
    .param p1, "released"    # Z

    .line 1319
    if-eqz p1, :cond_5

    .line 1324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 1326
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    if-nez v0, :cond_14

    .line 1327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    .line 1328
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/Downloader;->cancel()V

    .line 1329
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->interrupt()V

    .line 1331
    :cond_14
    return-void
.end method

.method public onProgress(JJF)V
    .registers 10
    .param p1, "contentLength"    # J
    .param p3, "bytesDownloaded"    # J
    .param p5, "percentDownloaded"    # F

    .line 1375
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    iput-wide p3, v0, Lcom/google/android/exoplayer2/offline/DownloadProgress;->bytesDownloaded:J

    .line 1376
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    iput p5, v0, Lcom/google/android/exoplayer2/offline/DownloadProgress;->percentDownloaded:F

    .line 1377
    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_23

    .line 1378
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    .line 1379
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 1380
    .local v0, "internalHandler":Landroid/os/Handler;
    if-eqz v0, :cond_23

    .line 1381
    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v2, v1

    long-to-int v1, p1

    .line 1382
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1387
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1390
    .end local v0    # "internalHandler":Landroid/os/Handler;
    :cond_23
    return-void
.end method

.method public run()V
    .registers 9

    .line 1338
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z

    if-eqz v0, :cond_a

    .line 1339
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/Downloader;->remove()V

    goto :goto_43

    .line 1341
    :cond_a
    const/4 v0, 0x0

    .line 1342
    .local v0, "errorCount":I
    const-wide/16 v1, -0x1

    .line 1343
    .local v1, "errorPosition":J
    :goto_d
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_f} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_37

    if-nez v3, :cond_43

    .line 1345
    :try_start_11
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v3, p0}, Lcom/google/android/exoplayer2/offline/Downloader;->download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_37

    .line 1346
    goto :goto_43

    .line 1347
    :catch_17
    move-exception v3

    .line 1348
    .local v3, "e":Ljava/io/IOException;
    :try_start_18
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    if-nez v4, :cond_36

    .line 1349
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/offline/DownloadProgress;->bytesDownloaded:J

    .line 1350
    .local v4, "bytesDownloaded":J
    cmp-long v6, v4, v1

    if-eqz v6, :cond_26

    .line 1351
    move-wide v1, v4

    .line 1352
    const/4 v0, 0x0

    .line 1354
    :cond_26
    add-int/lit8 v0, v0, 0x1

    iget v6, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->minRetryCount:I

    if-gt v0, v6, :cond_35

    .line 1357
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getRetryDelayMillis(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_36

    .line 1355
    :cond_35
    throw v3
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_36} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_36} :catch_37

    .line 1359
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "bytesDownloaded":J
    :cond_36
    :goto_36
    goto :goto_d

    .line 1364
    .end local v0    # "errorCount":I
    .end local v1    # "errorPosition":J
    :catch_37
    move-exception v0

    .line 1365
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->finalException:Ljava/lang/Exception;

    goto :goto_44

    .line 1362
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3b
    move-exception v0

    .line 1363
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1366
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_43
    :goto_43
    nop

    .line 1367
    :goto_44
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 1368
    .local v0, "internalHandler":Landroid/os/Handler;
    if-eqz v0, :cond_51

    .line 1369
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1371
    :cond_51
    return-void
.end method
