.class final Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkCallback"
.end annotation


# instance fields
.field private networkValidated:Z

.field private receivedCapabilitiesChange:Z

.field final synthetic this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$1;

    .line 188
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;-><init>(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V

    return-void
.end method

.method private postCheckRequirements()V
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    # getter for: Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$300(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method private postRecheckNotMetNetworkRequirements()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    # getter for: Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$300(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method


# virtual methods
.method synthetic lambda$postCheckRequirements$0$com-google-android-exoplayer2-scheduler-RequirementsWatcher$NetworkCallback()V
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    # getter for: Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->networkCallback:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;
    invoke-static {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$400(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    # invokes: Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->checkRequirements()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$200(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V

    .line 229
    :cond_d
    return-void
.end method

.method synthetic lambda$postRecheckNotMetNetworkRequirements$1$com-google-android-exoplayer2-scheduler-RequirementsWatcher$NetworkCallback()V
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    # getter for: Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->networkCallback:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;
    invoke-static {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$400(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    # invokes: Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->recheckNotMetNetworkRequirements()V
    invoke-static {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$500(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V

    .line 238
    :cond_d
    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 195
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->postCheckRequirements()V

    .line 196
    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "blocked"    # Z

    .line 205
    if-nez p2, :cond_5

    .line 206
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->postRecheckNotMetNetworkRequirements()V

    .line 208
    :cond_5
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 212
    nop

    .line 213
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 214
    .local v0, "networkValidated":Z
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->receivedCapabilitiesChange:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->networkValidated:Z

    if-eq v1, v0, :cond_10

    goto :goto_16

    .line 218
    :cond_10
    if-eqz v0, :cond_1e

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->postRecheckNotMetNetworkRequirements()V

    goto :goto_1e

    .line 215
    :cond_16
    :goto_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->receivedCapabilitiesChange:Z

    .line 216
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->networkValidated:Z

    .line 217
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->postCheckRequirements()V

    .line 221
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 200
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->postCheckRequirements()V

    .line 201
    return-void
.end method
