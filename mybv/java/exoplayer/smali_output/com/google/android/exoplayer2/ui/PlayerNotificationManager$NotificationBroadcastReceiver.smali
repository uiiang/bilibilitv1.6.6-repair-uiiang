.class Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlayerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V
    .registers 2

    .line 1532
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;

    .line 1532
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1537
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    # getter for: Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$500(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    .line 1538
    .local v0, "player":Lcom/google/android/exoplayer2/Player;
    if-eqz v0, :cond_e2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    .line 1539
    # getter for: Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$600(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Z

    move-result v1

    if-eqz v1, :cond_e2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    .line 1540
    # getter for: Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$700(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)I

    move-result v1

    const-string v2, "INSTANCE_ID"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    # getter for: Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$700(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)I

    move-result v2

    if-eq v1, v2, :cond_26

    goto/16 :goto_e2

    .line 1543
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1544
    .local v1, "action":Ljava/lang/String;
    const-string v2, "com.google.android.exoplayer.play"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1545
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->handlePlayButtonAction(Lcom/google/android/exoplayer2/Player;)Z

    goto/16 :goto_e1

    .line 1546
    :cond_37
    const-string v2, "com.google.android.exoplayer.pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1547
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->handlePauseButtonAction(Lcom/google/android/exoplayer2/Player;)Z

    goto/16 :goto_e1

    .line 1548
    :cond_44
    const-string v2, "com.google.android.exoplayer.prev"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1549
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 1550
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekToPrevious()V

    goto/16 :goto_e1

    .line 1552
    :cond_58
    const-string v2, "com.google.android.exoplayer.rewind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1553
    const/16 v2, 0xb

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 1554
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekBack()V

    goto/16 :goto_e1

    .line 1556
    :cond_6d
    const-string v2, "com.google.android.exoplayer.ffwd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 1557
    const/16 v2, 0xc

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 1558
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekForward()V

    goto :goto_e1

    .line 1560
    :cond_81
    const-string v2, "com.google.android.exoplayer.next"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 1561
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 1562
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekToNext()V

    goto :goto_e1

    .line 1564
    :cond_95
    const-string v2, "com.google.android.exoplayer.stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 1565
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 1566
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 1568
    :cond_a7
    const/16 v2, 0x14

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 1569
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->clearMediaItems()V

    goto :goto_e1

    .line 1571
    :cond_b3
    const-string v2, "com.google.android.exoplayer.dismiss"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 1572
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    const/4 v3, 0x1

    # invokes: Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopNotification(Z)V
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$800(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Z)V

    goto :goto_e1

    .line 1573
    :cond_c2
    if-eqz v1, :cond_e1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    .line 1574
    # getter for: Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$900(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    move-result-object v2

    if-eqz v2, :cond_e1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    .line 1575
    # getter for: Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1000(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 1576
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    # getter for: Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$900(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;->onCustomAction(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1578
    :cond_e1
    :goto_e1
    return-void

    .line 1541
    .end local v1    # "action":Ljava/lang/String;
    :cond_e2
    :goto_e2
    return-void
.end method
