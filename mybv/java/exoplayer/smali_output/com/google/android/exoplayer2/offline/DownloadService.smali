.class public abstract Lcom/google/android/exoplayer2/offline/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;,
        Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_ADD_DOWNLOAD:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD"

.field public static final ACTION_INIT:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.INIT"

.field public static final ACTION_PAUSE_DOWNLOADS:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

.field public static final ACTION_REMOVE_ALL_DOWNLOADS:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS"

.field public static final ACTION_REMOVE_DOWNLOAD:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

.field private static final ACTION_RESTART:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.RESTART"

.field public static final ACTION_RESUME_DOWNLOADS:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS"

.field public static final ACTION_SET_REQUIREMENTS:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS"

.field public static final ACTION_SET_STOP_REASON:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.SET_STOP_REASON"

.field public static final DEFAULT_FOREGROUND_NOTIFICATION_UPDATE_INTERVAL:J = 0x3e8L

.field public static final FOREGROUND_NOTIFICATION_ID_NONE:I = 0x0

.field public static final KEY_CONTENT_ID:Ljava/lang/String; = "content_id"

.field public static final KEY_DOWNLOAD_REQUEST:Ljava/lang/String; = "download_request"

.field public static final KEY_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final KEY_REQUIREMENTS:Ljava/lang/String; = "requirements"

.field public static final KEY_STOP_REASON:Ljava/lang/String; = "stop_reason"

.field private static final TAG:Ljava/lang/String; = "DownloadService"

.field private static final downloadManagerHelpers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channelDescriptionResourceId:I

.field private final channelId:Ljava/lang/String;

.field private final channelNameResourceId:I

.field private downloadManagerHelper:Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

.field private final foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

.field private isDestroyed:Z

.field private isStopped:Z

.field private lastStartId:I

.field private startedInForeground:Z

.field private taskRemoved:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManagerHelpers:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 4
    .param p1, "foregroundNotificationId"    # I

    .line 222
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadService;-><init>(IJ)V

    .line 223
    return-void
.end method

.method protected constructor <init>(IJ)V
    .registers 11
    .param p1, "foregroundNotificationId"    # I
    .param p2, "foregroundNotificationUpdateInterval"    # J

    .line 236
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/DownloadService;-><init>(IJLjava/lang/String;II)V

    .line 242
    return-void
.end method

.method protected constructor <init>(IJLjava/lang/String;II)V
    .registers 8
    .param p1, "foregroundNotificationId"    # I
    .param p2, "foregroundNotificationUpdateInterval"    # J
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "channelNameResourceId"    # I
    .param p6, "channelDescriptionResourceId"    # I

    .line 271
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 272
    if-nez p1, :cond_10

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    .line 274
    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelId:Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelNameResourceId:I

    .line 276
    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelDescriptionResourceId:I

    goto :goto_1d

    .line 278
    :cond_10
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;-><init>(Lcom/google/android/exoplayer2/offline/DownloadService;IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    .line 281
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelId:Ljava/lang/String;

    .line 282
    iput p5, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelNameResourceId:I

    .line 283
    iput p6, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelDescriptionResourceId:I

    .line 285
    :goto_1d
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/offline/DownloadService;)Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManagerHelper:Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/offline/DownloadService;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadService;
    .param p1, "x1"    # Ljava/util/List;

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadService;->notifyDownloads(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/offline/DownloadService;Lcom/google/android/exoplayer2/offline/Download;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadService;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/offline/Download;

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadService;->notifyDownloadChanged(Lcom/google/android/exoplayer2/offline/Download;)V

    return-void
.end method

.method static synthetic access$500(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 58
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->needsStartedService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/offline/DownloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->notifyDownloadRemoved()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/offline/DownloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->onIdle()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/offline/DownloadService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadService;

    .line 58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->isStopped()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Ljava/lang/String;

    .line 58
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadRequest;IZ)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "downloadRequest"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p3, "stopReason"    # I
    .param p4, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Lcom/google/android/exoplayer2/offline/DownloadRequest;",
            "IZ)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 321
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    const-string v0, "com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD"

    invoke-static {p0, p1, v0, p4}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 322
    const-string v1, "download_request"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 323
    const-string v1, "stop_reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 321
    return-object v0
.end method

.method public static buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadRequest;Z)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "downloadRequest"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p3, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Lcom/google/android/exoplayer2/offline/DownloadRequest;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 301
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/offline/DownloadService;->buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadRequest;IZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildPauseDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 377
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    const-string v0, "com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildRemoveAllDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 351
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    const-string v0, "com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildRemoveDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 337
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    const-string v0, "com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

    invoke-static {p0, p1, v0, p3}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 338
    const-string v1, "content_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 337
    return-object v0
