.class final Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;
.super Ljava/lang/Object;
.source "AudioBecomingNoisyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;,
        Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final receiver:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

.field private receiverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->context:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;-><init>(Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiver:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    .line 26
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiverRegistered:Z

    return v0
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 49
    if-eqz p1, :cond_18

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiverRegistered:Z

    if-nez v0, :cond_18

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiver:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiverRegistered:Z

    goto :goto_28

    .line 53
    :cond_18
    if-nez p1, :cond_28

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiverRegistered:Z

    if-eqz v0, :cond_28

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiver:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiverRegistered:Z

    .line 57
    :cond_28
    :goto_28
    return-void
.end method
