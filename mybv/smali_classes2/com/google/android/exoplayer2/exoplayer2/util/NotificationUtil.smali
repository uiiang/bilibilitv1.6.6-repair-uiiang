.class public final Lcom/google/android/exoplayer2/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/NotificationUtil$Importance;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotificationChannel(Landroid/content/Context;Ljava/lang/String;III)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "nameResourceId"    # I
    .param p3, "descriptionResourceId"    # I
    .param p4, "importance"    # I

    .line 117
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2a

    .line 118
    nop

    .line 120
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 119
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 121
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/NotificationChannel;

    .line 122
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 123
    .local v1, "channel":Landroid/app/NotificationChannel;
    if-eqz p3, :cond_27

    .line 124
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 126
    :cond_27
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 128
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "channel":Landroid/app/NotificationChannel;
    :cond_2a
    return-void
.end method

.method public static setNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 142
    nop

    .line 143
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 144
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p2, :cond_15

    .line 145
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_18

    .line 147
    :cond_15
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 149
    :goto_18
    return-void
.end method
