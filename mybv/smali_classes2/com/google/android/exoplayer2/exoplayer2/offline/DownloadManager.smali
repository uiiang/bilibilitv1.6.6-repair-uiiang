.class public final Lcom/google/android/exoplayer2/offline/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;,
        Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;,
        Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;,
        Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_PARALLEL_DOWNLOADS:I = 0x3

.field public static final DEFAULT_MIN_RETRY_COUNT:I = 0x5

.field public static final DEFAULT_REQUIREMENTS:Lcom/google/android/exoplayer2/scheduler/Requirements;

.field private static final MSG_ADD_DOWNLOAD:I = 0x6

.field private static final MSG_CONTENT_LENGTH_CHANGED:I = 0xa

.field private static final MSG_DOWNLOAD_UPDATE:I = 0x2

.field private static final MSG_INITIALIZE:I = 0x0

.field private static final MSG_INITIALIZED:I = 0x0

.field private static final MSG_PROCESSED:I = 0x1

.field private static final MSG_RELEASE:I = 0xc

.field private static final MSG_REMOVE_ALL_DOWNLOADS:I = 0x8

.field private static final MSG_REMOVE_DOWNLOAD:I = 0x7

.field private static final MSG_SET_DOWNLOADS_PAUSED:I = 0x1

.field private static final MSG_SET_MAX_PARALLEL_DOWNLOADS:I = 0x4

.field private static final MSG_SET_MIN_RETRY_COUNT:I = 0x5

.field private static final MSG_SET_NOT_MET_REQUIREMENTS:I = 0x2

.field private static final MSG_SET_STOP_REASON:I = 0x3

.field private static final MSG_TASK_STOPPED:I = 0x9

.field private static final MSG_UPDATE_PROGRESS:I = 0xb

.field private static final TAG:Ljava/lang/String; = "DownloadManager"


# instance fields
.field private activeTaskCount:I

.field private final applicationHandler:Landroid/os/Handler;

.field private final context:Landroid/content/Context;

.field private final downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

.field private downloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;"
        }
    .end annotation
.end field

.field private downloadsPaused:Z

.field private initialized:Z

.field private final internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private maxParallelDownloads:I

.field private minRetryCount:I

.field private notMetRequirements:I

.field private pendingMessages:I

.field private final requirementsListener:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;

.field private requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

.field private waitingForRequirements:Z


