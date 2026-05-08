.class public final synthetic Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$onDroppedFrames(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IJ)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "count"    # I
    .param p2, "elapsedMs"    # J

    .line 92
    return-void
.end method

.method public static $default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/Object;J)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "output"    # Ljava/lang/Object;
    .param p2, "renderTimeMs"    # J

    .line 130
    return-void
.end method

.method public static $default$onVideoCodecError(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "videoCodecError"    # Ljava/lang/Exception;

    .line 159
    return-void
.end method

.method public static $default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/String;JJ)V
    .registers 6
    .param p0, "_this"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 63
    return-void
.end method

.method public static $default$onVideoDecoderReleased(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/String;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 137
    return-void
.end method

.method public static $default$onVideoDisabled(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 144
    return-void
.end method

.method public static $default$onVideoEnabled(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 52
    return-void
.end method

.method public static $default$onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;JI)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "totalProcessingOffsetUs"    # J
    .param p3, "frameCount"    # I

    .line 112
    return-void
.end method

.method public static $default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/Format;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    return-void
.end method

.method public static $default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 80
    return-void
.end method

.method public static $default$onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "videoSize"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 120
    return-void
.end method
