.class final Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadManagerHelper"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

.field private downloadService:Lcom/google/android/exoplayer2/offline/DownloadService;

.field private final foregroundAllowed:Z

.field private scheduledRequirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

.field private final scheduler:Lcom/google/android/exoplayer2/scheduler/Scheduler;

.field private final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/DownloadManager;ZLcom/google/android/exoplayer2/scheduler/Scheduler;Ljava/lang/Class;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;
    .param p3, "foregroundAllowed"    # Z
    .param p4, "scheduler"    # Lcom/google/android/exoplayer2/scheduler/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/offline/DownloadManager;",
            "Z",
            "Lcom/google/android/exoplayer2/scheduler/Scheduler;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    .line 956
    .local p5, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    .line 958
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 959
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->foregroundAllowed:Z

    .line 960
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->scheduler:Lcom/google/android/exoplayer2/scheduler/Scheduler;

    .line 961
    iput-object p5, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->serviceClass:Ljava/lang/Class;

    .line 962
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->addListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V

    .line 963
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->updateScheduler()Z

    .line 964
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/DownloadManager;ZLcom/google/android/exoplayer2/scheduler/Scheduler;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadService$1;)V
    .registers 7
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/offline/DownloadManager;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/google/android/exoplayer2/scheduler/Scheduler;
    .param p5, "x4"    # Ljava/lang/Class;
    .param p6, "x5"    # Lcom/google/android/exoplayer2/offline/DownloadService$1;

    .line 940
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/DownloadManager;ZLcom/google/android/exoplayer2/scheduler/Scheduler;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;)Lcom/google/android/exoplayer2/offline/DownloadManager;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    .line 940
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    return-object v0
.end method

.method private cancelScheduler()V
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "scheduler"
        }
    .end annotation

    .line 1101
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/Requirements;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;-><init>(I)V

    .line 1102
    .local v0, "canceledRequirements":Lcom/google/android/exoplayer2/scheduler/Requirements;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->schedulerNeedsUpdate(Lcom/google/android/exoplayer2/scheduler/Requirements;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1103
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->scheduler:Lcom/google/android/exoplayer2/scheduler/Scheduler;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/scheduler/Scheduler;->cancel()Z

    .line 1104
    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->scheduledRequirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 1106
    :cond_13
    return-void
.end method

.method private restartService()V
    .registers 5

    .line 1113
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->foregroundAllowed:Z

    const-string v1, "DownloadService"

    if-eqz v0, :cond_1e

    .line 1115
    :try_start_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->serviceClass:Ljava/lang/Class;

    const-string v3, "com.google.android.exoplayer.downloadService.action.RESTART"

    # invokes: Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$900(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1116
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Util;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_15} :catch_17

    .line 1122
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_35

    .line 1117
    :catch_17
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Failed to restart (foreground launch restriction)"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_35

    .line 1127
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->serviceClass:Ljava/lang/Class;

    const-string v3, "com.google.android.exoplayer.downloadService.action.INIT"

    # invokes: Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$900(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1128
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_2d} :catch_2f

    .line 1133
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_35

    .line 1129
    :catch_2f
    move-exception v0

    .line 1132
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Failed to restart (process is idle)"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_35
    return-void
.end method

.method private schedulerNeedsUpdate(Lcom/google/android/exoplayer2/scheduler/Requirements;)Z
    .registers 3
    .param p1, "requirements"    # Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 1096
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->scheduledRequirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private serviceMayNeedRestart()Z
    .registers 2

    .line 1109
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplayer2/offline/DownloadService;

    if-eqz v0, :cond_d

    # invokes: Lcom/google/android/exoplayer2/offline/DownloadService;->isStopped()Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$800(Lcom/google/android/exoplayer2/offline/DownloadService;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method


# virtual methods
.method public attachService(Lcom/google/android/exoplayer2/offline/DownloadService;)V
    .registers 4
    .param p1, "downloadService"    # Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 967
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplayer2/offline/DownloadService;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 968
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 969
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 975
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;Lcom/google/android/exoplayer2/offline/DownloadService;)V

    .line 976
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 979
    :cond_20
    return-void
.end method

.method public detachService(Lcom/google/android/exoplayer2/offline/DownloadService;)V
    .registers 3
    .param p1, "downloadService"    # Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 982
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplayer2/offline/DownloadService;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 983
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 984
    return-void
.end method

.method synthetic lambda$attachService$0$com-google-android-exoplayer2-offline-DownloadService$DownloadManagerHelper(Lcom/google/android/exoplayer2/offline/DownloadService;)V
    .registers 3
    .param p1, "downloadService"    # Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object v0

    # invokes: Lcom/google/android/exoplayer2/offline/DownloadService;->notifyDownloads(Ljava/util/List;)V
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$300(Lcom/google/android/exoplayer2/offline/DownloadService;Ljava/util/List;)V

    return-void
.end method

