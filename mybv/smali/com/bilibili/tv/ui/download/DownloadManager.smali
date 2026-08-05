.class public Lcom/bilibili/tv/ui/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;
    }
.end annotation


# static fields
.field private static final MAX_CONCURRENT_DOWNLOADS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DownloadManager"

.field private static instance:Lcom/bilibili/tv/ui/download/DownloadManager;


# instance fields
.field private activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bilibili/tv/ui/download/DownloadWorker;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

.field private downloadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mainHandler:Landroid/os/Handler;

.field private progressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private waitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->context:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    .line 63
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->waitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->progressListeners:Ljava/util/List;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->mainHandler:Landroid/os/Handler;

    .line 70
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->restoreUnfinishedTasks()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/DownloadManager;)Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/download/DownloadManager;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadManager;->notifyProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/download/DownloadManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/download/DownloadManager;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadManager;->notifyStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    return-void
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/download/DownloadManager;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->scheduleNextTask()V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/download/DownloadManager;Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/download/DownloadManager;->notifyError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/download/DownloadManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->progressListeners:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;
    .locals 2

    .prologue
    .line 77
    const-class v1, Lcom/bilibili/tv/ui/download/DownloadManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bilibili/tv/ui/download/DownloadManager;->instance:Lcom/bilibili/tv/ui/download/DownloadManager;

    if-nez v0, :cond_e

    .line 78
    new-instance v0, Lcom/bilibili/tv/ui/download/DownloadManager;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/download/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/DownloadManager;->instance:Lcom/bilibili/tv/ui/download/DownloadManager;

    .line 80
    :cond_e
    sget-object v0, Lcom/bilibili/tv/ui/download/DownloadManager;->instance:Lcom/bilibili/tv/ui/download/DownloadManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyError(Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadManager$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bilibili/tv/ui/download/DownloadManager$4;-><init>(Lcom/bilibili/tv/ui/download/DownloadManager;Lcom/bilibili/tv/ui/download/model/DownloadTask;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 589
    return-void
.end method

.method private notifyProgressUpdate(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadManager$2;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/download/DownloadManager$2;-><init>(Lcom/bilibili/tv/ui/download/DownloadManager;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    return-void
.end method

.method private notifyStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadManager$3;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/download/DownloadManager$3;-><init>(Lcom/bilibili/tv/ui/download/DownloadManager;Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 575
    return-void
.end method

.method private restoreUnfinishedTasks()V
    .locals 3

    .prologue
    .line 336
    const-string v0, "DownloadManager"

    const-string v1, "\u6062\u590d\u672a\u5b8c\u6210\u7684\u4e0b\u8f7d\u4efb\u52a1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getDownloadingTasks()Ljava/util/List;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 343
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause()Z

    move-result v2

    if-nez v2, :cond_11

    .line 345
    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 346
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)I

    .line 347
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->waitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_11

    .line 352
    :cond_33
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->scheduleNextTask()V

    .line 353
    return-void
.end method

.method private scheduleNextTask()V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    .line 379
    :cond_9
    :goto_9
    return-void

    .line 365
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->waitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 366
    if-eqz v0, :cond_9

    .line 371
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v1

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-eq v1, v2, :cond_20

    .line 373
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->scheduleNextTask()V

    goto :goto_9

    .line 378
    :cond_20
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->startDownload(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_9
.end method

.method private startDownload(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 3

    .prologue
    .line 385
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->DOWNLOADING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStartTime(J)V

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 391
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)I

    .line 394
    new-instance v0, Lcom/bilibili/tv/ui/download/DownloadWorker;

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->context:Landroid/content/Context;

    new-instance v2, Lcom/bilibili/tv/ui/download/DownloadManager$1;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/download/DownloadManager$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadManager;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/bilibili/tv/ui/download/DownloadWorker;-><init>(Landroid/content/Context;Lcom/bilibili/tv/ui/download/model/DownloadTask;Lcom/bilibili/tv/ui/download/DownloadWorker$DownloadCallback;)V

    .line 455
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 461
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadManager;->notifyStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 462
    return-void
.end method


# virtual methods
.method public addProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->progressListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 538
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->progressListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_d
    return-void
.end method

.method public addTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 4

    .prologue
    .line 87
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6dfb\u52a0\u4e0b\u8f7d\u4efb\u52a1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getCid()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->generateTaskId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTaskId(Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCreateTime(J)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 96
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_77

    .line 98
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4efb\u52a1\u5df2\u5b58\u5728: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v0

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->FAILED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v0, v1, :cond_87

    .line 101
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->deleteTask(Ljava/lang/String;)I

    .line 108
    :cond_77
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->insertTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)J

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->waitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 114
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->scheduleNextTask()V

    .line 117
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/download/DownloadManager;->notifyStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 118
    :cond_87
    return-void
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 595
    const-string v0, "DownloadManager"

    const-string v1, "\u6e05\u7406\u4e0b\u8f7d\u7ba1\u7406\u5668\u8d44\u6e90"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->pauseAllOnAppExit()V

    .line 601
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 602
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 604
    :cond_1b
    return-void
.end method

.method public deleteTask(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 191
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u9664\u4e0b\u8f7d\u4efb\u52a1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadWorker;

    .line 195
    if-eqz v0, :cond_2a

    .line 196
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadWorker;->cancel()V

    .line 197
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_2a
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_37

    .line 203
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->waitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 207
    :cond_37
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->deleteTask(Ljava/lang/String;)I

    .line 210
    if-eqz v0, :cond_41

    .line 211
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->notifyStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    .line 213
    :cond_41
    return-void
.end method

.method public getAllTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getAllTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCompletedCount()I
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getCompletedCount()I

    move-result v0

    return v0
.end method

.method public getCompletedTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getCompletedTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadingCount()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getDownloadingCount()I

    move-result v0

    return v0
.end method

.method public getDownloadingTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getDownloadingTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFailedTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getFailedTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public getTaskByBvidAndCid(Ljava/lang/String;J)Lcom/bilibili/tv/ui/download/model/DownloadTask;
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getTaskByBvidAndCid(Ljava/lang/String;J)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public pauseAllByNetworkError()V
    .locals 4

    .prologue
    .line 250
    const-string v0, "DownloadManager"

    const-string v1, "\u7f51\u7edc\u4e2d\u65ad\uff0c\u6682\u505c\u6240\u6709\u4e0b\u8f7d\u4efb\u52a1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadWorker;

    .line 254
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadWorker;->pause()V

    goto :goto_11

    .line 256
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 259
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getDownloadingTasks()Ljava/util/List;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 261
    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 262
    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->NETWORK_ERROR:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setPauseType(Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;)V

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 264
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)I

    .line 265
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->notifyStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_30

    .line 269
    :cond_56
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->waitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 270
    return-void
.end method

.method public pauseAllOnAppExit()V
    .locals 4

    .prologue
    .line 311
    const-string v0, "DownloadManager"

    const-string v1, "\u5e94\u7528\u9000\u51fa\uff0c\u6682\u505c\u6240\u6709\u4e0b\u8f7d"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadWorker;

    .line 315
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadWorker;->pause()V

    goto :goto_11

    .line 317
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 320
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getDownloadingTasks()Ljava/util/List;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 322
    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 323
    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->APP_EXIT:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setPauseType(Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;)V

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 325
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)I

    goto :goto_30

    .line 329
    :cond_53
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->waitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 330
    return-void
.end method

.method public pauseTask(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 124
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6682\u505c\u4e0b\u8f7d\u4efb\u52a1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v1

    .line 127
    if-nez v1, :cond_3a

    .line 128
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4efb\u52a1\u4e0d\u5b58\u5728: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_39
    return-void

    .line 133
    :cond_3a
    invoke-virtual {v1, v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setManualPause(Z)V

    .line 134
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->MANUAL:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setPauseType(Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;)V

    .line 135
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 139
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0, p1, v4}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->setManualPause(Ljava/lang/String;Z)I

    .line 142
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadWorker;

    .line 143
    if-eqz v0, :cond_65

    .line 144
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadWorker;->pause()V

    .line 145
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->activeWorkers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_65
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->waitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/download/DownloadManager;->notifyStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_39
.end method

.method public removeProgressListener(Lcom/bilibili/tv/ui/download/DownloadManager$DownloadProgressListener;)V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->progressListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 547
    return-void
.end method

.method public resumeOnNetworkResumed()V
    .locals 5

    .prologue
    .line 276
    const-string v0, "DownloadManager"

    const-string v1, "\u7f51\u7edc\u6062\u590d\uff0c\u81ea\u52a8\u6062\u590d\u4e0b\u8f7d"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->NETWORK_ERROR:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getTasksByPauseType(Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;)Ljava/util/List;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 285
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 286
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8df3\u8fc7\u624b\u52a8\u6682\u505c\u7684\u4efb\u52a1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 291
    :cond_42
    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 292
    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->NONE:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setPauseType(Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;)V

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 294
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)I

    .line 297
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->waitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 300
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->notifyStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_13

    .line 304
    :cond_61
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->scheduleNextTask()V

    .line 305
    return-void
.end method

.method public resumeTask(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6062\u590d\u4e0b\u8f7d\u4efb\u52a1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v0

    .line 162
    if-nez v0, :cond_3a

    .line 163
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4efb\u52a1\u4e0d\u5b58\u5728: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_39
    return-void

    .line 168
    :cond_3a
    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setManualPause(Z)V

    .line 169
    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->NONE:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setPauseType(Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;)V

    .line 170
    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 174
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v1, p1, v4}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->setManualPause(Ljava/lang/String;Z)I

    .line 175
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v1, p1, v2}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->updateStatus(Ljava/lang/String;Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)I

    .line 178
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->waitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 181
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->scheduleNextTask()V

    .line 184
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->notifyStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_39
.end method

.method public retryTask(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 219
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u8bd5\u4e0b\u8f7d\u4efb\u52a1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v0

    .line 222
    if-nez v0, :cond_39

    .line 223
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4efb\u52a1\u4e0d\u5b58\u5728: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_38
    return-void

    .line 228
    :cond_39
    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 229
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setErrorCode(I)V

    .line 230
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setErrorMessage(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 234
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)I

    .line 237
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->waitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 240
    invoke-direct {p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->scheduleNextTask()V

    .line 243
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/download/DownloadManager;->notifyStatusChanged(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V

    goto :goto_38
.end method

.method public updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)V
    .locals 3

    .prologue
    .line 512
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66f4\u65b0\u4e0b\u8f7d\u4efb\u52a1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 514
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManager;->databaseHelper:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)I

    .line 515
    return-void
.end method
