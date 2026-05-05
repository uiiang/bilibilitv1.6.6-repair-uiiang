.class public Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.super Ljava/lang/Object;
.source "PlayerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Priority;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Visibility;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACTION_DISMISS:Ljava/lang/String; = "com.google.android.exoplayer.dismiss"

.field public static final ACTION_FAST_FORWARD:Ljava/lang/String; = "com.google.android.exoplayer.ffwd"

.field public static final ACTION_NEXT:Ljava/lang/String; = "com.google.android.exoplayer.next"

.field public static final ACTION_PAUSE:Ljava/lang/String; = "com.google.android.exoplayer.pause"

.field public static final ACTION_PLAY:Ljava/lang/String; = "com.google.android.exoplayer.play"

.field public static final ACTION_PREVIOUS:Ljava/lang/String; = "com.google.android.exoplayer.prev"

.field public static final ACTION_REWIND:Ljava/lang/String; = "com.google.android.exoplayer.rewind"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.google.android.exoplayer.stop"

.field public static final EXTRA_INSTANCE_ID:Ljava/lang/String; = "INSTANCE_ID"

.field private static final MSG_START_OR_UPDATE_NOTIFICATION:I = 0x0

.field private static final MSG_UPDATE_NOTIFICATION_BITMAP:I = 0x1

.field private static instanceIdCounter:I


# instance fields
.field private badgeIconType:I

.field private builder:Landroidx/core/app/NotificationCompat$Builder;

.field private builderActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final channelId:Ljava/lang/String;

.field private color:I

.field private colorized:Z

.field private final context:Landroid/content/Context;

.field private currentNotificationTag:I

.field private final customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

.field private final customActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private defaults:I

.field private final dismissPendingIntent:Landroid/app/PendingIntent;

.field private groupKey:Ljava/lang/String;

.field private final instanceId:I

.field private final intentFilter:Landroid/content/IntentFilter;

.field private isNotificationStarted:Z

.field private final mainHandler:Landroid/os/Handler;

.field private final mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

.field private mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private final notificationBroadcastReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

.field private final notificationId:I

.field private final notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

.field private final notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field private final playbackActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private player:Lcom/google/android/exoplayer2/Player;

.field private final playerListener:Lcom/google/android/exoplayer2/Player$Listener;

.field private priority:I

.field private smallIconResourceId:I

.field private useChronometer:Z

.field private useFastForwardAction:Z

.field private useFastForwardActionInCompactView:Z

.field private useNextAction:Z

.field private useNextActionInCompactView:Z

.field private usePlayPauseActions:Z

.field private usePreviousAction:Z

.field private usePreviousActionInCompactView:Z

.field private useRewindAction:Z

.field private useRewindActionInCompactView:Z

.field private useStopAction:Z

.field private visibility:I


