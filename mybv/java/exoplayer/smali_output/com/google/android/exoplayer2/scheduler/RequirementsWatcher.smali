.class public final Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;
.super Ljava/lang/Object;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;,
        Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;,
        Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;

.field private networkCallback:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;

.field private notMetRequirements:I

.field private receiver:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

.field private final requirements:Lcom/google/android/exoplayer2/scheduler/Requirements;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;Lcom/google/android/exoplayer2/scheduler/Requirements;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;
    .param p3, "requirements"    # Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->listener:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;

    .line 80
    iput-object p3, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 81
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->handler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    .line 43
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->checkRequirements()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->networkCallback:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    .line 43
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->recheckNotMetNetworkRequirements()V

    return-void
.end method

.method private checkRequirements()V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    iget-object v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->getNotMetRequirements(Landroid/content/Context;)I

    move-result v0

    .line 155
    .local v0, "notMetRequirements":I
    iget v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->notMetRequirements:I

    if-eq v1, v0, :cond_13

    .line 156
    iput v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->notMetRequirements:I

    .line 157
    iget-object v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->listener:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;

    invoke-interface {v1, p0, v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;->onRequirementsStateChanged(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;I)V

    .line 159
    :cond_13
    return-void
.end method

.method private recheckNotMetNetworkRequirements()V
    .registers 2

    .line 171
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->notMetRequirements:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_7

    .line 173
    return-void

    .line 175
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->checkRequirements()V

    .line 176
    return-void
.end method

.method private registerNetworkCallbackV24()V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    .line 139
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 140
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v1, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;-><init>(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->networkCallback:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;

    .line 141
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 142
    return-void
.end method

.method private unregisterNetworkCallbackV24()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    .line 147
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 148
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->networkCallback:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->networkCallback:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;

    .line 150
    return-void
.end method


# virtual methods
.method public getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    return-object v0
.end method

.method public start()I
    .registers 6

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    iget-object v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->getNotMetRequirements(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->notMetRequirements:I

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isNetworkRequired()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 95
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_21

    .line 96
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->registerNetworkCallbackV24()V

    goto :goto_26

    .line 98
    :cond_21
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isChargingRequired()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 102
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    :cond_38
    iget-object v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isIdleRequired()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 106
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4c

    .line 107
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_56

    .line 109
    :cond_4c
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    :cond_56
    :goto_56
    iget-object v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isStorageNotLowRequired()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 114
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    :cond_68
    new-instance v1, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;-><init>(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->receiver:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    .line 118
    iget-object v3, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 119
    iget v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->notMetRequirements:I

    return v1
.end method

.method public stop()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->receiver:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->receiver:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    .line 126
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->networkCallback:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;

    if-eqz v0, :cond_1d

    .line 127
    invoke-direct {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->unregisterNetworkCallbackV24()V

    .line 129
    :cond_1d
    return-void
.end method
