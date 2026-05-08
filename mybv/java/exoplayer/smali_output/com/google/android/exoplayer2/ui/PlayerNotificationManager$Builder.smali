.class public Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
.super Ljava/lang/Object;
.source "PlayerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected channelDescriptionResourceId:I

.field protected final channelId:Ljava/lang/String;

.field protected channelImportance:I

.field protected channelNameResourceId:I

.field protected final context:Landroid/content/Context;

.field protected customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

.field protected fastForwardActionIconResourceId:I

.field protected groupKey:Ljava/lang/String;

.field protected mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

.field protected nextActionIconResourceId:I

.field protected final notificationId:I

.field protected notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

.field protected pauseActionIconResourceId:I

.field protected playActionIconResourceId:I

.field protected previousActionIconResourceId:I

.field protected rewindActionIconResourceId:I

.field protected smallIconResourceId:I

.field protected stopActionIconResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationId"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    if-lez p2, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 364
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->context:Landroid/content/Context;

    .line 365
    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->notificationId:I

    .line 366
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->channelId:Ljava/lang/String;

    .line 367
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->channelImportance:I

    .line 368
    new-instance v0, Lcom/google/android/exoplayer2/ui/DefaultMediaDescriptionAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultMediaDescriptionAdapter;-><init>(Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    .line 369
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_small_icon:I

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->smallIconResourceId:I

    .line 370
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_play:I

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->playActionIconResourceId:I

    .line 371
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_pause:I

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->pauseActionIconResourceId:I

    .line 372
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_stop:I

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->stopActionIconResourceId:I

    .line 373
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_rewind:I

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->rewindActionIconResourceId:I

    .line 374
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_fastforward:I

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->fastForwardActionIconResourceId:I

    .line 375
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_previous:I

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->previousActionIconResourceId:I

    .line 376
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_next:I

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->nextActionIconResourceId:I

    .line 377
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationId"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "mediaDescriptionAdapter"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 350
    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    .line 351
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
    .registers 23

    .line 569
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->channelNameResourceId:I

    if-eqz v1, :cond_11

    .line 570
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->channelId:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->channelDescriptionResourceId:I

    iget v5, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->channelImportance:I

    invoke-static {v2, v3, v1, v4, v5}, Lcom/google/android/exoplayer2/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;III)V

    .line 578
    :cond_11
    new-instance v1, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->context:Landroid/content/Context;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->channelId:Ljava/lang/String;

    iget v9, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->notificationId:I

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    iget-object v11, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    iget v13, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->smallIconResourceId:I

    iget v14, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->playActionIconResourceId:I

    iget v15, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->pauseActionIconResourceId:I

    iget v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->stopActionIconResourceId:I

    iget v3, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->rewindActionIconResourceId:I

    iget v4, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->fastForwardActionIconResourceId:I

    iget v5, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->previousActionIconResourceId:I

    iget v6, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->nextActionIconResourceId:I

    move/from16 v19, v5

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->groupKey:Ljava/lang/String;

    move/from16 v20, v6

    move-object v6, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v21, v5

    invoke-direct/range {v6 .. v21}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;IIIIIIIILjava/lang/String;)V

    return-object v1
.end method

.method public setChannelDescriptionResourceId(I)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "channelDescriptionResourceId"    # I

    .line 403
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->channelDescriptionResourceId:I

    .line 404
    return-object p0
.end method

.method public setChannelImportance(I)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "channelImportance"    # I

    .line 417
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->channelImportance:I

    .line 418
    return-object p0
.end method

.method public setChannelNameResourceId(I)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "channelNameResourceId"    # I

    .line 389
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->channelNameResourceId:I

    .line 390
    return-object p0
.end method

.method public setCustomActionReceiver(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "customActionReceiver"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    .line 441
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    .line 442
    return-object p0
.end method

.method public setFastForwardActionIconResourceId(I)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "fastForwardActionIconResourceId"    # I

    .line 515
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->fastForwardActionIconResourceId:I

    .line 516
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "groupKey"    # Ljava/lang/String;

    .line 551
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->groupKey:Ljava/lang/String;

    .line 552
    return-object p0
.end method

.method public setMediaDescriptionAdapter(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "mediaDescriptionAdapter"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    .line 563
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    .line 564
    return-object p0
.end method

.method public setNextActionIconResourceId(I)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "nextActionIconResourceId"    # I

    .line 539
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->nextActionIconResourceId:I

    .line 540
    return-object p0
.end method

.method public setNotificationListener(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "notificationListener"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    .line 429
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    .line 430
    return-object p0
.end method

.method public setPauseActionIconResourceId(I)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "pauseActionIconResourceId"    # I

    .line 478
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->pauseActionIconResourceId:I

    .line 479
    return-object p0
.end method

.method public setPlayActionIconResourceId(I)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "playActionIconResourceId"    # I

    .line 466
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->playActionIconResourceId:I

    .line 467
    return-object p0
.end method

.method public setPreviousActionIconResourceId(I)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "previousActionIconResourceId"    # I

    .line 527
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->previousActionIconResourceId:I

    .line 528
    return-object p0
.end method

.method public setRewindActionIconResourceId(I)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "rewindActionIconResourceId"    # I

    .line 502
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->rewindActionIconResourceId:I

    .line 503
    return-object p0
.end method

.method public setSmallIconResourceId(I)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "smallIconResourceId"    # I

    .line 454
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->smallIconResourceId:I

    .line 455
    return-object p0
.end method

.method public setStopActionIconResourceId(I)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    .registers 2
    .param p1, "stopActionIconResourceId"    # I

    .line 490
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;->stopActionIconResourceId:I

    .line 491
    return-object p0
.end method
