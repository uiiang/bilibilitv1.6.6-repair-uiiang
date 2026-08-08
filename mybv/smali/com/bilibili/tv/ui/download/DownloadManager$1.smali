.class Lcom/bilibili/tv/ui/download/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/download/DownloadManager;->startDownload(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManager;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/DownloadManager$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 3

    .prologue
    .line 496
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 500
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setProgress(I)V

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setEndTime(J)V

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 503
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->access$000(Lcom/bilibili/tv/ui/download/DownloadManager;)Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)I

    .line 506
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->access$200(Lcom/bilibili/tv/ui/download/DownloadManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadManager;->notifyStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/download/DownloadManager;->access$300(Lcom/bilibili/tv/ui/download/DownloadManager;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 512
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadManager;->scheduleNextTask()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->access$400(Lcom/bilibili/tv/ui/download/DownloadManager;)V

    .line 513
    return-void
.end method

.method public onError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 517
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u9519\u8bef: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->FAILED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 521
    invoke-virtual {p1, p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setErrorCode(I)V

    .line 522
    invoke-virtual {p1, p3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setErrorMessage(Ljava/lang/String;)V

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setEndTime(J)V

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 525
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->access$000(Lcom/bilibili/tv/ui/download/DownloadManager;)Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->setError(Ljava/lang/String;ILjava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->access$200(Lcom/bilibili/tv/ui/download/DownloadManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadManager;->notifyError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/download/DownloadManager;->access$500(Lcom/bilibili/tv/ui/download/DownloadManager;Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadManager;->scheduleNextTask()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->access$400(Lcom/bilibili/tv/ui/download/DownloadManager;)V

    .line 535
    return-void
.end method

.method public onProgress(Lcom/bilibili/tv/ui/download/model/DownloadTask;JIJ)V
    .locals 7

    .prologue
    .line 482
    invoke-virtual {p1, p2, p3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDownloadedSize(J)V

    .line 483
    invoke-virtual {p1, p4}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setProgress(I)V

    .line 484
    invoke-virtual {p1, p5, p6}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setSpeed(J)V

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 488
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->access$000(Lcom/bilibili/tv/ui/download/DownloadManager;)Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->updateProgress(Ljava/lang/String;JIJ)I

    .line 491
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager$1;->this$0:Lcom/bilibili/tv/ui/download/DownloadManager;

    # invokes: Lcom/bilibili/tv/ui/download/DownloadManager;->notifyProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/download/DownloadManager;->access$100(Lcom/bilibili/tv/ui/download/DownloadManager;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 492
    return-void
.end method
