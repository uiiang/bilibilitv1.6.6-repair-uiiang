.class public final Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
.super Ljava/lang/Object;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;,
        Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;,
        Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static staticInstance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;


# instance fields
.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private networkType:I

.field private final networkTypeLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->mainHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkType:I

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;-><init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;Lcom/google/android/exoplayer2/util/NetworkTypeObserver$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)I
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .line 54
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getNetworkTypeFromConnectivityManager(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;I)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->updateNetworkType(I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    monitor-enter v0

    .line 83
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->staticInstance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    if-nez v1, :cond_e

    .line 84
    new-instance v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->staticInstance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    .line 86
    :cond_e
    sget-object v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->staticInstance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 82
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getMobileNetworkType(Landroid/net/NetworkInfo;)I
    .registers 3
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 186
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 213
    :pswitch_7
    const/4 v0, 0x6

    return v0

    .line 207
    :pswitch_9
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_12

    const/16 v0, 0x9

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    .line 209
    :pswitch_14
    const/4 v0, 0x2

    return v0

    .line 205
    :pswitch_16
    const/4 v0, 0x5

    return v0

    .line 203
    :pswitch_18
    const/4 v0, 0x4

    return v0

    .line 189
    :pswitch_1a
    const/4 v0, 0x3

    return v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_7
        :pswitch_18
        :pswitch_14
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private static getNetworkTypeFromConnectivityManager(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    nop

    .line 156
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 157
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 158
    return v1

    .line 161
    :cond_d
    :try_start_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_11} :catch_32

    .line 165
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    nop

    .line 166
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_30

    .line 169
    :cond_1b
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_34

    .line 181
    :pswitch_22
    const/16 v2, 0x8

    return v2

    .line 179
    :pswitch_25
    const/4 v2, 0x7

    return v2

    .line 173
    :pswitch_27
    const/4 v2, 0x5

    return v2

    .line 171
    :pswitch_29
    const/4 v2, 0x2

    return v2

    .line 177
    :pswitch_2b
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getMobileNetworkType(Landroid/net/NetworkInfo;)I

    move-result v2

    return v2

    .line 167
    :cond_30
    :goto_30
    const/4 v2, 0x1

    return v2

    .line 162
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_32
    move-exception v2

    .line 164
    .local v2, "e":Ljava/lang/SecurityException;
    return v1

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_29
        :pswitch_22
        :pswitch_22
        :pswitch_2b
        :pswitch_2b
        :pswitch_27
        :pswitch_22
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private removeClearedReferences()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 129
    .local v1, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 130
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    .end local v1    # "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;>;"
    :cond_1d
    goto :goto_6

    .line 133
    :cond_1e
    return-void
.end method

.method public static declared-synchronized resetForTests()V
    .registers 2

    const-class v0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    monitor-enter v0

    .line 92
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->staticInstance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 93
    monitor-exit v0

    return-void

    .line 91
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateNetworkType(I)V
    .registers 6
    .param p1, "networkType"    # I

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget v1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkType:I

    if-ne v1, p1, :cond_9

    .line 138
    monitor-exit v0

    return-void

    .line 140
    :cond_9
    iput p1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkType:I

    .line 141
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_31

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 143
    .local v1, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;

    .line 144
    .local v2, "listener":Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;
    if-eqz v2, :cond_2a

    .line 145
    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;->onNetworkTypeChanged(I)V

    goto :goto_2f

    .line 147
    :cond_2a
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    .end local v1    # "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;>;"
    .end local v2    # "listener":Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;
    :goto_2f
    goto :goto_12

    .line 150
    :cond_30
    return-void

    .line 141
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    goto :goto_35

    :goto_34
    throw v1

    :goto_35
    goto :goto_34
.end method


# virtual methods
.method public getNetworkType()I
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    iget v1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->networkType:I

    monitor-exit v0

    return v1

    .line 124
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method synthetic lambda$register$0$com-google-android-exoplayer2-util-NetworkTypeObserver(Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;

    .line 117
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getNetworkType()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;->onNetworkTypeChanged(I)V

    return-void
.end method

.method public register(Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;

    .line 113
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->removeClearedReferences()V

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method
