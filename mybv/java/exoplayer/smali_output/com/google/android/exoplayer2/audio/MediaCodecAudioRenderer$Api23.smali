.class final Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$Api23;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api23"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAudioSinkPreferredDevice(Lcom/google/android/exoplayer2/audio/AudioSink;Ljava/lang/Object;)V
    .registers 3
    .param p0, "audioSink"    # Lcom/google/android/exoplayer2/audio/AudioSink;
    .param p1, "messagePayload"    # Ljava/lang/Object;

    .line 974
    move-object v0, p1

    check-cast v0, Landroid/media/AudioDeviceInfo;

    .line 975
    .local v0, "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 976
    return-void
.end method