# direct methods
.method public static synthetic $r8$lambda$9_Cit3svlv2xVuUzheKnCxLjKrE(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager;->onRequirementsStateChanged(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VH8vRSTYO69o4pUCxUdzDQ0ZEQ0(Lcom/google/android/exoplayer2/offline/DownloadManager;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->handleMainMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 158
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/Requirements;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadManager;->DEFAULT_REQUIREMENTS:Lcom/google/android/exoplayer2/scheduler/Requirements;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/database/DatabaseProvider;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/util/concurrent/Executor;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseProvider"    # Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .param p3, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p4, "upstreamFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;

    .line 220
    new-instance v0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;-><init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    new-instance v1, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;

    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;-><init>()V

    .line 225
    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object v2

    .line 226
    invoke-virtual {v2, p4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object v2

    invoke-direct {v1, v2, p5}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    .line 220
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;Lcom/google/android/exoplayer2/offline/DownloaderFactory;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;Lcom/google/android/exoplayer2/offline/DownloaderFactory;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadIndex"    # Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;
    .param p3, "downloaderFactory"    # Lcom/google/android/exoplayer2/offline/DownloaderFactory;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->context:Landroid/content/Context;

    .line 240
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    .line 242
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxParallelDownloads:I

    .line 243
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsPaused:Z

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    .line 246
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 249
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    .line 250
    .local v1, "mainHandler":Landroid/os/Handler;
    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->applicationHandler:Landroid/os/Handler;

    .line 251
    new-instance v3, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:DownloadManager"

    invoke-direct {v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 252
    .local v3, "internalThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 253
    new-instance v10, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    iget v7, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxParallelDownloads:I

    iget v8, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsPaused:Z

    move-object v2, v10

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;-><init>(Landroid/os/HandlerThread;Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;Lcom/google/android/exoplayer2/offline/DownloaderFactory;Landroid/os/Handler;IIZ)V

    iput-object v10, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 264
    new-instance v2, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    .line 265
    .local v2, "requirementsListener":Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;
    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsListener:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;

    .line 266
    new-instance v4, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    sget-object v5, Lcom/google/android/exoplayer2/offline/DownloadManager;->DEFAULT_REQUIREMENTS:Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-direct {v4, p1, v2, v5}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    .line 268
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->start()I

    move-result v4

    iput v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->notMetRequirements:I

    .line 270
    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 271
    nop

    .line 272
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v4, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 274
    return-void
.end method

.method private handleMainMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 597
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 612
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 603
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;

    .line 604
    .local v0, "update":Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->onDownloadUpdate(Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;)V

    .line 605
    goto :goto_23

    .line 607
    .end local v0    # "update":Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;
    :pswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 608
    .local v0, "processedMessageCount":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 609
    .local v1, "activeTaskCount":I
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->onMessageProcessed(II)V

    .line 610
    goto :goto_23

    .line 599
    .end local v0    # "processedMessageCount":I
    .end local v1    # "activeTaskCount":I
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 600
    .local v0, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->onInitialized(Ljava/util/List;)V

    .line 601
    nop

    .line 614
    .end local v0    # "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    :goto_23
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method

.method static mergeRequest(Lcom/google/android/exoplayer2/offline/Download;Lcom/google/android/exoplayer2/offline/DownloadRequest;IJ)Lcom/google/android/exoplayer2/offline/Download;
    .registers 21
    .param p0, "download"    # Lcom/google/android/exoplayer2/offline/Download;
    .param p1, "request"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p2, "stopReason"    # I
    .param p3, "nowMs"    # J

    .line 659
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/offline/Download;->state:I

    .line 664
    .local v1, "state":I
    const/4 v2, 0x5

    if-eq v1, v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/offline/Download;->isTerminalState()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_12

    :cond_e
    iget-wide v3, v0, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    move-wide v8, v3

    goto :goto_14

    :cond_12
    :goto_12
    move-wide/from16 v8, p3

    .line 665
    .local v8, "startTimeMs":J
    :goto_14
    if-eq v1, v2, :cond_20

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1a

    goto :goto_20

    .line 667
    :cond_1a
    if-eqz p2, :cond_1e

    .line 668
    const/4 v1, 0x1

    goto :goto_21

    .line 670
    :cond_1e
    const/4 v1, 0x0

    goto :goto_21

    .line 666
    :cond_20
    :goto_20
    const/4 v1, 0x7

    .line 672
    :goto_21
    new-instance v2, Lcom/google/android/exoplayer2/offline/Download;

    iget-object v3, v0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 673
    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/offline/DownloadRequest;->copyWithMergedRequest(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v6

    const-wide/16 v12, -0x1

    const/4 v15, 0x0

    move-object v5, v2

    move v7, v1

    move-wide/from16 v10, p3

    move/from16 v14, p2

    invoke-direct/range {v5 .. v15}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJII)V

    .line 672
    return-object v2
.end method

.method private notifyWaitingForRequirementsChanged()V
    .registers 4

    .line 588
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 589
    .local v1, "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->waitingForRequirements:Z

    invoke-interface {v1, p0, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onWaitingForRequirementsChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V

    .line 590
    .end local v1    # "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    goto :goto_6

    .line 591
    :cond_18
    return-void
.end method

.method private onDownloadUpdate(Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;)V
    .registers 7
    .param p1, "update"    # Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;

    .line 630
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;->downloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    .line 631
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;->download:Lcom/google/android/exoplayer2/offline/Download;

    .line 632
    .local v0, "updatedDownload":Lcom/google/android/exoplayer2/offline/Download;
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->updateWaitingForRequirements()Z

    move-result v1

    .line 633
    .local v1, "waitingForRequirementsChanged":Z
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;->isRemove:Z

    if-eqz v2, :cond_29

    .line 634
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 635
    .local v3, "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    invoke-interface {v3, p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onDownloadRemoved(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;)V

    .line 636
    .end local v3    # "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    goto :goto_18

    :cond_28
    goto :goto_41

    .line 638
    :cond_29
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 639
    .restart local v3    # "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    iget-object v4, p1, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;->finalException:Ljava/lang/Exception;

    invoke-interface {v3, p0, v0, v4}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onDownloadChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;Ljava/lang/Exception;)V

    .line 640
    .end local v3    # "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    goto :goto_2f

    .line 642
    :cond_41
    :goto_41
    if-eqz v1, :cond_46

    .line 643
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyWaitingForRequirementsChanged()V

    .line 645
    :cond_46
    return-void
.end method

.method private onInitialized(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;)V"
        }
    .end annotation

    .line 618
    .local p1, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    .line 619
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    .line 620
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->updateWaitingForRequirements()Z

    move-result v0

    .line 621
    .local v0, "waitingForRequirementsChanged":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 622
    .local v2, "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    .line 623
    .end local v2    # "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    goto :goto_13

    .line 624
    :cond_23
    if-eqz v0, :cond_28

    .line 625
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyWaitingForRequirementsChanged()V

    .line 627
    :cond_28
    return-void
.end method

.method private onMessageProcessed(II)V
    .registers 5
    .param p1, "processedMessageCount"    # I
    .param p2, "activeTaskCount"    # I

    .line 648
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 649
    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeTaskCount:I

    .line 650
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 652
    .local v1, "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    .line 653
    .end local v1    # "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    goto :goto_13

    .line 655
    :cond_23
    return-void
.end method

.method private onRequirementsStateChanged(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;I)V
    .registers 7
    .param p1, "requirementsWatcher"    # Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;
    .param p2, "notMetRequirements"    # I

    .line 555
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v0

    .line 556
    .local v0, "requirements":Lcom/google/android/exoplayer2/scheduler/Requirements;
    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->notMetRequirements:I

    if-eq v1, p2, :cond_1b

    .line 557
    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->notMetRequirements:I

    .line 558
    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 559
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 560
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 561
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 563
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->updateWaitingForRequirements()Z

    move-result v1

    .line 564
    .local v1, "waitingForRequirementsChanged":Z
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 565
    .local v3, "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    invoke-interface {v3, p0, v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onRequirementsStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V

    .line 566
    .end local v3    # "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    goto :goto_25

    .line 567
    :cond_35
    if-eqz v1, :cond_3a

    .line 568
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyWaitingForRequirementsChanged()V

    .line 570
    :cond_3a
    return-void
.end method

.method private setDownloadsPaused(Z)V
    .registers 5
    .param p1, "downloadsPaused"    # Z

    .line 535
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsPaused:Z

    if-ne v0, p1, :cond_5

    .line 536
    return-void

    .line 538
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsPaused:Z

    .line 539
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 541
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 543
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->updateWaitingForRequirements()Z

    move-result v0

    .line 544
    .local v0, "waitingForRequirementsChanged":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 545
    .local v2, "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onDownloadsPausedChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V

    .line 546
    .end local v2    # "listener":Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    goto :goto_21

    .line 547
    :cond_31
    if-eqz v0, :cond_36

    .line 548
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyWaitingForRequirementsChanged()V

    .line 550
    :cond_36
    return-void
.end method

.method private updateWaitingForRequirements()Z
    .registers 4

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "waitingForRequirements":Z
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsPaused:Z

    if-nez v1, :cond_23

    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->notMetRequirements:I

    if-eqz v1, :cond_23

    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 576
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/Download;

    iget v2, v2, Lcom/google/android/exoplayer2/offline/Download;->state:I

    if-nez v2, :cond_20

    .line 577
    const/4 v0, 0x1

    .line 578
    goto :goto_23

    .line 575
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 582
    .end local v1    # "i":I
    :cond_23
    :goto_23
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->waitingForRequirements:Z

    if-eq v1, v0, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 583
    .local v1, "waitingForRequirementsChanged":Z
    :goto_2a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->waitingForRequirements:Z

    .line 584
    return v1
.end method


# virtual methods
.method public addDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;)V
    .registers 3
    .param p1, "request"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->addDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)V

    .line 468
    return-void
.end method

.method public addDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)V
    .registers 6
    .param p1, "request"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p2, "stopReason"    # I

    .line 478
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 480
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 482
    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 318
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 320
    return-void
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDownloads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadIndex()Lcom/google/android/exoplayer2/offline/DownloadIndex;
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    return-object v0
.end method

.method public getDownloadsPaused()Z
    .registers 2

    .line 424
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsPaused:Z

    return v0
.end method

.method public getMaxParallelDownloads()I
    .registers 2

    .line 362
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxParallelDownloads:I

    return v0
.end method

.method public getMinRetryCount()I
    .registers 2

    .line 387
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    return v0
.end method

.method public getNotMetRequirements()I
    .registers 2

    .line 342
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->notMetRequirements:I

    return v0
.end method

.method public getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v0

    return-object v0
.end method

.method public isIdle()Z
    .registers 2

    .line 295
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeTaskCount:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .line 286
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    return v0
.end method

.method public isWaitingForRequirements()Z
    .registers 2

    .line 309
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->waitingForRequirements:Z

    return v0
.end method

.method public pauseDownloads()V
    .registers 2

    .line 443
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->setDownloadsPaused(Z)V

    .line 444
    return-void
.end method

.method public release()V
    .registers 5

    .line 505
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    monitor-enter v0

    .line 506
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->released:Z

    if-eqz v1, :cond_b

    .line 507
    monitor-exit v0

    return-void

    .line 509
    :cond_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->sendEmptyMessage(I)Z

    .line 510
    const/4 v1, 0x0

    .line 511
    .local v1, "wasInterrupted":Z
    :goto_13
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->released:Z
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_49

    if-nez v2, :cond_22

    .line 513
    :try_start_19
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_1f
    .catchall {:try_start_19 .. :try_end_1e} :catchall_49

    goto :goto_21

    .line 514
    :catch_1f
    move-exception v2

    .line 515
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 516
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_21
    goto :goto_13

    .line 518
    :cond_22
    if-eqz v1, :cond_2b

    .line 520
    :try_start_24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 522
    :cond_2b
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->applicationHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 523
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->stop()V

    .line 525
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    .line 526
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 527
    iput v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeTaskCount:I

    .line 528
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    .line 529
    iput v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->notMetRequirements:I

    .line 530
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->waitingForRequirements:Z

    .line 531
    .end local v1    # "wasInterrupted":Z
    monitor-exit v0

    .line 532
    return-void

    .line 531
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_24 .. :try_end_4b} :catchall_49

    goto :goto_4d

    :goto_4c
    throw v1

    :goto_4d
    goto :goto_4c
