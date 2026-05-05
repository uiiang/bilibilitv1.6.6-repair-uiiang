.class final Lcom/google/android/exoplayer2/WifiLockManager;
.super Ljava/lang/Object;
.source "WifiLockManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiLockManager"

.field private static final WIFI_LOCK_TAG:Ljava/lang/String; = "ExoPlayer:WifiLockManager"


# instance fields
.field private enabled:Z

.field private stayAwake:Z

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    nop

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/exoplayer2/WifiLockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 49
    return-void
.end method

.method private updateWifiLock()V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/WifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_5

    .line 91
    return-void

    .line 94
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/WifiLockManager;->enabled:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/WifiLockManager;->stayAwake:Z

    if-eqz v1, :cond_11

    .line 95
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_14

    .line 97
    :cond_11
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 99
    :goto_14
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 62
    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/WifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_1f

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/WifiLockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_12

    .line 64
    const-string v0, "WifiLockManager"

    const-string v1, "WifiManager is null, therefore not creating the WifiLock."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 67
    :cond_12
    const/4 v1, 0x3

    const-string v2, "ExoPlayer:WifiLockManager"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/WifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 71
    :cond_1f
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/WifiLockManager;->enabled:Z

    .line 72
    invoke-direct {p0}, Lcom/google/android/exoplayer2/WifiLockManager;->updateWifiLock()V

    .line 73
    return-void
.end method

.method public setStayAwake(Z)V
    .registers 2
    .param p1, "stayAwake"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/WifiLockManager;->stayAwake:Z

    .line 86
    invoke-direct {p0}, Lcom/google/android/exoplayer2/WifiLockManager;->updateWifiLock()V

    .line 87
    return-void
.end method
