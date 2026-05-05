.class final Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;
.super Landroid/media/AudioDeviceCallback;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioDeviceCallbackV23"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$1;

    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .registers 4
    .param p1, "addedDevices"    # [Landroid/media/AudioDeviceInfo;

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    # getter for: Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$300(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v1

    # invokes: Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$200(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V

    .line 191
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .registers 4
    .param p1, "removedDevices"    # [Landroid/media/AudioDeviceInfo;

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    # getter for: Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$300(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v1

    # invokes: Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$200(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V

    .line 196
    return-void
.end method
