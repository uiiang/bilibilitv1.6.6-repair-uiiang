.class final Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalHandler"
.end annotation


# static fields
.field private static final UPDATE_PROGRESS_INTERVAL_MS:I = 0x1388


# instance fields
.field private activeDownloadTaskCount:I

.field private final activeTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/offline/DownloadManager$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

.field private final downloaderFactory:Lcom/google/android/exoplayer2/offline/DownloaderFactory;

.field private final downloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;"
        }
    .end annotation
.end field

.field private downloadsPaused:Z

.field private hasActiveRemoveTask:Z

.field private final mainHandler:Landroid/os/Handler;

.field private maxParallelDownloads:I

.field private minRetryCount:I

.field private notMetRequirements:I

.field public released:Z

.field private final thread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$OH12G4NteYquO91-EYFUVBFeiK8(Lcom/google/android/exoplayer2/offline/Download;Lcom/google/android/exoplayer2/offline/Download;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->compareStartTimes(Lcom/google/android/exoplayer2/offline/Download;Lcom/google/android/exoplayer2/offline/Download;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/HandlerThread;Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;Lcom/google/android/exoplayer2/offline/DownloaderFactory;Landroid/os/Handler;IIZ)V
    .registers 9
    .param p1, "thread"    # Landroid/os/HandlerThread;
    .param p2, "downloadIndex"    # Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;
    .param p3, "downloaderFactory"    # Lcom/google/android/exoplayer2/offline/DownloaderFactory;
    .param p4, "mainHandler"    # Landroid/os/Handler;
    .param p5, "maxParallelDownloads"    # I
    .param p6, "minRetryCount"    # I
    .param p7, "downloadsPaused"    # Z

    .line 710
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 711
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->thread:Landroid/os/HandlerThread;

    .line 712
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    .line 713
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloaderFactory:Lcom/google/android/exoplayer2/offline/DownloaderFactory;

    .line 714
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    .line 715
    iput p5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->maxParallelDownloads:I

    .line 716
    iput p6, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->minRetryCount:I

    .line 717
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadsPaused:Z

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 719
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    .line 720
    return-void
.end method

.method private addDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)V
    .registers 22
    .param p1, "request"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p2, "stopReason"    # I

    .line 880
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    iget-object v1, v12, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v14

    .line 881
    .local v14, "download":Lcom/google/android/exoplayer2/offline/Download;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 882
    .local v10, "nowMs":J
    if-eqz v14, :cond_1d

    .line 883
    invoke-static {v14, v12, v13, v10, v11}, Lcom/google/android/exoplayer2/offline/DownloadManager;->mergeRequest(Lcom/google/android/exoplayer2/offline/Download;Lcom/google/android/exoplayer2/offline/DownloadRequest;IJ)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/Download;

    move-wide/from16 v17, v10

    goto :goto_3a

    .line 885
    :cond_1d
    new-instance v15, Lcom/google/android/exoplayer2/offline/Download;

    .line 888
    if-eqz v13, :cond_23

    const/4 v3, 0x1

    goto :goto_25

    :cond_23
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_25
    const-wide/16 v8, -0x1

    const/16 v16, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide v4, v10

    move-wide v6, v10

    move-wide/from16 v17, v10

    .end local v10    # "nowMs":J
    .local v17, "nowMs":J
    move/from16 v10, p2

    move/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJII)V

    .line 885
    invoke-direct {v0, v15}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/Download;

    .line 895
    :goto_3a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    .line 896
    return-void
.end method

.method private canDownloadsRun()Z
    .registers 2

    .line 1204
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadsPaused:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->notMetRequirements:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static compareStartTimes(Lcom/google/android/exoplayer2/offline/Download;Lcom/google/android/exoplayer2/offline/Download;)I
    .registers 6
    .param p0, "first"    # Lcom/google/android/exoplayer2/offline/Download;
    .param p1, "second"    # Lcom/google/android/exoplayer2/offline/Download;

    .line 1283
    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->compareLong(JJ)I

    move-result v0

    return v0
.end method

