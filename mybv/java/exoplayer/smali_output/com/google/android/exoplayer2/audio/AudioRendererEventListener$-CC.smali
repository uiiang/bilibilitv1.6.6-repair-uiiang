.class public final synthetic Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onAudioCodecError(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "audioCodecError"    # Ljava/lang/Exception;

    .line 136
    return-void
.end method

.method public static $default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/lang/String;JJ)V
    .registers 6
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 64
    return-void
.end method

.method public static $default$onAudioDecoderReleased(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/lang/String;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static $default$onAudioDisabled(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 114
    return-void
.end method

.method public static $default$onAudioEnabled(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 53
    return-void
.end method

.method public static $default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/Format;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    return-void
.end method

.method public static $default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 81
    return-void
.end method

.method public static $default$onAudioPositionAdvancing(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;J)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 90
    return-void
.end method

.method public static $default$onAudioSinkError(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 155
    return-void
.end method

.method public static $default$onAudioUnderrun(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;IJJ)V
    .registers 6
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 100
    return-void
.end method

.method public static $default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Z)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "skipSilenceEnabled"    # Z

    .line 121
    return-void
.end method
