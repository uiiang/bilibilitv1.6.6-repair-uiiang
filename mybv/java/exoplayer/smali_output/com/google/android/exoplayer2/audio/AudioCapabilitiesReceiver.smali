.class public final Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;,
        Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;,
        Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;,
        Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;,
        Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Api23;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field private final audioDeviceCallback:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

.field private final context:Landroid/content/Context;

.field private final externalSurroundSoundSettingObserver:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

.field private final handler:Landroid/os/Handler;

.field private final hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final listener:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 76
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->listener:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    .line 77
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    .line 78
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v1, v2, :cond_24

    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

    invoke-direct {v1, p0, v3}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$1;)V

    goto :goto_25

    :cond_24
    move-object v1, v3

    :goto_25
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioDeviceCallback:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

    .line 79
    nop

    .line 80
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_34

    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;

    invoke-direct {v1, p0, v3}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$1;)V

    goto :goto_35

    :cond_34
    move-object v1, v3

    :goto_35
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    invoke-static {}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getExternalSurroundSoundGlobalSettingUri()Landroid/net/Uri;

    move-result-object v1

    .line 82
    .local v1, "externalSurroundSoundUri":Landroid/net/Uri;
    nop

    .line 83
    if-eqz v1, :cond_48

    .line 84
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_49

    .line 86
    :cond_48
    nop

    :goto_49
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 87
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    return-object v0
.end method

.method private onNewAudioCapabilities(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V
    .registers 3
    .param p1, "newAudioCapabilities"    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 144
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->registered:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 145
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->listener:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V

    .line 148
    :cond_13
    return-void
.end method


# virtual methods
.method public register()Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .registers 7

    .line 98
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->registered:Z

    if-eqz v0, :cond_d

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    return-object v0

    .line 101
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v0, :cond_17

    .line 103
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->register()V

    .line 105
    :cond_17
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_28

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioDeviceCallback:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

    if-eqz v0, :cond_28

    .line 106
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Api23;->registerAudioDeviceCallback(Landroid/content/Context;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 108
    :cond_28
    const/4 v0, 0x0

    .line 109
    .local v0, "stickyIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3f

    .line 110
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    .line 112
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    .line 118
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3f
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 119
    return-object v1
.end method

.method public unregister()V
    .registers 3

    .line 127
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->registered:Z

    if-nez v0, :cond_5

    .line 128
    return-void

    .line 130
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 131
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioDeviceCallback:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

    if-eqz v0, :cond_17

    .line 132
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Api23;->unregisterAudioDeviceCallback(Landroid/content/Context;Landroid/media/AudioDeviceCallback;)V

    .line 134
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_20

    .line 135
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v0, :cond_27

    .line 138
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->unregister()V

    .line 140
    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 141
    return-void
.end method