.end method

.method public removeAllDownloads()V
    .registers 3

    .line 496
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 498
    return-void
.end method

.method public removeDownload(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 490
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 492
    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method public resumeDownloads()V
    .registers 2

    .line 435
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->setDownloadsPaused(Z)V

    .line 436
    return-void
.end method

.method public setMaxParallelDownloads(I)V
    .registers 5
    .param p1, "maxParallelDownloads"    # I

    .line 371
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 372
    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxParallelDownloads:I

    if-ne v2, p1, :cond_f

    .line 373
    return-void

    .line 375
    :cond_f
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxParallelDownloads:I

    .line 376
    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 378
    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 380
    return-void
.end method

.method public setMinRetryCount(I)V
    .registers 5
    .param p1, "minRetryCount"    # I

    .line 397
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 398
    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    if-ne v2, p1, :cond_f

    .line 399
    return-void

    .line 401
    :cond_f
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    .line 402
    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 404
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 406
    return-void
.end method

.method public setRequirements(Lcom/google/android/exoplayer2/scheduler/Requirements;)V
    .registers 5
    .param p1, "requirements"    # Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 352
    return-void

    .line 354
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->stop()V

    .line 355
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsListener:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    .line 356
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->start()I

    move-result v0

    .line 357
    .local v0, "notMetRequirements":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->onRequirementsStateChanged(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;I)V

    .line 358
    return-void
.end method

.method public setStopReason(Ljava/lang/String;I)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "stopReason"    # I

    .line 455
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 456
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 457
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 459
    return-void
.end method