.end method

.method public static buildResumeDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 364
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    const-string v0, "com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildSetRequirementsIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/scheduler/Requirements;Z)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "requirements"    # Lcom/google/android/exoplayer2/scheduler/Requirements;
    .param p3, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Lcom/google/android/exoplayer2/scheduler/Requirements;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 417
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    const-string v0, "com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS"

    invoke-static {p0, p1, v0, p3}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 418
    const-string v1, "requirements"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 417
    return-object v0
.end method

.method public static buildSetStopReasonIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "stopReason"    # I
    .param p4, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 397
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    const-string v0, "com.google.android.exoplayer.downloadService.action.SET_STOP_REASON"

    invoke-static {p0, p1, v0, p4}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 398
    const-string v1, "content_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 399
    const-string v1, "stop_reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 397
    return-object v0
.end method

.method public static clearDownloadManagerHelpers()V
    .registers 1

    .line 582
    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManagerHelpers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 583
    return-void
.end method

.method private static getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 870
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 865
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "foreground"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private isStopped()Z
    .registers 2

    .line 831
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->isStopped:Z

    return v0
.end method

.method private static needsStartedService(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 858
    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x7

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method private notifyDownloadChanged(Lcom/google/android/exoplayer2/offline/Download;)V
    .registers 3
    .param p1, "download"    # Lcom/google/android/exoplayer2/offline/Download;

    .line 813
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_17

    .line 814
    iget v0, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->needsStartedService(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 815
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->startPeriodicUpdates()V

    goto :goto_17

    .line 817
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->invalidate()V

    .line 820
    :cond_17
    :goto_17
    return-void
.end method

.method private notifyDownloadRemoved()V
    .registers 2

    .line 824
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_7

    .line 825
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->invalidate()V

    .line 827
    :cond_7
    return-void
.end method

.method private notifyDownloads(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;)V"
        }
    .end annotation

    .line 797
    .local p1, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_22

    .line 798
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 799
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/Download;

    iget v1, v1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DownloadService;->needsStartedService(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 800
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->startPeriodicUpdates()V

    .line 801
    goto :goto_22

    .line 798
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 805
    .end local v0    # "i":I
    :cond_22
    :goto_22
    return-void
.end method

.method private onIdle()V
    .registers 3

    .line 835
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_7

    .line 838
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->stopPeriodicUpdates()V

    .line 841
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManagerHelper:Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->updateScheduler()Z

    move-result v0

    if-nez v0, :cond_16

    .line 844
    return-void

    .line 849
    :cond_16
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_27

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->taskRemoved:Z

    if-eqz v0, :cond_27

    .line 850
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->stopSelf()V

    .line 851
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->isStopped:Z

    goto :goto_32

    .line 853
    :cond_27
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->isStopped:Z

    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->lastStartId:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/offline/DownloadService;->stopSelfResult(I)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->isStopped:Z

    .line 855
    :goto_32
    return-void
.end method

.method public static sendAddDownload(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadRequest;IZ)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "downloadRequest"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p3, "stopReason"    # I
    .param p4, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Lcom/google/android/exoplayer2/offline/DownloadRequest;",
            "IZ)V"
        }
    .end annotation

    .line 454
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/offline/DownloadService;->buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadRequest;IZ)Landroid/content/Intent;

    move-result-object v0

    .line 455
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0, p4}, Lcom/google/android/exoplayer2/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 456
    return-void
