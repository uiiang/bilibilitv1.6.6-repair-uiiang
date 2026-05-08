.class public final synthetic Lcom/google/android/exoplayer2/audio/AudioSink$-CC;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$release(Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 497
    return-void
.end method

.method public static $default$setOutputStreamOffsetUs(Lcom/google/android/exoplayer2/audio/AudioSink;J)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioSink;
    .param p1, "outputStreamOffsetUs"    # J

    .line 447
    return-void
.end method

.method public static $default$setPlayerId(Lcom/google/android/exoplayer2/audio/AudioSink;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioSink;
    .param p1, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 302
    return-void
.end method

.method public static $default$setPreferredDevice(Lcom/google/android/exoplayer2/audio/AudioSink;Landroid/media/AudioDeviceInfo;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioSink;
    .param p1, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 439
    return-void
.end method
