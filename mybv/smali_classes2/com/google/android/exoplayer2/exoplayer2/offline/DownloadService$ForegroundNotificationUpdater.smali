.class final Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;
.super Ljava/lang/Object;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForegroundNotificationUpdater"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private notificationDisplayed:Z

.field private final notificationId:I

.field private periodicUpdatesStarted:Z

.field final synthetic this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

.field private final updateInterval:J


# direct methods
.method public static synthetic $r8$lambda$pYuZL1QRc5pDjZBDyUT_MTJZ65U(Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadService;IJ)V
    .registers 6
    .param p2, "notificationId"    # I
    .param p3, "updateInterval"    # J

    .line 890
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationId:I

    .line 892
    iput-wide p3, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->updateInterval:J

    .line 893
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->handler:Landroid/os/Handler;

    .line 894
    return-void
.end method

.method private update()V
    .registers 9

    .line 919
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 920
    # getter for: Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManagerHelper:Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$200(Lcom/google/android/exoplayer2/offline/DownloadService;)Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    # getter for: Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->access$100(Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;)Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v0

    .line 921
    .local v0, "downloadManager":Lcom/google/android/exoplayer2/offline/DownloadManager;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object v1

    .line 922
    .local v1, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getNotMetRequirements()I

    move-result v2

    .line 923
    .local v2, "notMetRequirements":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadService;->getForegroundNotification(Ljava/util/List;I)Landroid/app/Notification;

    move-result-object v3

    .line 924
    .local v3, "notification":Landroid/app/Notification;
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationDisplayed:Z

    if-nez v4, :cond_2d

    .line 925
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    iget v5, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationId:I

    invoke-virtual {v4, v5, v3}, Lcom/google/android/exoplayer2/offline/DownloadService;->startForeground(ILandroid/app/Notification;)V

    .line 926
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationDisplayed:Z

    goto :goto_3c

    .line 930
    :cond_2d
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/offline/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iget v5, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationId:I

    .line 931
    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 933
    :goto_3c
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->periodicUpdatesStarted:Z

    if-eqz v4, :cond_52

    .line 934
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 935
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;)V

    iget-wide v6, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->updateInterval:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 937
    :cond_52
    return-void
.end method


# virtual methods
.method public invalidate()V
    .registers 2

    .line 913
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationDisplayed:Z

    if-eqz v0, :cond_7

    .line 914
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    .line 916
    :cond_7
    return-void
.end method

.method public showNotificationIfNotAlready()V
    .registers 2

    .line 907
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationDisplayed:Z

    if-nez v0, :cond_7

    .line 908
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    .line 910
    :cond_7
    return-void
.end method

.method public startPeriodicUpdates()V
    .registers 2

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->periodicUpdatesStarted:Z

    .line 898
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    .line 899
    return-void
.end method

.method public stopPeriodicUpdates()V
    .registers 3

    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->periodicUpdatesStarted:Z

    .line 903
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 904
    return-void
.end method