.end method

.method public static sendAddDownload(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadRequest;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "downloadRequest"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p3, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Lcom/google/android/exoplayer2/offline/DownloadRequest;",
            "Z)V"
        }
    .end annotation

    .line 434
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadService;->buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadRequest;Z)Landroid/content/Intent;

    move-result-object v0

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0, p3}, Lcom/google/android/exoplayer2/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 436
    return-void
.end method

.method public static sendPauseDownloads(Landroid/content/Context;Ljava/lang/Class;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;Z)V"
        }
    .end annotation

    .line 507
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->buildPauseDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object v0

    .line 508
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 509
    return-void
.end method

.method public static sendRemoveAllDownloads(Landroid/content/Context;Ljava/lang/Class;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;Z)V"
        }
    .end annotation

    .line 481
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->buildRemoveAllDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object v0

    .line 482
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 483
    return-void
.end method

.method public static sendRemoveDownload(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 468
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadService;->buildRemoveDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 469
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0, p3}, Lcom/google/android/exoplayer2/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 470
    return-void
.end method

.method public static sendResumeDownloads(Landroid/content/Context;Ljava/lang/Class;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;Z)V"
        }
    .end annotation

    .line 494
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->buildResumeDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object v0

    .line 495
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 496
    return-void
.end method

.method public static sendSetRequirements(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/scheduler/Requirements;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "requirements"    # Lcom/google/android/exoplayer2/scheduler/Requirements;
    .param p3, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Lcom/google/android/exoplayer2/scheduler/Requirements;",
            "Z)V"
        }
    .end annotation

    .line 545
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadService;->buildSetRequirementsIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/scheduler/Requirements;Z)Landroid/content/Intent;

    move-result-object v0

    .line 546
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0, p3}, Lcom/google/android/exoplayer2/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 547
    return-void
.end method

.method public static sendSetStopReason(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "stopReason"    # I
    .param p4, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 527
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/offline/DownloadService;->buildSetStopReasonIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v0

    .line 528
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0, p4}, Lcom/google/android/exoplayer2/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 529
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    .line 557
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    const-string v0, "com.google.android.exoplayer.downloadService.action.INIT"

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 558
    return-void
.end method

.method public static startForeground(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    .line 570
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    const-string v0, "com.google.android.exoplayer.downloadService.action.INIT"

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 571
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 572
    return-void
.end method

.method private static startService(Landroid/content/Context;Landroid/content/Intent;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "foreground"    # Z

    .line 874
    if-eqz p2, :cond_6

    .line 875
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_9

    .line 877
    :cond_6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 879
    :goto_9
    return-void
.end method


# virtual methods
.method protected abstract getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;
.end method

.method protected abstract getForegroundNotification(Ljava/util/List;I)Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;I)",
            "Landroid/app/Notification;"
        }
    .end annotation
.end method

.method protected abstract getScheduler()Lcom/google/android/exoplayer2/scheduler/Scheduler;
.end method