.method private static copyDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;II)Lcom/google/android/exoplayer2/offline/Download;
    .registers 16
    .param p0, "download"    # Lcom/google/android/exoplayer2/offline/Download;
    .param p1, "state"    # I
    .param p2, "stopReason"    # I

    .line 1271
    new-instance v12, Lcom/google/android/exoplayer2/offline/Download;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    .line 1275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/exoplayer2/offline/Download;->contentLength:J

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    move-object v0, v12

    move v2, p1

    move v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILcom/google/android/exoplayer2/offline/DownloadProgress;)V

    .line 1271
    return-object v12
.end method

.method private getDownload(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/offline/Download;
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loadFromIndex"    # Z

    .line 1245
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownloadIndex(Ljava/lang/String;)I

    move-result v0

    .line 1246
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 1247
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/Download;

    return-object v1

    .line 1249
    :cond_10
    if-eqz p2, :cond_32

    .line 1251
    :try_start_12
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->getDownload(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_19

    return-object v1

    .line 1252
    :catch_19
    move-exception v1

    .line 1253
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadManager"

    invoke-static {v3, v2, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1256
    .end local v1    # "e":Ljava/io/IOException;
    :cond_32
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDownloadIndex(Ljava/lang/String;)I
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 1260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1261
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/Download;

    .line 1262
    .local v1, "download":Lcom/google/android/exoplayer2/offline/Download;
    iget-object v2, v1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1263
    return v0

    .line 1260
    .end local v1    # "download":Lcom/google/android/exoplayer2/offline/Download;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1266
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method private initialize(I)V
    .registers 9
    .param p1, "notMetRequirements"    # I

    .line 787
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->notMetRequirements:I

    .line 788
    const/4 v0, 0x0

    .line 790
    .local v0, "cursor":Lcom/google/android/exoplayer2/offline/DownloadCursor;
    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->setDownloadingStatesToQueued()V

    .line 791
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x7

    filled-new-array {v1, v3, v4, v5, v6}, [I

    move-result-object v3

    .line 792
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->getDownloads([I)Lcom/google/android/exoplayer2/offline/DownloadCursor;

    move-result-object v2

    move-object v0, v2

    .line 794
    :goto_18
    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 795
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getDownload()Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_27} :catch_2a
    .catchall {:try_start_4 .. :try_end_27} :catchall_28

    goto :goto_18

    .line 801
    :catchall_28
    move-exception v1

    goto :goto_4f

    .line 797
    :catch_2a
    move-exception v2

    .line 798
    .local v2, "e":Ljava/io/IOException;
    :try_start_2b
    const-string v3, "DownloadManager"

    const-string v4, "Failed to load index."

    invoke-static {v3, v4, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 799
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    .line 801
    .end local v2    # "e":Ljava/io/IOException;
    :cond_37
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 802
    nop

    .line 805
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 806
    .local v2, "downloadsForMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/Download;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 807
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    .line 808
    return-void

    .line 801
    .end local v2    # "downloadsForMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/Download;>;"
    :goto_4f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 802
    goto :goto_54

    :goto_53
    throw v1

    :goto_54
    goto :goto_53
.end method

.method private onContentLengthChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;J)V
    .registers 20
    .param p1, "task"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    .param p2, "contentLength"    # J

    .line 1074
    move-object/from16 v0, p0

    # getter for: Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v1

    iget-object v13, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 1075
    .local v13, "downloadId":Ljava/lang/String;
    nop

    .line 1076
    const/4 v1, 0x0

    invoke-direct {v0, v13, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/google/android/exoplayer2/offline/Download;

    .line 1077
    .local v14, "download":Lcom/google/android/exoplayer2/offline/Download;
    iget-wide v1, v14, Lcom/google/android/exoplayer2/offline/Download;->contentLength:J

    cmp-long v3, p2, v1

    if-eqz v3, :cond_3e

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_22

    goto :goto_3e

    .line 1080
    :cond_22
    new-instance v15, Lcom/google/android/exoplayer2/offline/Download;

    iget-object v2, v14, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget v3, v14, Lcom/google/android/exoplayer2/offline/Download;->state:I

    iget-wide v4, v14, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    .line 1085
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v10, v14, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    iget v11, v14, Lcom/google/android/exoplayer2/offline/Download;->failureReason:I

    iget-object v12, v14, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    move-object v1, v15

    move-wide/from16 v8, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILcom/google/android/exoplayer2/offline/DownloadProgress;)V

    .line 1080
    invoke-direct {v0, v15}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/Download;

    .line 1090
    return-void

    .line 1078
    :cond_3e
    :goto_3e
    return-void
.end method

.method private onDownloadTaskStopped(Lcom/google/android/exoplayer2/offline/Download;Ljava/lang/Exception;)V
    .registers 20
    .param p1, "download"    # Lcom/google/android/exoplayer2/offline/Download;
    .param p2, "finalException"    # Ljava/lang/Exception;

    .line 1137
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    new-instance v15, Lcom/google/android/exoplayer2/offline/Download;

    iget-object v4, v0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 1140
    if-nez v2, :cond_f

    const/4 v3, 0x3

    const/4 v5, 0x3

    goto :goto_11

    :cond_f
    const/4 v3, 0x4

    const/4 v5, 0x4

    :goto_11
    iget-wide v6, v0, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    .line 1142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/exoplayer2/offline/Download;->contentLength:J

    iget v12, v0, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    .line 1145
    const/4 v14, 0x0

    if-nez v2, :cond_20

    const/4 v13, 0x0

    goto :goto_22

    :cond_20
    const/4 v3, 0x1

    const/4 v13, 0x1

    :goto_22
    iget-object v3, v0, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    move-object/from16 v16, v3

    move-object v3, v15

    move-object/from16 v14, v16

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILcom/google/android/exoplayer2/offline/DownloadProgress;)V

    .line 1148
    .end local p1    # "download":Lcom/google/android/exoplayer2/offline/Download;
    .local v3, "download":Lcom/google/android/exoplayer2/offline/Download;
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    iget-object v4, v3, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownloadIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1151
    :try_start_39
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_3f

    .line 1154
    goto :goto_47

    .line 1152
    :catch_3f
    move-exception v0

    .line 1153
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "DownloadManager"

    const-string v5, "Failed to update index."

    invoke-static {v4, v5, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1155
    .end local v0    # "e":Ljava/io/IOException;
    :goto_47
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5, v4, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;-><init>(Lcom/google/android/exoplayer2/offline/Download;ZLjava/util/List;Ljava/lang/Exception;)V

    .line 1158
    .local v0, "update":Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;
    iget-object v4, v1, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1159
    return-void
.end method

.method private onRemoveTaskStopped(Lcom/google/android/exoplayer2/offline/Download;)V
    .registers 7
    .param p1, "download"    # Lcom/google/android/exoplayer2/offline/Download;

    .line 1162
    iget v0, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ne v0, v1, :cond_15

    .line 1164
    iget v0, p1, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    if-nez v0, :cond_b

    const/4 v2, 0x0

    :cond_b
    move v0, v2

    .line 1165
    .local v0, "state":I
    iget v1, p1, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;II)Lcom/google/android/exoplayer2/offline/Download;

    .line 1166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    .line 1167
    .end local v0    # "state":I
    goto :goto_4b

    .line 1168
    :cond_15
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownloadIndex(Ljava/lang/String;)I

    move-result v0

    .line 1169
    .local v0, "removeIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1171
    :try_start_22
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    iget-object v3, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->removeDownload(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_2c

    .line 1174
    goto :goto_34

    .line 1172
    :catch_2c
    move-exception v1

    .line 1173
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "Failed to remove from database"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    .end local v1    # "e":Ljava/io/IOException;
    :goto_34
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;-><init>(Lcom/google/android/exoplayer2/offline/Download;ZLjava/util/List;Ljava/lang/Exception;)V

    .line 1181
    .local v1, "update":Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1183
    .end local v0    # "removeIndex":I
    .end local v1    # "update":Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;
    :goto_4b
    return-void
.end method

.method private onTaskStopped(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .registers 8
    .param p1, "task"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 1093
    # getter for: Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 1094
    .local v0, "downloadId":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    # getter for: Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v1

    .line 1097
    .local v1, "isRemove":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 1098
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->hasActiveRemoveTask:Z

    goto :goto_22

    .line 1099
    :cond_15
    iget v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    if-nez v3, :cond_22

    .line 1100
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->removeMessages(I)V

    .line 1103
    :cond_22
    :goto_22
    # getter for: Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1104
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    .line 1105
    return-void

    .line 1108
    :cond_2c
    # getter for: Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->finalException:Ljava/lang/Exception;
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$400(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Ljava/lang/Exception;

    move-result-object v3

    .line 1109
    .local v3, "finalException":Ljava/lang/Exception;
    if-eqz v3, :cond_58

    .line 1110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DownloadManager"

    invoke-static {v5, v4, v3}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1113
    :cond_58
    nop

    .line 1114
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/Download;

    .line 1115
    .local v2, "download":Lcom/google/android/exoplayer2/offline/Download;
    iget v4, v2, Lcom/google/android/exoplayer2/offline/Download;->state:I

    sparse-switch v4, :sswitch_data_82

    .line 1130
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 1122
    :sswitch_6e
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1123
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->onRemoveTaskStopped(Lcom/google/android/exoplayer2/offline/Download;)V

    .line 1124
    goto :goto_7e

    .line 1117
    :sswitch_75
    xor-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1118
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->onDownloadTaskStopped(Lcom/google/android/exoplayer2/offline/Download;Ljava/lang/Exception;)V

    .line 1119
    nop

    .line 1133
    :goto_7e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    .line 1134
    return-void

    :sswitch_data_82
    .sparse-switch
        0x2 -> :sswitch_75
        0x5 -> :sswitch_6e
        0x7 -> :sswitch_6e
    .end sparse-switch
.end method

.method private putDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/Download;
    .registers 10
    .param p1, "download"    # Lcom/google/android/exoplayer2/offline/Download;

    .line 1216
    iget v0, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_e

    iget v0, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1217
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownloadIndex(Ljava/lang/String;)I

    move-result v0

    .line 1218
    .local v0, "changedIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2d

    .line 1219
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_51

    .line 1222
    :cond_2d
    iget-wide v4, p1, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/Download;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    move v1, v2

    .line 1223
    .local v1, "needsSort":Z
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1224
    if-eqz v1, :cond_51

    .line 1225
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1229
    .end local v1    # "needsSort":Z
    :cond_51
    :goto_51
    :try_start_51
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_57

    .line 1232
    goto :goto_5f

    .line 1230
    :catch_57
    move-exception v1

    .line 1231
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "DownloadManager"

    const-string v4, "Failed to update index."

    invoke-static {v2, v4, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1233
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5f
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    invoke-direct {v1, p1, v3, v2, v4}, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;-><init>(Lcom/google/android/exoplayer2/offline/Download;ZLjava/util/List;Ljava/lang/Exception;)V

    .line 1239
    .local v1, "update":Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1240
    return-object p1
.end method

.method private putDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;II)Lcom/google/android/exoplayer2/offline/Download;
    .registers 5
    .param p1, "download"    # Lcom/google/android/exoplayer2/offline/Download;
    .param p2, "state"    # I
    .param p3, "stopReason"    # I

    .line 1210
    const/4 v0, 0x3

    if-eq p2, v0, :cond_8

    const/4 v0, 0x4

    if-eq p2, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1211
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->copyDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;II)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    return-object v0
.end method

.method private release()V
    .registers 5

    .line 941
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 942
    .local v1, "task":Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancel(Z)V

    .line 943
    .end local v1    # "task":Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    goto :goto_a

    .line 945
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->setDownloadingStatesToQueued()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_21

    .line 948
    goto :goto_29

    .line 946
    :catch_21
    move-exception v0

    .line 947
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DownloadManager"

    const-string v3, "Failed to update index."

    invoke-static {v1, v3, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 949
    .end local v0    # "e":Ljava/io/IOException;
    :goto_29
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 950
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 951
    monitor-enter p0

    .line 952
    :try_start_34
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->released:Z

    .line 953
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 954
    monitor-exit p0

    .line 955
    return-void

    .line 954
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3b

    goto :goto_3f

    :goto_3e
    throw v0

    :goto_3f
    goto :goto_3e
.end method

.method private removeAllDownloads()V
    .registers 8

    .line 909
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v1, "terminalDownloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    :try_start_7
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    const/4 v3, 0x3

    const/4 v4, 0x4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->getDownloads([I)Lcom/google/android/exoplayer2/offline/DownloadCursor;

    move-result-object v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_33

    .line 911
    .local v2, "cursor":Lcom/google/android/exoplayer2/offline/DownloadCursor;
    :goto_13
    :try_start_13
    invoke-interface {v2}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 912
    invoke-interface {v2}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getDownload()Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_27

    goto :goto_13

    .line 914
    :cond_21
    if-eqz v2, :cond_26

    :try_start_23
    invoke-interface {v2}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_33

    .line 916
    .end local v2    # "cursor":Lcom/google/android/exoplayer2/offline/DownloadCursor;
    :cond_26
    goto :goto_39

    .line 910
    .restart local v2    # "cursor":Lcom/google/android/exoplayer2/offline/DownloadCursor;
    :catchall_27
    move-exception v3

    if-eqz v2, :cond_32

    :try_start_2a
    invoke-interface {v2}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v4

    :try_start_2f
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "terminalDownloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    :cond_32
    :goto_32
    throw v3
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_33

    .line 914
    .end local v2    # "cursor":Lcom/google/android/exoplayer2/offline/DownloadCursor;
    .restart local v1    # "terminalDownloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    :catch_33
    move-exception v2

    .line 915
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Failed to load downloads."

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    .end local v2    # "e":Ljava/io/IOException;
    :goto_39
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ge v2, v3, :cond_56

    .line 918
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/offline/Download;

    invoke-static {v6, v4, v5}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->copyDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;II)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 917
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 920
    .end local v2    # "i":I
    :cond_56
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6f

    .line 921
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 922
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/offline/Download;

    invoke-static {v6, v4, v5}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->copyDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;II)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v6

    .line 921
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 924
    .end local v2    # "i":I
    :cond_6f
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 926
    :try_start_79
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->setStatesToRemoving()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7e} :catch_7f

    .line 929
    goto :goto_85

    .line 927
    :catch_7f
    move-exception v2

    .line 928
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Failed to update index."

    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 930
    .end local v2    # "e":Ljava/io/IOException;
    :goto_85
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 931
    .local v0, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/Download;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8d
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b0

    .line 932
    new-instance v3, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 934
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/offline/Download;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;-><init>(Lcom/google/android/exoplayer2/offline/Download;ZLjava/util/List;Ljava/lang/Exception;)V

    .line 935
    .local v3, "update":Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 931
    .end local v3    # "update":Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 937
    .end local v2    # "i":I
    :cond_b0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    .line 938
    return-void
.end method

.method private removeDownload(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 899
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    .line 900
    .local v0, "download":Lcom/google/android/exoplayer2/offline/Download;
    if-nez v0, :cond_20

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove nonexistent download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadManager"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void

    .line 904
    :cond_20
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;II)Lcom/google/android/exoplayer2/offline/Download;

    .line 905
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    .line 906
    return-void
.end method

.method private setDownloadsPaused(Z)V
    .registers 2
    .param p1, "downloadsPaused"    # Z

    .line 811
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadsPaused:Z

    .line 812
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    .line 813
    return-void
.end method

.method private setMaxParallelDownloads(I)V
    .registers 2
    .param p1, "maxParallelDownloads"    # I

    .line 871
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->maxParallelDownloads:I

    .line 872
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    .line 873
    return-void
.end method

.method private setMinRetryCount(I)V
    .registers 2
    .param p1, "minRetryCount"    # I

    .line 876
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->minRetryCount:I

    .line 877
    return-void
.end method

.method private setNotMetRequirements(I)V
    .registers 2
    .param p1, "notMetRequirements"    # I

    .line 816
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->notMetRequirements:I

    .line 817
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    .line 818
    return-void
.end method

.method private setStopReason(Lcom/google/android/exoplayer2/offline/Download;I)V
    .registers 20
    .param p1, "download"    # Lcom/google/android/exoplayer2/offline/Download;
    .param p2, "stopReason"    # I

    .line 848
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p2

    if-nez v14, :cond_12

    .line 849
    iget v2, v1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40

    .line 850
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;II)Lcom/google/android/exoplayer2/offline/Download;

    goto :goto_40

    .line 852
    :cond_12
    iget v2, v1, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    if-eq v14, v2, :cond_40

    .line 853
    iget v2, v1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    .line 854
    .local v2, "state":I
    if-eqz v2, :cond_20

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    goto :goto_20

    :cond_1e
    move v15, v2

    goto :goto_22

    .line 855
    :cond_20
    :goto_20
    const/4 v2, 0x1

    move v15, v2

    .line 857
    .end local v2    # "state":I
    .local v15, "state":I
    :goto_22
    new-instance v13, Lcom/google/android/exoplayer2/offline/Download;

    iget-object v3, v1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    .line 862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/google/android/exoplayer2/offline/Download;->contentLength:J

    const/4 v12, 0x0

    iget-object v11, v1, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    move-object v2, v13

    move v4, v15

    move-object/from16 v16, v11

    move/from16 v11, p2

    move-object v1, v13

    move-object/from16 v13, v16

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILcom/google/android/exoplayer2/offline/DownloadProgress;)V

    .line 857
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/Download;

    .line 868
    .end local v15    # "state":I
    :cond_40
    :goto_40
    return-void
.end method

.method private setStopReason(Ljava/lang/String;I)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "stopReason"    # I

    .line 821
    const-string v0, "DownloadManager"

    if-nez p1, :cond_28

    .line 822
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 823
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/Download;

    invoke-direct {p0, v2, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setStopReason(Lcom/google/android/exoplayer2/offline/Download;I)V

    .line 822
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 827
    .end local v1    # "i":I
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v1, p2}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->setStopReason(I)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_27

    .line 828
    :catch_21
    move-exception v1

    .line 829
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to set manual stop reason"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 830
    .end local v1    # "e":Ljava/io/IOException;
    :goto_27
    goto :goto_50

    .line 832
    :cond_28
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v1

    .line 833
    .local v1, "download":Lcom/google/android/exoplayer2/offline/Download;
    if-eqz v1, :cond_33

    .line 834
    invoke-direct {p0, v1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setStopReason(Lcom/google/android/exoplayer2/offline/Download;I)V

    goto :goto_50

    .line 838
    :cond_33
    :try_start_33
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->setStopReason(Ljava/lang/String;I)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_39

    .line 841
    goto :goto_50

    .line 839
    :catch_39
    move-exception v2

    .line 840
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set manual stop reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 844
    .end local v1    # "download":Lcom/google/android/exoplayer2/offline/Download;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_50
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncTasks()V

    .line 845
    return-void
.end method

.method private syncDownloadingDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Lcom/google/android/exoplayer2/offline/Download;I)V
    .registers 5
    .param p1, "activeTask"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    .param p2, "download"    # Lcom/google/android/exoplayer2/offline/Download;
    .param p3, "accumulatingDownloadTaskCount"    # I

    .line 1034
    # getter for: Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1035
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->canDownloadsRun()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->maxParallelDownloads:I

    if-lt p3, v0, :cond_1a

    .line 1036
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;II)Lcom/google/android/exoplayer2/offline/Download;

    .line 1037
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancel(Z)V

    .line 1039
    :cond_1a
    return-void
.end method

.method private syncQueuedDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    .registers 13
    .param p1, "activeTask"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    .param p2, "download"    # Lcom/google/android/exoplayer2/offline/Download;

    .line 1001
    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 1004
    # getter for: Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1005
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancel(Z)V

    .line 1006
    return-object p1

    .line 1009
    :cond_10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->canDownloadsRun()Z

    move-result v1

    if-eqz v1, :cond_57

    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->maxParallelDownloads:I

    if-lt v1, v2, :cond_1d

    goto :goto_57

    .line 1014
    :cond_1d
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->putDownloadWithState(Lcom/google/android/exoplayer2/offline/Download;II)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object p2

    .line 1015
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloaderFactory:Lcom/google/android/exoplayer2/offline/DownloaderFactory;

    iget-object v1, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloaderFactory;->createDownloader(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Lcom/google/android/exoplayer2/offline/Downloader;

    move-result-object v0

    .line 1016
    .local v0, "downloader":Lcom/google/android/exoplayer2/offline/Downloader;
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    iget-object v3, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v5, p2, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->minRetryCount:I

    const/4 v9, 0x0

    move-object v2, v1

    move-object v4, v0

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;Lcom/google/android/exoplayer2/offline/DownloadManager$1;)V

    move-object p1, v1

    .line 1024
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    if-nez v1, :cond_53

    .line 1026
    const/16 v1, 0xb

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1028
    :cond_53
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->start()V

    .line 1029
    return-object p1

    .line 1010
    .end local v0    # "downloader":Lcom/google/android/exoplayer2/offline/Downloader;
    :cond_57
    :goto_57
    const/4 v0, 0x0

    return-object v0
.end method

.method private syncRemovingDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Lcom/google/android/exoplayer2/offline/Download;)V
    .registers 13
    .param p1, "activeTask"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    .param p2, "download"    # Lcom/google/android/exoplayer2/offline/Download;

    .line 1042
    if-eqz p1, :cond_d

    .line 1043
    # getter for: Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1045
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancel(Z)V

    .line 1049
    :cond_c
    return-void

    .line 1052
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->hasActiveRemoveTask:Z

    if-eqz v0, :cond_12

    .line 1053
    return-void

    .line 1057
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloaderFactory:Lcom/google/android/exoplayer2/offline/DownloaderFactory;

    iget-object v1, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloaderFactory;->createDownloader(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Lcom/google/android/exoplayer2/offline/Downloader;

    move-result-object v0

    .line 1058
    .local v0, "downloader":Lcom/google/android/exoplayer2/offline/Downloader;
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    iget-object v3, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v5, p2, Lcom/google/android/exoplayer2/offline/Download;->progress:Lcom/google/android/exoplayer2/offline/DownloadProgress;

    const/4 v6, 0x1

    iget v7, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->minRetryCount:I

    const/4 v9, 0x0

    move-object v2, v1

    move-object v4, v0

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/Downloader;Lcom/google/android/exoplayer2/offline/DownloadProgress;ZILcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;Lcom/google/android/exoplayer2/offline/DownloadManager$1;)V

    move-object p1, v1

    .line 1066
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->hasActiveRemoveTask:Z

    .line 1068
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->start()V

    .line 1069
    return-void
