.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Api23;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api23"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setPreferredDeviceOnAudioTrack(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;)V
    .registers 3
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "audioDeviceInfo"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;

    .line 2263
    nop

    .line 2264
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_7

    :cond_5
    iget-object v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 2263
    :goto_7
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 2265
    return-void
.end method
