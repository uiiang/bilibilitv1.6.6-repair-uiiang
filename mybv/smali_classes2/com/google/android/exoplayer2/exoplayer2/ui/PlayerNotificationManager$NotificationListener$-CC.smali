.class public final synthetic Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener$-CC;
.super Ljava/lang/Object;
.source "PlayerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onNotificationCancelled(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;IZ)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;
    .param p1, "notificationId"    # I
    .param p2, "dismissedByUser"    # Z

    .line 300
    return-void
.end method

.method public static $default$onNotificationPosted(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;ILandroid/app/Notification;Z)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "ongoing"    # Z

    .line 313
    return-void
.end method
