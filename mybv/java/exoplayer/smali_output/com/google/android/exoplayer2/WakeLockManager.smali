.class final Lcom/google/android/exoplayer2/WakeLockManager;
.super Ljava/lang/Object;
.source "WakeLockManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeLockManager"

.field private static final WAKE_LOCK_TAG:Ljava/lang/String; = "ExoPlayer:WakeLockManager"


# instance fields
.field private enabled:Z

.field private final powerManager:Landroid/os/PowerManager;

.field private stayAwake:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    nop

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/exoplayer2/WakeLockManager;->powerManager:Landroid/os/PowerManager;

    .line 50
    return-void
.end method

.method private updateWakeLock()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/WakeLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_5

    .line 98
    return-void

    .line 101
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/WakeLockManager;->enabled:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/WakeLockManager;->stayAwake:Z

    if-eqz v1, :cond_11

    .line 102
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_14

    .line 104
    :cond_11
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 106
    :goto_14
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 63
    if-eqz p1, :cond_1f

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/WakeLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1f

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/WakeLockManager;->powerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_12

    .line 66
    const-string v0, "WakeLockManager"

    const-string v1, "PowerManager is null, therefore not creating the WakeLock."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 69
    :cond_12
    const/4 v1, 0x1

    const-string v2, "ExoPlayer:WakeLockManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/WakeLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 74
    :cond_1f
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/WakeLockManager;->enabled:Z

    .line 75
    invoke-direct {p0}, Lcom/google/android/exoplayer2/WakeLockManager;->updateWakeLock()V

    .line 76
    return-void
.end method

.method public setStayAwake(Z)V
    .registers 2
    .param p1, "stayAwake"    # Z

    .line 88
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/WakeLockManager;->stayAwake:Z

    .line 89
    invoke-direct {p0}, Lcom/google/android/exoplayer2/WakeLockManager;->updateWakeLock()V

    .line 90
    return-void
.end method