# direct methods
.method public static synthetic $r8$lambda$hDN6RMWHvTCSAt_reWH1_HHmp5E(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;IIIIIIIILjava/lang/String;)V
    .registers 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "notificationId"    # I
    .param p4, "mediaDescriptionAdapter"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;
    .param p5, "notificationListener"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;
    .param p6, "customActionReceiver"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;
    .param p7, "smallIconResourceId"    # I
    .param p8, "playActionIconResourceId"    # I
    .param p9, "pauseActionIconResourceId"    # I
    .param p10, "stopActionIconResourceId"    # I
    .param p11, "rewindActionIconResourceId"    # I
    .param p12, "fastForwardActionIconResourceId"    # I
    .param p13, "previousActionIconResourceId"    # I
    .param p14, "nextActionIconResourceId"    # I
    .param p15, "groupKey"    # Ljava/lang/String;

    .line 737
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 738
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 739
    .end local p1    # "context":Landroid/content/Context;
    .local v11, "context":Landroid/content/Context;
    iput-object v11, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->context:Landroid/content/Context;

    .line 740
    move-object/from16 v12, p2

    iput-object v12, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->channelId:Ljava/lang/String;

    .line 741
    move/from16 v13, p3

    iput v13, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    .line 742
    move-object/from16 v14, p4

    iput-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    .line 743
    move-object/from16 v15, p5

    iput-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    .line 744
    iput-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    .line 745
    move/from16 v10, p7

    iput v10, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->smallIconResourceId:I

    .line 746
    move-object/from16 v9, p15

    iput-object v9, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->groupKey:Ljava/lang/String;

    .line 747
    sget v3, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceIdCounter:I

    add-int/lit8 v2, v3, 0x1

    sput v2, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceIdCounter:I

    iput v3, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    .line 752
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v4, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v8

    .line 753
    .local v8, "mainHandler":Landroid/os/Handler;
    iput-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mainHandler:Landroid/os/Handler;

    .line 754
    invoke-static {v11}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 755
    new-instance v2, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playerListener:Lcom/google/android/exoplayer2/Player$Listener;

    .line 756
    new-instance v2, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

    invoke-direct {v2, v0, v4}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationBroadcastReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

    .line 757
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    .line 758
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePreviousAction:Z

    .line 759
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNextAction:Z

    .line 760
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePlayPauseActions:Z

    .line 761
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useRewindAction:Z

    .line 762
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useFastForwardAction:Z

    .line 763
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->colorized:Z

    .line 764
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useChronometer:Z

    .line 765
    const/4 v4, 0x0

    iput v4, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->color:I

    .line 766
    iput v4, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->defaults:I

    .line 767
    const/4 v4, -0x1

    iput v4, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->priority:I

    .line 768
    iput v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->badgeIconType:I

    .line 769
    iput v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->visibility:I

    .line 772
    nop

    .line 773
    move-object v2, v11

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move-object/from16 v16, v8

    .end local v8    # "mainHandler":Landroid/os/Handler;
    .local v16, "mainHandler":Landroid/os/Handler;
    move/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p14

    invoke-static/range {v2 .. v10}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createPlaybackActions(Landroid/content/Context;IIIIIIII)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    .line 783
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_95
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 784
    .local v3, "action":Ljava/lang/String;
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 785
    .end local v3    # "action":Ljava/lang/String;
    goto :goto_95

    .line 786
    :cond_a7
    nop

    .line 787
    if-eqz v1, :cond_b1

    .line 788
    iget v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    invoke-interface {v1, v11, v2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;->createCustomActions(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v2

    goto :goto_b5

    .line 789
    :cond_b1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    :goto_b5
    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;

    .line 790
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 791
    .restart local v3    # "action":Ljava/lang/String;
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    .end local v3    # "action":Ljava/lang/String;
    goto :goto_bf

    .line 793
    :cond_d1
    iget v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    const-string v3, "com.google.android.exoplayer.dismiss"

    invoke-static {v3, v11, v2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->dismissPendingIntent:Landroid/app/PendingIntent;

    .line 794
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Landroid/graphics/Bitmap;I)V
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->postUpdateNotificationBitmap(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    .line 180
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->postStartOrUpdateNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/Player;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    .line 180
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    .line 180
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
    .param p1, "x1"    # Z

    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopNotification(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    return-object v0
.end method

.method private static createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;
    .registers 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # I

    .line 1495
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1496
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "INSTANCE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1499
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1b

    .line 1500
    const/high16 v1, 0xc000000

    .local v1, "pendingFlags":I
    goto :goto_1d

    .line 1502
    .end local v1    # "pendingFlags":I
    :cond_1b
    const/high16 v1, 0x8000000

    .line 1505
    .restart local v1    # "pendingFlags":I
    :goto_1d
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private static createPlaybackActions(Landroid/content/Context;IIIIIIII)Ljava/util/Map;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instanceId"    # I
    .param p2, "playActionIconResourceId"    # I
    .param p3, "pauseActionIconResourceId"    # I
    .param p4, "stopActionIconResourceId"    # I
    .param p5, "rewindActionIconResourceId"    # I
    .param p6, "fastForwardActionIconResourceId"    # I
    .param p7, "previousActionIconResourceId"    # I
    .param p8, "nextActionIconResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIIIIIII)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .line 1446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1447
    .local v0, "actions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/core/app/NotificationCompat$Action;>;"
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_play_description:I

    .line 1451
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1452
    const-string v3, "com.google.android.exoplayer.play"

    invoke-static {v3, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, p2, v2, v4}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1447
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_pause_description:I

    .line 1457
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1458
    const-string v3, "com.google.android.exoplayer.pause"

    invoke-static {v3, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, p3, v2, v4}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1453
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_stop_description:I

    .line 1463
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1464
    const-string v3, "com.google.android.exoplayer.stop"

    invoke-static {v3, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, p4, v2, v4}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1459
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_rewind_description:I

    .line 1469
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1470
    const-string v3, "com.google.android.exoplayer.rewind"

    invoke-static {v3, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, p5, v2, v4}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1465
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fastforward_description:I

    .line 1475
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1476
    const-string v3, "com.google.android.exoplayer.ffwd"

    invoke-static {v3, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, p6, v2, v4}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1471
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_previous_description:I

    .line 1481
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1482
    const-string v3, "com.google.android.exoplayer.prev"

    invoke-static {v3, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, p7, v2, v4}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1477
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_next_description:I

    .line 1487
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1488
    const-string v3, "com.google.android.exoplayer.next"

    invoke-static {v3, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, p8, v2, v4}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1483
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1419
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 1431
    const/4 v0, 0x0

    return v0

    .line 1426
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->currentNotificationTag:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_27

    .line 1427
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->startOrUpdateNotification(Lcom/google/android/exoplayer2/Player;Landroid/graphics/Bitmap;)V

    goto :goto_27

    .line 1421
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_27

    .line 1422
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->startOrUpdateNotification(Lcom/google/android/exoplayer2/Player;Landroid/graphics/Bitmap;)V

    .line 1433
    :cond_27
    :goto_27
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_7
    .end packed-switch
.end method

.method private postStartOrUpdateNotification()V
    .registers 3

    .line 1406
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1407
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1409
    :cond_e
    return-void
.end method

.method private postUpdateNotificationBitmap(Landroid/graphics/Bitmap;I)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "notificationTag"    # I

    .line 1412
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mainHandler:Landroid/os/Handler;

    .line 1413
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1415
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1416
    return-void
.end method

.method private static setLargeIcon(Landroidx/core/app/NotificationCompat$Builder;Landroid/graphics/Bitmap;)V
    .registers 2
    .param p0, "builder"    # Landroidx/core/app/NotificationCompat$Builder;
    .param p1, "largeIcon"    # Landroid/graphics/Bitmap;

    .line 1510
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1511
    return-void
.end method

.method private startOrUpdateNotification(Lcom/google/android/exoplayer2/Player;Landroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1166
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->getOngoing(Lcom/google/android/exoplayer2/Player;)Z

    move-result v0

    .line 1167
    .local v0, "ongoing":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createNotification(Lcom/google/android/exoplayer2/Player;Landroidx/core/app/NotificationCompat$Builder;ZLandroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 1168
    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 1169
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopNotification(Z)V

    .line 1170
    return-void

    .line 1172
    :cond_13
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1173
    .local v1, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-virtual {v3, v4, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 1174
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    if-nez v3, :cond_2b

    .line 1175
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationBroadcastReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->registerReceiverNotExported(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1177
    :cond_2b
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    const/4 v4, 0x1

    if-eqz v3, :cond_3c

    .line 1180
    iget v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    if-nez v0, :cond_38

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    if-nez v6, :cond_39

    :cond_38
    const/4 v2, 0x1

    :cond_39
    invoke-interface {v3, v5, v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;->onNotificationPosted(ILandroid/app/Notification;Z)V

    .line 1183
    :cond_3c
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    .line 1184
    return-void
.end method

.method private stopNotification(Z)V
    .registers 4
    .param p1, "dismissedByUser"    # Z

    .line 1187
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    if-eqz v0, :cond_23

    .line 1188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    .line 1189
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1190
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 1191
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationBroadcastReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1192
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    if-eqz v0, :cond_23

    .line 1193
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;->onNotificationCancelled(IZ)V

    .line 1196
    :cond_23
    return-void
.end method


# virtual methods
.method protected createNotification(Lcom/google/android/exoplayer2/Player;Landroidx/core/app/NotificationCompat$Builder;ZLandroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 14
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p2, "builder"    # Landroidx/core/app/NotificationCompat$Builder;
    .param p3, "ongoing"    # Z
    .param p4, "largeIcon"    # Landroid/graphics/Bitmap;

    .line 1216
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    .line 1217
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1218
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1219
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->builderActions:Ljava/util/List;

    .line 1220
    return-object v1

    .line 1223
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->getActions(Lcom/google/android/exoplayer2/Player;)Ljava/util/List;

    move-result-object v0

    .line 1224
    .local v0, "actionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1225
    .local v3, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationCompat$Action;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_59

    .line 1226
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1229
    .local v5, "actionName":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1230
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$Action;

    goto :goto_50

    .line 1231
    :cond_48
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$Action;

    :goto_50
    nop

    .line 1232
    .local v6, "action":Landroidx/core/app/NotificationCompat$Action;
    if-eqz v6, :cond_56

    .line 1233
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "action":Landroidx/core/app/NotificationCompat$Action;
    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 1237
    .end local v4    # "i":I
    :cond_59
    if-eqz p2, :cond_63

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->builderActions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    .line 1238
    :cond_63
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->channelId:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object p2, v4

    .line 1239
    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->builderActions:Ljava/util/List;

    .line 1240
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_70
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_82

    .line 1241
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1240
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    .line 1245
    .end local v4    # "i":I
    :cond_82
    new-instance v4, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v4}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 1246
    .local v4, "mediaStyle":Landroidx/media/app/NotificationCompat$MediaStyle;
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v5, :cond_8e

    .line 1247
    invoke-virtual {v4, v5}, Landroidx/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 1249
    :cond_8e
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->getActionIndicesForCompactView(Ljava/util/List;Lcom/google/android/exoplayer2/Player;)[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 1251
    xor-int/lit8 v5, p3, 0x1

    invoke-virtual {v4, v5}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowCancelButton(Z)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 1252
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->dismissPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroidx/media/app/NotificationCompat$MediaStyle;->setCancelButtonIntent(Landroid/app/PendingIntent;)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 1253
    invoke-virtual {p2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1256
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->dismissPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1259
    iget v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->badgeIconType:I

    .line 1260
    invoke-virtual {p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 1261
    invoke-virtual {v5, p3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->color:I

    .line 1262
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->colorized:Z

    .line 1263
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->smallIconResourceId:I

    .line 1264
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->visibility:I

    .line 1265
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->priority:I

    .line 1266
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->defaults:I

    .line 1267
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 1270
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_11a

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useChronometer:Z

    if-eqz v5, :cond_11a

    .line 1272
    const/16 v5, 0x10

    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_11a

    .line 1273
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_11a

    .line 1274
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v5

    if-nez v5, :cond_11a

    .line 1275
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isCurrentMediaItemDynamic()Z

    move-result v5

    if-nez v5, :cond_11a

    .line 1276
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_11a

    .line 1277
    nop

    .line 1278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 1279
    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 1280
    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_122

    .line 1282
    :cond_11a
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 1286
    :goto_122
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    invoke-interface {v5, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->getCurrentContentTitle(Lcom/google/android/exoplayer2/Player;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1287
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    invoke-interface {v5, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->getCurrentContentText(Lcom/google/android/exoplayer2/Player;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1288
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    invoke-interface {v5, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->getCurrentSubText(Lcom/google/android/exoplayer2/Player;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1289
    if-nez p4, :cond_14f

    .line 1290
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    new-instance v6, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;

    iget v7, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->currentNotificationTag:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->currentNotificationTag:I

    invoke-direct {v6, p0, v7, v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;)V

    .line 1291
    invoke-interface {v5, p1, v6}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->getCurrentLargeIcon(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 1294
    :cond_14f
    invoke-static {p2, p4}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->setLargeIcon(Landroidx/core/app/NotificationCompat$Builder;Landroid/graphics/Bitmap;)V

    .line 1295
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->createCurrentContentIntent(Lcom/google/android/exoplayer2/Player;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1297
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->groupKey:Ljava/lang/String;

    if-eqz v1, :cond_162

    .line 1298
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1301
    :cond_162
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 1302
    return-object p2
.end method

.method protected getActionIndicesForCompactView(Ljava/util/List;Lcom/google/android/exoplayer2/Player;)[I
    .registers 12
    .param p2, "player"    # Lcom/google/android/exoplayer2/Player;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/Player;",
            ")[I"
        }
    .end annotation

    .line 1370
    .local p1, "actionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "com.google.android.exoplayer.pause"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1371
    .local v0, "pauseActionIndex":I
    const-string v1, "com.google.android.exoplayer.play"

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1373
    .local v1, "playActionIndex":I
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePreviousActionInCompactView:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_18

    .line 1374
    const-string v2, "com.google.android.exoplayer.prev"

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_24

    .line 1375
    :cond_18
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useRewindActionInCompactView:Z

    if-eqz v2, :cond_23

    const-string v2, "com.google.android.exoplayer.rewind"

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, -0x1

    :goto_24
    nop

    .line 1377
    .local v2, "leftSideActionIndex":I
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNextActionInCompactView:Z

    if-eqz v4, :cond_30

    .line 1378
    const-string v4, "com.google.android.exoplayer.next"

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    goto :goto_3c

    .line 1379
    :cond_30
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useFastForwardActionInCompactView:Z

    if-eqz v4, :cond_3b

    const-string v4, "com.google.android.exoplayer.ffwd"

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    goto :goto_3c

    :cond_3b
    const/4 v4, -0x1

    :goto_3c
    nop

    .line 1381
    .local v4, "rightSideActionIndex":I
    const/4 v5, 0x3

    new-array v5, v5, [I

    .line 1382
    .local v5, "actionIndices":[I
    const/4 v6, 0x0

    .line 1383
    .local v6, "actionCounter":I
    if-eq v2, v3, :cond_48

    .line 1384
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "actionCounter":I
    .local v7, "actionCounter":I
    aput v2, v5, v6

    move v6, v7

    .line 1386
    .end local v7    # "actionCounter":I
    .restart local v6    # "actionCounter":I
    :cond_48
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->shouldShowPlayButton(Lcom/google/android/exoplayer2/Player;)Z

    move-result v7

    .line 1387
    .local v7, "shouldShowPlayButton":Z
    if-eq v0, v3, :cond_56

    if-nez v7, :cond_56

    .line 1388
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "actionCounter":I
    .local v8, "actionCounter":I
    aput v0, v5, v6

    move v6, v8

    goto :goto_5f

    .line 1389
    .end local v8    # "actionCounter":I
    .restart local v6    # "actionCounter":I
    :cond_56
    if-eq v1, v3, :cond_5f

    if-eqz v7, :cond_5f

    .line 1390
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "actionCounter":I
    .restart local v8    # "actionCounter":I
    aput v1, v5, v6

    move v6, v8

    .line 1392
    .end local v8    # "actionCounter":I
    .restart local v6    # "actionCounter":I
    :cond_5f
    :goto_5f
    if-eq v4, v3, :cond_66

    .line 1393
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "actionCounter":I
    .local v3, "actionCounter":I
    aput v4, v5, v6

    move v6, v3

    .line 1395
    .end local v3    # "actionCounter":I
    .restart local v6    # "actionCounter":I
    :cond_66
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    return-object v3
.end method

.method protected getActions(Lcom/google/android/exoplayer2/Player;)Ljava/util/List;
    .registers 8
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Player;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1325
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    .line 1326
    .local v0, "enablePrevious":Z
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    .line 1327
    .local v1, "enableRewind":Z
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    .line 1328
    .local v2, "enableFastForward":Z
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v3

    .line 1330
    .local v3, "enableNext":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v4, "stringActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePreviousAction:Z

    if-eqz v5, :cond_27

    if-eqz v0, :cond_27

    .line 1332
    const-string v5, "com.google.android.exoplayer.prev"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    :cond_27
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useRewindAction:Z

    if-eqz v5, :cond_32

    if-eqz v1, :cond_32

    .line 1335
    const-string v5, "com.google.android.exoplayer.rewind"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1337
    :cond_32
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePlayPauseActions:Z

    if-eqz v5, :cond_47

    .line 1338
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->shouldShowPlayButton(Lcom/google/android/exoplayer2/Player;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1339
    const-string v5, "com.google.android.exoplayer.play"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 1341
    :cond_42
    const-string v5, "com.google.android.exoplayer.pause"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    :cond_47
    :goto_47
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useFastForwardAction:Z

    if-eqz v5, :cond_52

    if-eqz v2, :cond_52

    .line 1345
    const-string v5, "com.google.android.exoplayer.ffwd"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    :cond_52
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNextAction:Z

    if-eqz v5, :cond_5d

    if-eqz v3, :cond_5d

    .line 1348
    const-string v5, "com.google.android.exoplayer.next"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1350
    :cond_5d
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    if-eqz v5, :cond_68

    .line 1351
    invoke-interface {v5, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;->getCustomActions(Lcom/google/android/exoplayer2/Player;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1353
    :cond_68
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useStopAction:Z

    if-eqz v5, :cond_71

    .line 1354
    const-string v5, "com.google.android.exoplayer.stop"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1356
    :cond_71
    return-object v4
.end method

.method protected getOngoing(Lcom/google/android/exoplayer2/Player;)Z
    .registers 4
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 1400
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    .line 1401
    .local v0, "playbackState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 1402
    :cond_a
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 1401
    :goto_13
    return v1
.end method

.method public final invalidate()V
    .registers 2

    .line 1160
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    if-eqz v0, :cond_7

    .line 1161
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->postStartOrUpdateNotification()V

    .line 1163
    :cond_7
    return-void
.end method

.method public final setBadgeIconType(I)V
    .registers 3
    .param p1, "badgeIconType"    # I

    .line 1003
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->badgeIconType:I

    if-ne v0, p1, :cond_5

    .line 1004
    return-void

    .line 1006
    :cond_5
    packed-switch p1, :pswitch_data_16

    .line 1013
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1010
    :pswitch_e
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->badgeIconType:I

    .line 1011
    nop

    .line 1015
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 1016
    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public final setColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 1055
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->color:I

    if-eq v0, p1, :cond_9

    .line 1056
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->color:I

    .line 1057
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 1059
    :cond_9
    return-void
.end method

.method public final setColorized(Z)V
    .registers 3
    .param p1, "colorized"    # Z

    .line 1027
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->colorized:Z

    if-eq v0, p1, :cond_9

    .line 1028
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->colorized:Z

    .line 1029
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 1031
    :cond_9
    return-void
.end method

.method public final setDefaults(I)V
    .registers 3
    .param p1, "defaults"    # I

    .line 1041
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->defaults:I

    if-eq v0, p1, :cond_9

    .line 1042
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->defaults:I

    .line 1043
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 1045
    :cond_9
    return-void
.end method

.method public final setMediaSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 3
    .param p1, "token"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 989
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 990
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 991
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 993
    :cond_d
    return-void
.end method

.method public final setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .registers 6
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;

    .line 812
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 813
    if-eqz p1, :cond_20

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :cond_20
    :goto_20
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 814
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_28

    .line 815
    return-void

    .line 817
    :cond_28
    if-eqz v0, :cond_34

    .line 818
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playerListener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 819
    if-nez p1, :cond_34

    .line 820
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopNotification(Z)V

    .line 823
    :cond_34
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    .line 824
    if-eqz p1, :cond_40

    .line 825
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playerListener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 826
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->postStartOrUpdateNotification()V

    .line 828
    :cond_40
    return-void
.end method

.method public final setPriority(I)V
    .registers 3
    .param p1, "priority"    # I

    .line 1076
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->priority:I

    if-ne v0, p1, :cond_5

    .line 1077
    return-void

    .line 1079
    :cond_5
    packed-switch p1, :pswitch_data_16

    .line 1088
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1085
    :pswitch_e
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->priority:I

    .line 1086
    nop

    .line 1090
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 1091
    return-void

    nop

    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public final setSmallIcon(I)V
    .registers 3
    .param p1, "smallIconResourceId"    # I

    .line 1101
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->smallIconResourceId:I

    if-eq v0, p1, :cond_9

    .line 1102
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->smallIconResourceId:I

    .line 1103
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 1105
    :cond_9
    return-void
.end method

.method public final setUseChronometer(Z)V
    .registers 3
    .param p1, "useChronometer"    # Z

    .line 1126
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useChronometer:Z

    if-eq v0, p1, :cond_9

    .line 1127
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useChronometer:Z

    .line 1128
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 1130
    :cond_9
    return-void
.end method

.method public final setUseFastForwardAction(Z)V
    .registers 3
    .param p1, "useFastForwardAction"    # Z

    .line 900
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useFastForwardAction:Z

    if-eq v0, p1, :cond_9

    .line 901
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useFastForwardAction:Z

    .line 902
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 904
    :cond_9
    return-void
.end method

.method public final setUseFastForwardActionInCompactView(Z)V
    .registers 3
    .param p1, "useFastForwardActionInCompactView"    # Z

    .line 930
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useFastForwardActionInCompactView:Z

    if-eq v0, p1, :cond_e

    .line 931
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useFastForwardActionInCompactView:Z

    .line 932
    if-eqz p1, :cond_b

    .line 933
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNextActionInCompactView:Z

    .line 935
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 937
    :cond_e
    return-void
.end method

.method public final setUseNextAction(Z)V
    .registers 3
    .param p1, "useNextAction"    # Z

    .line 836
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNextAction:Z

    if-eq v0, p1, :cond_9

    .line 837
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNextAction:Z

    .line 838
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 840
    :cond_9
    return-void
.end method

.method public final setUseNextActionInCompactView(Z)V
    .registers 3
    .param p1, "useNextActionInCompactView"    # Z

    .line 865
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNextActionInCompactView:Z

    if-eq v0, p1, :cond_e

    .line 866
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNextActionInCompactView:Z

    .line 867
    if-eqz p1, :cond_b

    .line 868
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useFastForwardActionInCompactView:Z

    .line 870
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 872
    :cond_e
    return-void
.end method

.method public final setUsePlayPauseActions(Z)V
    .registers 3
    .param p1, "usePlayPauseActions"    # Z

    .line 964
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePlayPauseActions:Z

    if-eq v0, p1, :cond_9

    .line 965
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePlayPauseActions:Z

    .line 966
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 968
    :cond_9
    return-void
.end method

.method public final setUsePreviousAction(Z)V
    .registers 3
    .param p1, "usePreviousAction"    # Z

    .line 848
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePreviousAction:Z

    if-eq v0, p1, :cond_9

    .line 849
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePreviousAction:Z

    .line 850
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 852
    :cond_9
    return-void
.end method

.method public final setUsePreviousActionInCompactView(Z)V
    .registers 3
    .param p1, "usePreviousActionInCompactView"    # Z

    .line 885
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePreviousActionInCompactView:Z

    if-eq v0, p1, :cond_e

    .line 886
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePreviousActionInCompactView:Z

    .line 887
    if-eqz p1, :cond_b

    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useRewindActionInCompactView:Z

    .line 890
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 892
    :cond_e
    return-void
.end method

.method public final setUseRewindAction(Z)V
    .registers 3
    .param p1, "useRewindAction"    # Z

    .line 912
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useRewindAction:Z

    if-eq v0, p1, :cond_9

    .line 913
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useRewindAction:Z

    .line 914
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 916
    :cond_9
    return-void
.end method

.method public final setUseRewindActionInCompactView(Z)V
    .registers 3
    .param p1, "useRewindActionInCompactView"    # Z

    .line 949
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useRewindActionInCompactView:Z

    if-eq v0, p1, :cond_e

    .line 950
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useRewindActionInCompactView:Z

    .line 951
    if-eqz p1, :cond_b

    .line 952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePreviousActionInCompactView:Z

    .line 954
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 956
    :cond_e
    return-void
.end method

.method public final setUseStopAction(Z)V
    .registers 3
    .param p1, "useStopAction"    # Z

    .line 976
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useStopAction:Z

    if-ne v0, p1, :cond_5

    .line 977
    return-void

    .line 979
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useStopAction:Z

    .line 980
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 981
    return-void
.end method

.method public final setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 1143
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->visibility:I

    if-ne v0, p1, :cond_5

    .line 1144
    return-void

    .line 1146
    :cond_5
    packed-switch p1, :pswitch_data_16

    .line 1153
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1150
    :pswitch_e
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->visibility:I

    .line 1151
    nop

    .line 1155
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    .line 1156
    return-void

    nop

    :pswitch_data_16
    .packed-switch -0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method
