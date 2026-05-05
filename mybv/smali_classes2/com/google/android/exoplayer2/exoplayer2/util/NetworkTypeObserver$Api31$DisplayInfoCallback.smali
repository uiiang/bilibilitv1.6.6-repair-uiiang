.class final Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;
.super Landroid/telephony/TelephonyCallback;
.source "NetworkTypeObserver.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayInfoCallback"
.end annotation


# instance fields
.field private final instance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V
    .registers 2
    .param p1, "instance"    # Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    .line 254
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;->instance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    .line 256
    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 6
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 260
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    .line 261
    .local v0, "overrideNetworkType":I
    const/4 v1, 0x3

    const/4 v2, 0x5

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    if-ne v0, v2, :cond_e

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v1, 0x1

    .line 265
    .local v1, "is5gNsa":Z
    :goto_11
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;->instance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    if-eqz v1, :cond_17

    const/16 v2, 0xa

    :cond_17
    # invokes: Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->updateNetworkType(I)V
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->access$200(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;I)V

    .line 266
    return-void
.end method