.end method

.method private syncStoppedDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .registers 3
    .param p1, "activeTask"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 991
    if-eqz p1, :cond_f

    .line 993
    # getter for: Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 994
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancel(Z)V

    .line 996
    :cond_f
    return-void
.end method

.method private syncTasks()V
    .registers 6

    .line 960
    const/4 v0, 0x0

    .line 961
    .local v0, "accumulatingDownloadTaskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 962
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/Download;

    .line 963
    .local v2, "download":Lcom/google/android/exoplayer2/offline/Download;
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 964
    .local v3, "activeTask":Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    iget v4, v2, Lcom/google/android/exoplayer2/offline/Download;->state:I

    packed-switch v4, :pswitch_data_4c

    .line 982
    :pswitch_23
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 977
    :pswitch_29
    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncRemovingDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Lcom/google/android/exoplayer2/offline/Download;)V

    .line 978
    goto :goto_3d

    .line 972
    :pswitch_2d
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-direct {p0, v3, v2, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncDownloadingDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Lcom/google/android/exoplayer2/offline/Download;I)V

    .line 974
    goto :goto_3d

    .line 966
    :pswitch_34
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncStoppedDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    .line 967
    goto :goto_3d

    .line 969
    :pswitch_38
    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->syncQueuedDownload(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Lcom/google/android/exoplayer2/offline/Download;)Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    move-result-object v3

    .line 970
    nop

    .line 984
    :goto_3d
    if-eqz v3, :cond_47

    # getter for: Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z
    invoke-static {v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 985
    add-int/lit8 v0, v0, 0x1

    .line 961
    .end local v2    # "download":Lcom/google/android/exoplayer2/offline/Download;
    .end local v3    # "activeTask":Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 988
    .end local v1    # "i":I
    :cond_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_38
        :pswitch_34
        :pswitch_2d
        :pswitch_23
        :pswitch_23
        :pswitch_29
        :pswitch_23
        :pswitch_29
    .end packed-switch
.end method

.method private updateProgress()V
    .registers 6

    .line 1188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1189
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/Download;

    .line 1190
    .local v1, "download":Lcom/google/android/exoplayer2/offline/Download;
    iget v2, v1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    .line 1192
    :try_start_16
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->putDownload(Lcom/google/android/exoplayer2/offline/Download;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 1195
    goto :goto_24

    .line 1193
    :catch_1c
    move-exception v2

    .line 1194
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "Failed to update index."

    invoke-static {v3, v4, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1188
    .end local v1    # "download":Lcom/google/android/exoplayer2/offline/Download;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1198
    .end local v0    # "i":I
    :cond_27
    const/16 v0, 0xb

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1199
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 724
    const/4 v0, 0x1

    .line 725
    .local v0, "processedExternalMessage":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_82

    .line 779
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 776
    :pswitch_d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->release()V

    .line 777
    return-void

    .line 773
    :pswitch_11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->updateProgress()V

    .line 774
    return-void

    .line 769
    :pswitch_15
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 770
    .local v1, "task":Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->toLong(II)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->onContentLengthChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;J)V

    .line 771
    return-void

    .line 764
    .end local v1    # "task":Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    :pswitch_25
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    .line 765
    .restart local v1    # "task":Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->onTaskStopped(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    .line 766
    const/4 v0, 0x0

    .line 767
    goto :goto_71

    .line 761
    .end local v1    # "task":Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    :pswitch_2e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->removeAllDownloads()V

    .line 762
    goto :goto_71

    .line 757
    :pswitch_32
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 758
    .local v1, "id":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->removeDownload(Ljava/lang/String;)V

    .line 759
    goto :goto_71

    .line 752
    .end local v1    # "id":Ljava/lang/String;
    :pswitch_3a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 753
    .local v1, "request":Lcom/google/android/exoplayer2/offline/DownloadRequest;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 754
    .local v3, "stopReason":I
    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->addDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)V

    .line 755
    goto :goto_71

    .line 748
    .end local v1    # "request":Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .end local v3    # "stopReason":I
    :pswitch_44
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 749
    .local v1, "minRetryCount":I
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setMinRetryCount(I)V

    .line 750
    goto :goto_71

    .line 744
    .end local v1    # "minRetryCount":I
    :pswitch_4a
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 745
    .local v1, "maxParallelDownloads":I
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setMaxParallelDownloads(I)V

    .line 746
    goto :goto_71

    .line 739
    .end local v1    # "maxParallelDownloads":I
    :pswitch_50
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 740
    .local v1, "id":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 741
    .restart local v3    # "stopReason":I
    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setStopReason(Ljava/lang/String;I)V

    .line 742
    goto :goto_71

    .line 735
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "stopReason":I
    :pswitch_5a
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 736
    .local v1, "notMetRequirements":I
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setNotMetRequirements(I)V

    .line 737
    goto :goto_71

    .line 731
    .end local v1    # "notMetRequirements":I
    :pswitch_60
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_66

    const/4 v1, 0x1

    goto :goto_67

    :cond_66
    const/4 v1, 0x0

    .line 732
    .local v1, "downloadsPaused":Z
    :goto_67
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->setDownloadsPaused(Z)V

    .line 733
    goto :goto_71

    .line 727
    .end local v1    # "downloadsPaused":Z
    :pswitch_6b
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 728
    .local v1, "notMetRequirements":I
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->initialize(I)V

    .line 729
    nop

    .line 781
    .end local v1    # "notMetRequirements":I
    :goto_71
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    .line 782
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 783
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 784
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_60
        :pswitch_5a
        :pswitch_50
        :pswitch_4a
        :pswitch_44
        :pswitch_3a
        :pswitch_32
        :pswitch_2e
        :pswitch_25
        :pswitch_15
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method
