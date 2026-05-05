.class final Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;->this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;Lcom/google/android/exoplayer2/util/NetworkTypeObserver$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/util/NetworkTypeObserver$1;

    .line 217
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;-><init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 221
    # invokes: Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getNetworkTypeFromConnectivityManager(Landroid/content/Context;)I
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->access$100(Landroid/content/Context;)I

    move-result v0

    .line 222
    .local v0, "networkType":I
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_13

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    .line 224
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;->this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31;->disambiguate4gAnd5gNsa(Landroid/content/Context;Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V

    goto :goto_18

    .line 226
    :cond_13
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;->this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    # invokes: Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->updateNetworkType(I)V
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->access$200(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;I)V

    .line 228
    :goto_18
    return-void
.end method
