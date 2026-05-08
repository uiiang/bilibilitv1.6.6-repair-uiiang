.class public final synthetic Lcom/google/android/exoplayer2/audio/AudioSink$Listener$-CC;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onAudioCapabilitiesChanged(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    .line 141
    return-void
.end method

.method public static $default$onAudioSinkError(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioSink$Listener;
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 138
    return-void
.end method

.method public static $default$onOffloadBufferEmptying(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    .line 113
    return-void
.end method

.method public static $default$onOffloadBufferFull(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V
    .registers 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    .line 116
    return-void
.end method

.method public static $default$onPositionAdvancing(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;J)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioSink$Listener;
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 89
    return-void
.end method
