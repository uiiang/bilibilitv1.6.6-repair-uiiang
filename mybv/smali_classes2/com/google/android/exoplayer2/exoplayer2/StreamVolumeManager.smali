.class final Lcom/google/android/exoplayer2/StreamVolumeManager;
.super Ljava/lang/Object;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;,
        Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamVolumeManager"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final audioManager:Landroid/media/AudioManager;

.field private final eventHandler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;

.field private muted:Z

.field private receiver:Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;

.field private streamType:I

.field private volume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->eventHandler:Landroid/os/Handler;

    .line 70
    iput-object p3, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->listener:Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;

    .line 71
    nop

    .line 73
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 72
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    .line 75
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    .line 76
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getVolumeFromManager(Landroid/media/AudioManager;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->volume:I

    .line 77
    iget v2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMutedFromManager(Landroid/media/AudioManager;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->muted:Z

    .line 79
    new-instance v1, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;-><init>(Lcom/google/android/exoplayer2/StreamVolumeManager;Lcom/google/android/exoplayer2/StreamVolumeManager$1;)V

    .line 80
    .local v1, "receiver":Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "filter":Landroid/content/IntentFilter;
    :try_start_3c
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    iput-object v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->receiver:Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_41} :catch_42

    .line 86
    goto :goto_4a

    .line 84
    :catch_42
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "StreamVolumeManager"

    const-string v4, "Error registering stream volume receiver"

    invoke-static {v3, v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_4a
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/StreamVolumeManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/StreamVolumeManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 38
    invoke-direct {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    return-void
.end method

.method private static getMutedFromManager(Landroid/media/AudioManager;I)Z
    .registers 4
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "streamType"    # I

    .line 220
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 221
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0

    .line 223
    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getVolumeFromManager(Landroid/media/AudioManager;I)I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private static getVolumeFromManager(Landroid/media/AudioManager;I)I
    .registers 5
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "streamType"    # I

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 212
    :catch_5
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    return v1
.end method

.method private updateVolumeAndNotifyIfChanged()V
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getVolumeFromManager(Landroid/media/AudioManager;I)I

    move-result v0

    .line 199
    .local v0, "newVolume":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMutedFromManager(Landroid/media/AudioManager;I)Z

    move-result v1

    .line 200
    .local v1, "newMuted":Z
    iget v2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->volume:I

    if-ne v2, v0, :cond_18

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->muted:Z

    if-eq v2, v1, :cond_21

    .line 201
    :cond_18
    iput v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->volume:I

    .line 202
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->muted:Z

    .line 203
    iget-object v2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->listener:Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;->onStreamVolumeChanged(IZ)V

    .line 205
    :cond_21
    return-void
.end method


# virtual methods
.method public decreaseVolume(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 162
    iget v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->volume:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMinVolume()I

    move-result v1

    if-gt v0, v1, :cond_9

    .line 163
    return-void

    .line 165
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    .line 167
    return-void
.end method

.method public getMaxVolume()I
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getMinVolume()I
    .registers 3

    .line 105
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public getVolume()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->volume:I

    return v0
.end method

.method public increaseVolume(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 148
    iget v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->volume:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMaxVolume()I

    move-result v1

    if-lt v0, v1, :cond_9

    .line 149
    return-void

    .line 151
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 152
    invoke-direct {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    .line 153
    return-void
.end method

.method public isMuted()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->muted:Z

    return v0
.end method

.method public release()V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->receiver:Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;

    if-eqz v0, :cond_15

    .line 189
    :try_start_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_a

    .line 192
    goto :goto_12

    .line 190
    :catch_a
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "StreamVolumeManager"

    const-string v2, "Error unregistering stream volume receiver"

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->receiver:Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;

    .line 195
    :cond_15
    return-void
.end method

.method public setMuted(ZI)V
    .registers 6
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 176
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_15

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    .line 178
    if-eqz p1, :cond_f

    const/16 v2, -0x64

    goto :goto_11

    :cond_f
    const/16 v2, 0x64

    .line 177
    :goto_11
    invoke-virtual {v0, v1, v2, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1c

    .line 180
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 182
    :goto_1c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    .line 183
    return-void
.end method

.method public setStreamType(I)V
    .registers 3
    .param p1, "streamType"    # I

    .line 91
    iget v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    if-ne v0, p1, :cond_5

    .line 92
    return-void

    .line 94
    :cond_5
    iput p1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    .line 96
    invoke-direct {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->listener:Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;->onStreamTypeChanged(I)V

    .line 98
    return-void
.end method

.method public setVolume(II)V
    .registers 5
    .param p1, "volume"    # I
    .param p2, "flags"    # I

    .line 134
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMinVolume()I

    move-result v0

    if-lt p1, v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMaxVolume()I

    move-result v0

    if-le p1, v0, :cond_d

    goto :goto_18

    .line 137
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->streamType:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 138
    invoke-direct {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V

    .line 139
    return-void

    .line 135
    :cond_18
    :goto_18
    return-void
.end method