.method protected final invalidateForegroundNotification()V
    .registers 3

    .line 786
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->isDestroyed:Z

    if-nez v1, :cond_b

    .line 787
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->invalidate()V

    .line 789
    :cond_b
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 720
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()V
    .registers 15

    .line 587
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 588
    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelNameResourceId:I

    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelDescriptionResourceId:I

    const/4 v3, 0x2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;III)V

    .line 595
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 596
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/offline/DownloadService;>;"
    sget-object v1, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManagerHelpers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    .line 597
    .local v2, "downloadManagerHelper":Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;
    if-nez v2, :cond_50

    .line 598
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    .line 600
    .local v3, "foregroundAllowed":Z
    :goto_23
    sget v6, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v7, 0x1f

    if-ge v6, v7, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    move v11, v4

    .line 603
    .local v11, "canStartForegroundServiceFromBackground":Z
    if-eqz v3, :cond_35

    if-eqz v11, :cond_35

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->getScheduler()Lcom/google/android/exoplayer2/scheduler/Scheduler;

    move-result-object v4

    goto :goto_36

    :cond_35
    const/4 v4, 0x0

    :goto_36
    move-object v8, v4

    .line 604
    .local v8, "scheduler":Lcom/google/android/exoplayer2/scheduler/Scheduler;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v12

    .line 605
    .local v12, "downloadManager":Lcom/google/android/exoplayer2/offline/DownloadManager;
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/offline/DownloadManager;->resumeDownloads()V

    .line 606
    new-instance v13, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    .line 608
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v10, 0x0

    move-object v4, v13

    move-object v6, v12

    move v7, v3

    move-object v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/DownloadManager;ZLcom/google/android/exoplayer2/scheduler/Scheduler;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadService$1;)V

    move-object v2, v13

    .line 609
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .end local v3    # "foregroundAllowed":Z
    .end local v8    # "scheduler":Lcom/google/android/exoplayer2/scheduler/Scheduler;
    .end local v11    # "canStartForegroundServiceFromBackground":Z
    .end local v12    # "downloadManager":Lcom/google/android/exoplayer2/offline/DownloadManager;
    :cond_50
    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManagerHelper:Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    .line 612
    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->attachService(Lcom/google/android/exoplayer2/offline/DownloadService;)V

    .line 613
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->isDestroyed:Z

    .line 708
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManagerHelper:Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->detachService(Lcom/google/android/exoplayer2/offline/DownloadService;)V

    .line 709
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_15

    .line 710
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->stopPeriodicUpdates()V

    .line 712
    :cond_15
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 617
    iput p3, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->lastStartId:I

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->taskRemoved:Z

    .line 619
    const/4 v1, 0x0

    .line 620
    .local v1, "intentAction":Ljava/lang/String;
    const/4 v2, 0x0

    .line 621
    .local v2, "contentId":Ljava/lang/String;
    const-string v3, "com.google.android.exoplayer.downloadService.action.RESTART"

    const/4 v4, 0x1

    if-eqz p1, :cond_2d

    .line 622
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 623
    const-string v5, "content_id"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 624
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->startedInForeground:Z

    .line 625
    const-string v6, "foreground"

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_29

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_29

    :cond_27
    const/4 v6, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v6, 0x1

    :goto_2a
    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->startedInForeground:Z

    .line 628
    :cond_2d
    if-nez v1, :cond_31

    .line 629
    const-string v1, "com.google.android.exoplayer.downloadService.action.INIT"

    .line 631
    :cond_31
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManagerHelper:Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    .line 632
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;

    # getter for: Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;
    invoke-static {v5}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;->access$100(Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerHelper;)Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v5

    .line 633
    .local v5, "downloadManager":Lcom/google/android/exoplayer2/offline/DownloadManager;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_148

    :cond_44
    goto :goto_9e

    :sswitch_45
    const-string v3, "com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v3, 0x3

    goto :goto_9f

    :sswitch_4f
    const-string v3, "com.google.android.exoplayer.downloadService.action.INIT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v3, 0x0

    goto :goto_9f

    :sswitch_59
    const-string v3, "com.google.android.exoplayer.downloadService.action.SET_STOP_REASON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v3, 0x7

    goto :goto_9f

    :sswitch_63
    const-string v3, "com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v3, 0x6

    goto :goto_9f

    :sswitch_6d
    const-string v3, "com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const/16 v3, 0x8

    goto :goto_9f

    :sswitch_78
    const-string v3, "com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v3, 0x4

    goto :goto_9f

    :sswitch_82
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v3, 0x1

    goto :goto_9f

    :sswitch_8a
    const-string v3, "com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v3, 0x5

    goto :goto_9f

    :sswitch_94
    const-string v3, "com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v3, 0x2

    goto :goto_9f

    :goto_9e
    const/4 v3, -0x1

    :goto_9f
    const-string v6, "stop_reason"

    const-string v7, "DownloadService"

    packed-switch v3, :pswitch_data_16e

    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignored unrecognized action: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 675
    :pswitch_be
    nop

    .line 676
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    const-string v6, "requirements"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 677
    .local v3, "requirements":Lcom/google/android/exoplayer2/scheduler/Requirements;
    if-nez v3, :cond_d5

    .line 678
    const-string v6, "Ignored SET_REQUIREMENTS: Missing requirements extra"

    invoke-static {v7, v6}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b

    .line 680
    :cond_d5
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager;->setRequirements(Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    .line 682
    goto :goto_12b

    .line 666
    .end local v3    # "requirements":Lcom/google/android/exoplayer2/scheduler/Requirements;
    :pswitch_d9
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_eb

    .line 667
    const-string v3, "Ignored SET_STOP_REASON: Missing stop_reason extra"

    invoke-static {v7, v3}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b

    .line 669
    :cond_eb
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 670
    .local v3, "stopReason":I
    invoke-virtual {v5, v2, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager;->setStopReason(Ljava/lang/String;I)V

    .line 672
    .end local v3    # "stopReason":I
    goto :goto_12b

    .line 663
    :pswitch_f3
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/offline/DownloadManager;->pauseDownloads()V

    .line 664
    goto :goto_12b

    .line 660
    :pswitch_f7
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/offline/DownloadManager;->resumeDownloads()V

    .line 661
    goto :goto_12b

    .line 657
    :pswitch_fb
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/offline/DownloadManager;->removeAllDownloads()V

    .line 658
    goto :goto_12b

    .line 650
    :pswitch_ff
    if-nez v2, :cond_107

    .line 651
    const-string v3, "Ignored REMOVE_DOWNLOAD: Missing content_id extra"

    invoke-static {v7, v3}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b

    .line 653
    :cond_107
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager;->removeDownload(Ljava/lang/String;)V

    .line 655
    goto :goto_12b

    .line 640
    :pswitch_10b
    nop

    .line 641
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    const-string v8, "download_request"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 642
    .local v3, "downloadRequest":Lcom/google/android/exoplayer2/offline/DownloadRequest;
    if-nez v3, :cond_122

    .line 643
    const-string v6, "Ignored ADD_DOWNLOAD: Missing download_request extra"

    invoke-static {v7, v6}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b

    .line 645
    :cond_122
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 646
    .local v6, "stopReason":I
    invoke-virtual {v5, v3, v6}, Lcom/google/android/exoplayer2/offline/DownloadManager;->addDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)V

    .line 648
    .end local v6    # "stopReason":I
    goto :goto_12b

    .line 637
    .end local v3    # "downloadRequest":Lcom/google/android/exoplayer2/offline/DownloadRequest;
    :pswitch_12a
    nop

    .line 688
    :goto_12b
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v3, v6, :cond_13c

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->startedInForeground:Z

    if-eqz v3, :cond_13c

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v3, :cond_13c

    .line 690
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->showNotificationIfNotAlready()V

    .line 693
    :cond_13c
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->isStopped:Z

    .line 694
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/offline/DownloadManager;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 695
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->onIdle()V

    .line 697
    :cond_147
    return v4

    :sswitch_data_148
    .sparse-switch
        -0x731c5e7b -> :sswitch_94
        -0x378de948 -> :sswitch_8a
        -0x33ed2c70 -> :sswitch_82
        -0x26c690ef -> :sswitch_78
        -0x718ab14 -> :sswitch_6d
        0xb642643 -> :sswitch_63
        0x2806a145 -> :sswitch_59
        0x3c89ff0f -> :sswitch_4f
        0x5c3d4a84 -> :sswitch_45
    .end sparse-switch

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_12a
        :pswitch_12a
        :pswitch_10b
        :pswitch_ff
        :pswitch_fb
        :pswitch_f7
        :pswitch_f3
        :pswitch_d9
        :pswitch_be
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 3
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->taskRemoved:Z

    .line 703
    return-void
.end method