.method public onDownloadChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;Ljava/lang/Exception;)V
    .registers 6
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;
    .param p2, "download"    # Lcom/google/android/exoplayer2/offline/Download;
    .param p3, "finalException"    # Ljava/lang/Exception;

    .line 1039
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplayer2/offline/DownloadService;

    if-eqz v0, :cond_7

    .line 1040
    # invokes: Lcom/google/android/exoplayer2/offline/DownloadService;->notifyDownloadChanged(Lcom/google/android/exoplayer2/offline/Download;)V
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$400(Lcom/google/android/exoplayer2/offline/DownloadService;Lcom/google/android/exoplayer2/offline/Download;)V

    .line 1042
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->serviceMayNeedRestart()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p2, Lcom/google/android/exoplayer2/offline/Download;->state:I

    # invokes: Lcom/google/android/exoplayer2/offline/DownloadService;->needsStartedService(I)Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$500(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1047
    const-string v0, "DownloadService"

    const-string v1, "DownloadService wasn\'t running. Restarting."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->restartService()V

    .line 1050
    :cond_1f
    return-void
.end method

.method public onDownloadRemoved(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;)V
    .registers 4
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;
    .param p2, "download"    # Lcom/google/android/exoplayer2/offline/Download;

    .line 1054
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplayer2/offline/DownloadService;

    if-eqz v0, :cond_7

    .line 1055
    # invokes: Lcom/google/android/exoplayer2/offline/DownloadService;->notifyDownloadRemoved()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$600(Lcom/google/android/exoplayer2/offline/DownloadService;)V

    .line 1057
    :cond_7
    return-void
.end method

.method public synthetic onDownloadsPausedChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onDownloadsPausedChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V

    return-void
.end method

.method public final onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .registers 3
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 1061
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplayer2/offline/DownloadService;

    if-eqz v0, :cond_7

    .line 1062
    # invokes: Lcom/google/android/exoplayer2/offline/DownloadService;->onIdle()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$700(Lcom/google/android/exoplayer2/offline/DownloadService;)V

    .line 1064
    :cond_7
    return-void
.end method

.method public onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .registers 4
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 1031
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadService:Lcom/google/android/exoplayer2/offline/DownloadService;

    if-eqz v0, :cond_b

    .line 1032
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/google/android/exoplayer2/offline/DownloadService;->notifyDownloads(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$300(Lcom/google/android/exoplayer2/offline/DownloadService;Ljava/util/List;)V

    .line 1034
    :cond_b
    return-void
.end method

.method public onRequirementsStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V
    .registers 4
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;
    .param p2, "requirements"    # Lcom/google/android/exoplayer2/scheduler/Requirements;
    .param p3, "notMetRequirements"    # I

    .line 1071
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->updateScheduler()Z

    .line 1072
    return-void
.end method

.method public onWaitingForRequirementsChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V
    .registers 6
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;
    .param p2, "waitingForRequirements"    # Z

    .line 1077
    if-nez p2, :cond_2a

    .line 1078
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getDownloadsPaused()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1079
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->serviceMayNeedRestart()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1083
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object v0

    .line 1084
    .local v0, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1085
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/Download;

    iget v2, v2, Lcom/google/android/exoplayer2/offline/Download;->state:I

    if-nez v2, :cond_27

    .line 1086
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->restartService()V

    .line 1087
    return-void

    .line 1084
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1091
    .end local v0    # "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    .end local v1    # "i":I
    :cond_2a
    return-void
.end method

.method public updateScheduler()Z
    .registers 9

    .line 995
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->isWaitingForRequirements()Z

    move-result v0

    .line 996
    .local v0, "waitingForRequirements":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->scheduler:Lcom/google/android/exoplayer2/scheduler/Scheduler;

    if-nez v1, :cond_d

    .line 997
    xor-int/lit8 v1, v0, 0x1

    return v1

    .line 1000
    :cond_d
    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 1001
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->cancelScheduler()V

    .line 1002
    return v1

    .line 1005
    :cond_14
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v2

    .line 1006
    .local v2, "requirements":Lcom/google/android/exoplayer2/scheduler/Requirements;
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->scheduler:Lcom/google/android/exoplayer2/scheduler/Scheduler;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/scheduler/Scheduler;->getSupportedRequirements(Lcom/google/android/exoplayer2/scheduler/Requirements;)Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v3

    .line 1007
    .local v3, "supportedRequirements":Lcom/google/android/exoplayer2/scheduler/Requirements;
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2b

    .line 1008
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->cancelScheduler()V

    .line 1009
    return v5

    .line 1012
    :cond_2b
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->schedulerNeedsUpdate(Lcom/google/android/exoplayer2/scheduler/Requirements;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1013
    return v1

    .line 1016
    :cond_32
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1017
    .local v4, "servicePackage":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->scheduler:Lcom/google/android/exoplayer2/scheduler/Scheduler;

    const-string v7, "com.google.android.exoplayer.downloadService.action.RESTART"

    invoke-interface {v6, v2, v4, v7}, Lcom/google/android/exoplayer2/scheduler/Scheduler;->schedule(Lcom/google/android/exoplayer2/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 1018
    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->scheduledRequirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 1019
    return v1

    .line 1021
    :cond_45
    const-string v1, "DownloadService"

    const-string v6, "Failed to schedule restart"

    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->cancelScheduler()V

    .line 1023
    return v5
.end method
