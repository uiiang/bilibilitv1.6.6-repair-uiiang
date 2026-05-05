.class final Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31;
.super Ljava/lang/Object;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disambiguate4gAnd5gNsa(Landroid/content/Context;Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    .line 236
    :try_start_0
    const-string v0, "phone"

    .line 237
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 238
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;-><init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V

    .line 239
    .local v1, "callback":Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 246
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v1    # "callback":Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;
    goto :goto_23

    .line 243
    :catch_1e
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x5

    # invokes: Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->updateNetworkType(I)V
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->access$200(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;I)V

    .line 247
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_23
    return-void
.end method
