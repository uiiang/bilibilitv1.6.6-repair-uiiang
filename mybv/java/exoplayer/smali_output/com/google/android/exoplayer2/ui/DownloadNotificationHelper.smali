.class public final Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;
.super Ljava/lang/Object;
.source "DownloadNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper$Api31;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NULL_STRING_ID:I


# instance fields
.field private final notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 59
    return-void
.end method

.method private buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smallIcon"    # I
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "titleStringId"    # I

    .line 220
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smallIcon"    # I
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "titleStringId"    # I
    .param p6, "maxProgress"    # I
    .param p7, "currentProgress"    # I
    .param p8, "indeterminateProgress"    # Z
    .param p9, "ongoing"    # Z
    .param p10, "showWhen"    # Z

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 246
    const/4 v1, 0x0

    if-nez p5, :cond_c

    move-object v2, v1

    goto :goto_14

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    :goto_14
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 249
    if-nez p4, :cond_21

    goto :goto_2a

    :cond_21
    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v1, p4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    .line 248
    :goto_2a
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p6, p7, p8}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p9}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p10}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 253
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_47

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper$Api31;->setForegroundServiceBehavior(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 256
    :cond_47
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildDownloadCompletedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smallIcon"    # I
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "message"    # Ljava/lang/String;

    .line 192
    sget v6, Lcom/google/android/exoplayer2/core/R$string;->exo_download_completed:I

    .line 193
    .local v6, "titleStringId":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public buildDownloadFailedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smallIcon"    # I
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "message"    # Ljava/lang/String;

    .line 210
    sget v6, Lcom/google/android/exoplayer2/core/R$string;->exo_download_failed:I

    .line 211
    .local v6, "titleStringId":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smallIcon"    # I
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    .local p5, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;I)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;I)Landroid/app/Notification;
    .registers 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smallIcon"    # I
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "message"    # Ljava/lang/String;
    .param p6, "notMetRequirements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;I)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 94
    .local p5, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    const/4 v0, 0x0

    .line 95
    .local v0, "totalPercentage":F
    const/4 v1, 0x0

    .line 96
    .local v1, "downloadTaskCount":I
    const/4 v2, 0x1

    .line 97
    .local v2, "allDownloadPercentagesUnknown":Z
    const/4 v3, 0x0

    .line 98
    .local v3, "haveDownloadedBytes":Z
    const/4 v4, 0x0

    .line 99
    .local v4, "haveDownloadingTasks":Z
    const/4 v5, 0x0

    .line 100
    .local v5, "haveQueuedTasks":Z
    const/4 v6, 0x0

    .line 101
    .local v6, "haveRemovingTasks":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v7, v8, :cond_41

    .line 102
    move-object/from16 v8, p5

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/offline/Download;

    .line 103
    .local v11, "download":Lcom/google/android/exoplayer2/offline/Download;
    iget v12, v11, Lcom/google/android/exoplayer2/offline/Download;->state:I

    sparse-switch v12, :sswitch_data_ae

    goto :goto_3e

    .line 105
    :sswitch_1e
    const/4 v6, 0x1

    .line 106
    goto :goto_3e

    .line 112
    :sswitch_20
    const/4 v4, 0x1

    .line 113
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/offline/Download;->getPercentDownloaded()F

    move-result v12

    .line 114
    .local v12, "downloadPercentage":F
    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v13, v12, v13

    if-eqz v13, :cond_2d

    .line 115
    const/4 v2, 0x0

    .line 116
    add-float/2addr v0, v12

    .line 118
    :cond_2d
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/offline/Download;->getBytesDownloaded()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-lez v17, :cond_38

    const/4 v9, 0x1

    :cond_38
    or-int/2addr v3, v9

    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 120
    goto :goto_3e

    .line 108
    .end local v12    # "downloadPercentage":F
    :sswitch_3c
    const/4 v5, 0x1

    .line 109
    nop

    .line 101
    .end local v11    # "download":Lcom/google/android/exoplayer2/offline/Download;
    :goto_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_41
    move-object/from16 v8, p5

    .line 131
    .end local v7    # "i":I
    const/4 v7, 0x1

    .line 132
    .local v7, "showProgress":Z
    if-eqz v4, :cond_4b

    .line 133
    sget v11, Lcom/google/android/exoplayer2/core/R$string;->exo_download_downloading:I

    move/from16 v22, v11

    .local v11, "titleStringId":I
    goto :goto_71

    .line 134
    .end local v11    # "titleStringId":I
    :cond_4b
    if-eqz v5, :cond_67

    if-eqz p6, :cond_67

    .line 135
    const/4 v7, 0x0

    .line 136
    and-int/lit8 v11, p6, 0x2

    if-eqz v11, :cond_59

    .line 139
    sget v11, Lcom/google/android/exoplayer2/core/R$string;->exo_download_paused_for_wifi:I

    move/from16 v22, v11

    .restart local v11    # "titleStringId":I
    goto :goto_71

    .line 140
    .end local v11    # "titleStringId":I
    :cond_59
    and-int/lit8 v11, p6, 0x1

    if-eqz v11, :cond_62

    .line 141
    sget v11, Lcom/google/android/exoplayer2/core/R$string;->exo_download_paused_for_network:I

    move/from16 v22, v11

    .restart local v11    # "titleStringId":I
    goto :goto_71

    .line 143
    .end local v11    # "titleStringId":I
    :cond_62
    sget v11, Lcom/google/android/exoplayer2/core/R$string;->exo_download_paused:I

    move/from16 v22, v11

    .restart local v11    # "titleStringId":I
    goto :goto_71

    .line 145
    .end local v11    # "titleStringId":I
    :cond_67
    if-eqz v6, :cond_6e

    .line 146
    sget v11, Lcom/google/android/exoplayer2/core/R$string;->exo_download_removing:I

    move/from16 v22, v11

    .restart local v11    # "titleStringId":I
    goto :goto_71

    .line 149
    .end local v11    # "titleStringId":I
    :cond_6e
    const/4 v11, 0x0

    move/from16 v22, v11

    .line 152
    .local v22, "titleStringId":I
    :goto_71
    const/4 v11, 0x0

    .line 153
    .local v11, "maxProgress":I
    const/4 v12, 0x0

    .line 154
    .local v12, "currentProgress":I
    const/4 v13, 0x0

    .line 155
    .local v13, "indeterminateProgress":Z
    if-eqz v7, :cond_8f

    .line 156
    const/16 v11, 0x64

    .line 157
    if-eqz v4, :cond_89

    .line 158
    int-to-float v14, v1

    div-float v14, v0, v14

    float-to-int v12, v14

    .line 159
    if-eqz v2, :cond_83

    if-eqz v3, :cond_83

    const/4 v9, 0x1

    :cond_83
    move v13, v9

    move v9, v11

    move v10, v12

    move/from16 v23, v13

    goto :goto_93

    .line 161
    :cond_89
    const/4 v13, 0x1

    move v9, v11

    move v10, v12

    move/from16 v23, v13

    goto :goto_93

    .line 155
    :cond_8f
    move v9, v11

    move v10, v12

    move/from16 v23, v13

    .line 165
    .end local v11    # "maxProgress":I
    .end local v12    # "currentProgress":I
    .end local v13    # "indeterminateProgress":Z
    .local v9, "maxProgress":I
    .local v10, "currentProgress":I
    .local v23, "indeterminateProgress":Z
    :goto_93
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, v22

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v23

    invoke-direct/range {v11 .. v21}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;

    move-result-object v11

    return-object v11

    :sswitch_data_ae
    .sparse-switch
        0x0 -> :sswitch_3c
        0x2 -> :sswitch_20
        0x5 -> :sswitch_1e
        0x7 -> :sswitch_20
    .end sparse-switch
.end method
