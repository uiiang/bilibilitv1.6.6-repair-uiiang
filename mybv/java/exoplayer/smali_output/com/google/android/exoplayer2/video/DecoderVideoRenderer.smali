.class public abstract Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "DecoderVideoRenderer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DecoderVideoRenderer"


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private consecutiveDroppedFrameCount:I

.field private decoder:Lcom/google/android/exoplayer2/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/Decoder<",
            "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/DecoderException;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private initialPositionUs:J

.field private inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private joiningDeadlineMs:J

.field private lastRenderTimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private mayRenderFirstFrameAfterEnableIfNotStarted:Z

.field private output:Ljava/lang/Object;

.field private outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

.field private outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

.field private outputFormat:Lcom/google/android/exoplayer2/Format;

.field private outputMode:I

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private outputSurface:Landroid/view/Surface;

.field private renderedFirstFrameAfterEnable:Z

.field private renderedFirstFrameAfterReset:Z

.field private reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field private sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private waitingForFirstSampleInFormat:Z


# direct methods
.method protected constructor <init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 8
    .param p1, "allowedJoiningTimeMs"    # J
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p5, "maxDroppedFramesToNotify"    # I

    .line 174
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 175
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    .line 176
    iput p5, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maxDroppedFramesToNotify:I

    .line 177
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 178
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearReportedVideoSize()V

    .line 179
    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 180
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newNoDataInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 181
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {v0, p3, p4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    .line 184
    return-void
.end method

.method private clearRenderedFirstFrame()V
    .registers 2

    .line 921
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 922
    return-void
.end method

.method private clearReportedVideoSize()V
    .registers 2

    .line 939
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 940
    return-void
.end method

.method private drainOutputBuffer(JJ)Z
    .registers 10
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 791
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 792
    if-nez v0, :cond_12

    .line 793
    return v1

    .line 795
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    iget v3, v3, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 796
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    iget v2, v2, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->skippedOutputBufferCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 799
    :cond_26
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_46

    .line 800
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3b

    .line 802
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->releaseDecoder()V

    .line 803
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_45

    .line 805
    :cond_3b
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->release()V

    .line 806
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamEnded:Z

    .line 809
    :goto_45
    return v1

    .line 812
    :cond_46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->processOutputBuffer(JJ)Z

    move-result v0

    .line 813
    .local v0, "processedOutputBuffer":Z
    if-eqz v0, :cond_55

    .line 814
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->timeUs:J

    invoke-virtual {p0, v3, v4}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onProcessedOutputBuffer(J)V

    .line 815
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 817
    :cond_55
    return v0
.end method

.method private feedInputBuffer()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;,
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_9c

    iget v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9c

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_10

    goto/16 :goto_9c

    .line 731
    :cond_10
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v2, :cond_1f

    .line 732
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 733
    if-nez v0, :cond_1f

    .line 734
    return v1

    .line 738
    :cond_1f
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_37

    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 740
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 741
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 742
    iput v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    .line 743
    return v1

    .line 746
    :cond_37
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 747
    .local v0, "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v3

    packed-switch v3, :pswitch_data_9e

    .line 774
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 749
    :pswitch_4a
    return v1

    .line 754
    :pswitch_4b
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 755
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputStreamEnded:Z

    .line 756
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 757
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 758
    return v1

    .line 760
    :cond_5f
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v3, :cond_70

    .line 761
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v3, v5, v6, v7}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 762
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    .line 764
    :cond_70
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 765
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->format:Lcom/google/android/exoplayer2/Format;

    .line 766
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 767
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 768
    iget v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 769
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 770
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->queuedInputBufferCount:I

    .line 771
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 772
    return v4

    .line 751
    :pswitch_98
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    .line 752
    return v4

    .line 728
    .end local v0    # "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    :cond_9c
    :goto_9c
    return v1

    nop

    :pswitch_data_9e
    .packed-switch -0x5
        :pswitch_98
        :pswitch_4b
        :pswitch_4a
    .end packed-switch
.end method

.method private hasOutput()Z
    .registers 3

    .line 888
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isBufferLate(J)Z
    .registers 5
    .param p0, "earlyUs"    # J

    .line 969
    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isBufferVeryLate(J)Z
    .registers 5
    .param p0, "earlyUs"    # J

    .line 974
    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private maybeInitDecoder()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_5

    .line 682
    return-void

    .line 685
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "cryptoConfig":Lcom/google/android/exoplayer2/decoder/CryptoConfig;
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1f

    .line 689
    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getCryptoConfig()Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    move-result-object v0

    .line 690
    if-nez v0, :cond_1f

    .line 691
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    .line 692
    .local v1, "drmError":Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    if-eqz v1, :cond_1e

    goto :goto_1f

    .line 697
    :cond_1e
    return-void

    .line 703
    .end local v1    # "drmError":Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    :cond_1f
    :goto_1f
    const/16 v1, 0xfa1

    :try_start_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 704
    .local v2, "decoderInitializingTimestamp":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v4, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/CryptoConfig;)Lcom/google/android/exoplayer2/decoder/Decoder;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 705
    iget v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 706
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 707
    .local v4, "decoderInitializedTimestamp":J
    iget-object v6, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v7, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 708
    invoke-interface {v7}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v7

    sub-long v10, v4, v2

    .line 707
    move-wide v8, v4

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 711
    iget-object v6, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v7, v6, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_4c
    .catch Lcom/google/android/exoplayer2/decoder/DecoderException; {:try_start_21 .. :try_end_4c} :catch_56
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_4c} :catch_4e

    .line 720
    .end local v2    # "decoderInitializingTimestamp":J
    .end local v4    # "decoderInitializedTimestamp":J
    nop

    .line 721
    return-void

    .line 717
    :catch_4e
    move-exception v2

    .line 718
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 712
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_56
    move-exception v2

    .line 713
    .local v2, "e":Lcom/google/android/exoplayer2/decoder/DecoderException;
    const-string v3, "DecoderVideoRenderer"

    const-string v4, "Video codec error"

    invoke-static {v3, v4, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    .line 715
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method private maybeNotifyDroppedFrames()V
    .registers 7

    .line 958
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_18

    .line 959
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 960
    .local v0, "now":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 961
    .local v2, "elapsedMs":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    .line 962
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    .line 963
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 965
    .end local v0    # "now":J
    .end local v2    # "elapsedMs":J
    :cond_18
    return-void
.end method

.method private maybeNotifyRenderedFirstFrame()V
    .registers 3

    .line 925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 926
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_10

    .line 927
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 928
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    .line 930
    :cond_10
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 943
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    if-eqz v0, :cond_e

    iget v0, v0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    if-ne v0, p1, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    iget v0, v0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    if-eq v0, p2, :cond_1a

    .line 946
    :cond_e
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/video/VideoSize;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 947
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 949
    :cond_1a
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .registers 3

    .line 933
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-eqz v0, :cond_b

    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    .line 936
    :cond_b
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .registers 3

    .line 952
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    if-eqz v0, :cond_9

    .line 953
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 955
    :cond_9
    return-void
.end method

.method private onOutputChanged()V
    .registers 3

    .line 893
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 895
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 896
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 897
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setJoiningDeadlineMs()V

    .line 899
    :cond_10
    return-void
.end method

.method private onOutputRemoved()V
    .registers 1

    .line 902
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearReportedVideoSize()V

    .line 903
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 904
    return-void
.end method

.method private onOutputReset()V
    .registers 1

    .line 909
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 910
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    .line 911
    return-void
.end method

.method private processOutputBuffer(JJ)Z
    .registers 25
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 832
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-wide v5, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->initialPositionUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_13

    .line 833
    iput-wide v1, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->initialPositionUs:J

    .line 836
    :cond_13
    iget-object v5, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->timeUs:J

    sub-long/2addr v5, v1

    .line 837
    .local v5, "earlyUs":J
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->hasOutput()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_2d

    .line 839
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 840
    iget-object v7, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V

    .line 841
    return v8

    .line 843
    :cond_2c
    return v9

    .line 846
    :cond_2d
    iget-object v7, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    iget-wide v10, v7, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->timeUs:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamOffsetUs:J

    sub-long/2addr v10, v12

    .line 847
    .local v10, "presentationTimeUs":J
    iget-object v7, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v7, v10, v11}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/Format;

    .line 848
    .local v7, "format":Lcom/google/android/exoplayer2/Format;
    if-eqz v7, :cond_40

    .line 849
    iput-object v7, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    .line 852
    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v12

    .line 853
    .local v12, "elapsedRealtimeNowUs":J
    iget-wide v14, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->lastRenderTimeUs:J

    sub-long v14, v12, v14

    .line 854
    .local v14, "elapsedSinceLastRenderUs":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->getState()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_55

    const/4 v8, 0x1

    goto :goto_56

    :cond_55
    const/4 v8, 0x0

    .line 856
    .local v8, "isStarted":Z
    :goto_56
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterEnable:Z

    if-nez v9, :cond_65

    .line 857
    if-nez v8, :cond_63

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    if-eqz v9, :cond_61

    goto :goto_63

    :cond_61
    const/4 v9, 0x0

    goto :goto_6c

    :cond_63
    :goto_63
    const/4 v9, 0x1

    goto :goto_6c

    .line 858
    :cond_65
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v9, :cond_6b

    const/4 v9, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v9, 0x0

    :goto_6c
    nop

    .line 860
    .local v9, "shouldRenderFirstFrame":Z
    if-nez v9, :cond_bd

    if-eqz v8, :cond_7c

    .line 861
    invoke-virtual {v0, v5, v6, v14, v15}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v16

    if-eqz v16, :cond_7c

    move-object/from16 v16, v7

    move/from16 v17, v8

    goto :goto_c1

    .line 866
    :cond_7c
    if-eqz v8, :cond_b7

    move-object/from16 v16, v7

    move/from16 v17, v8

    .end local v7    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v8    # "isStarted":Z
    .local v16, "format":Lcom/google/android/exoplayer2/Format;
    .local v17, "isStarted":Z
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->initialPositionUs:J

    cmp-long v18, v1, v7

    if-nez v18, :cond_8a

    const/4 v7, 0x0

    goto :goto_bc

    .line 871
    :cond_8a
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->shouldDropBuffersToKeyframe(JJ)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 872
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeDropBuffersToKeyframe(J)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 873
    const/4 v7, 0x0

    return v7

    .line 874
    :cond_98
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->shouldDropOutputBuffer(JJ)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 875
    iget-object v7, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V

    .line 876
    const/4 v7, 0x1

    return v7

    .line 879
    :cond_a5
    const/4 v7, 0x1

    const-wide/16 v18, 0x7530

    cmp-long v8, v5, v18

    if-gez v8, :cond_b5

    .line 880
    iget-object v8, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    iget-object v7, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v8, v10, v11, v7}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;JLcom/google/android/exoplayer2/Format;)V

    .line 881
    const/4 v7, 0x1

    return v7

    .line 884
    :cond_b5
    const/4 v7, 0x0

    return v7

    .line 866
    .end local v16    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v17    # "isStarted":Z
    .restart local v7    # "format":Lcom/google/android/exoplayer2/Format;
    .restart local v8    # "isStarted":Z
    :cond_b7
    move-object/from16 v16, v7

    move/from16 v17, v8

    const/4 v7, 0x0

    .line 867
    .end local v7    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v8    # "isStarted":Z
    .restart local v16    # "format":Lcom/google/android/exoplayer2/Format;
    .restart local v17    # "isStarted":Z
    :goto_bc
    return v7

    .line 860
    .end local v16    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v17    # "isStarted":Z
    .restart local v7    # "format":Lcom/google/android/exoplayer2/Format;
    .restart local v8    # "isStarted":Z
    :cond_bd
    move-object/from16 v16, v7

    move/from16 v17, v8

    .line 862
    .end local v7    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v8    # "isStarted":Z
    .restart local v16    # "format":Lcom/google/android/exoplayer2/Format;
    .restart local v17    # "isStarted":Z
    :goto_c1
    iget-object v7, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    iget-object v8, v0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v7, v10, v11, v8}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;JLcom/google/android/exoplayer2/Format;)V

    .line 863
    const/4 v7, 0x1

    return v7
.end method

.method private setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .registers 3
    .param p1, "session"    # Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 676
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 677
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 678
    return-void
.end method

.method private setJoiningDeadlineMs()V
    .registers 6

    .line 914
    nop

    .line 915
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    .line 916
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_16

    .line 917
    :cond_11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_16
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 918
    return-void
.end method

.method private setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .registers 3
    .param p1, "session"    # Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 671
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 672
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 673
    return-void
.end method


# virtual methods
.method protected canReuseDecoder(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .registers 11
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "oldFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "newFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 664
    new-instance v6, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v6
.end method

.method protected abstract createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/CryptoConfig;)Lcom/google/android/exoplayer2/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/decoder/CryptoConfig;",
            ")",
            "Lcom/google/android/exoplayer2/decoder/Decoder<",
            "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/DecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation
.end method

.method protected dropOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V
    .registers 4
    .param p1, "outputBuffer"    # Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 497
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 499
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->release()V

    .line 500
    return-void
.end method

.method protected flushDecoder()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 345
    iget v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    if-eqz v1, :cond_e

    .line 346
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->releaseDecoder()V

    .line 347
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_21

    .line 349
    :cond_e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 350
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    if-eqz v2, :cond_1a

    .line 351
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->release()V

    .line 352
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 354
    :cond_1a
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->flush()V

    .line 355
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 357
    :goto_21
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 263
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 264
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setOutput(Ljava/lang/Object;)V

    goto :goto_13

    .line 265
    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_10

    .line 266
    move-object v0, p2

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    goto :goto_13

    .line 268
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 270
    :goto_13
    return-void
.end method

.method public isEnded()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .registers 10

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_21

    .line 240
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    if-eqz v0, :cond_21

    :cond_14
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v0, :cond_1e

    .line 241
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->hasOutput()Z

    move-result v0

    if-nez v0, :cond_21

    .line 243
    :cond_1e
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 244
    return v1

    .line 245
    :cond_21
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_29

    .line 247
    return v0

    .line 248
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_34

    .line 250
    return v1

    .line 253
    :cond_34
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 254
    return v0
.end method

.method protected maybeDropBuffersToKeyframe(J)Z
    .registers 7
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 512
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->skipSource(J)I

    move-result v0

    .line 513
    .local v0, "droppedSourceBufferCount":I
    if-nez v0, :cond_8

    .line 514
    const/4 v1, 0x0

    return v1

    .line 516
    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 519
    iget v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 521
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->flushDecoder()V

    .line 522
    return v3
.end method

.method protected onDisabled()V
    .registers 4

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 317
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearReportedVideoSize()V

    .line 318
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 320
    :try_start_9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 321
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->releaseDecoder()V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_18

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 324
    nop

    .line 325
    return-void

    .line 323
    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 324
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .registers 5
    .param p1, "joining"    # Z
    .param p2, "mayRenderStartOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 278
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 279
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 281
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V
    .registers 12
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    .line 385
    iget-object v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    .line 386
    .local v1, "newFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v2, p1, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 387
    iget-object v8, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 388
    .local v8, "oldFormat":Lcom/google/android/exoplayer2/Format;
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 390
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-nez v2, :cond_24

    .line 391
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeInitDecoder()V

    .line 392
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 393
    return-void

    .line 397
    :cond_24
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v3, v4, :cond_3a

    .line 398
    new-instance v9, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 400
    invoke-interface {v2}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v2, v9

    move-object v4, v8

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    .local v2, "evaluation":Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    goto :goto_42

    .line 406
    .end local v2    # "evaluation":Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    :cond_3a
    invoke-interface {v2}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v8, v1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->canReuseDecoder(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v2

    .line 409
    .restart local v2    # "evaluation":Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    :goto_42
    iget v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-nez v3, :cond_53

    .line 410
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    if-eqz v3, :cond_4d

    .line 412
    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    goto :goto_53

    .line 415
    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->releaseDecoder()V

    .line 416
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeInitDecoder()V

    .line 419
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 420
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 7
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputStreamEnded:Z

    .line 286
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamEnded:Z

    .line 287
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 288
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->initialPositionUs:J

    .line 289
    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_18

    .line 291
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->flushDecoder()V

    .line 293
    :cond_18
    if-eqz p3, :cond_1e

    .line 294
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_20

    .line 296
    :cond_1e
    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 298
    :goto_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    .line 299
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .registers 4
    .param p1, "presentationTimeUs"    # J

    .line 440
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 441
    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 431
    return-void
.end method

.method protected onStarted()V
    .registers 3

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->lastRenderTimeUs:J

    .line 306
    return-void
.end method

.method protected onStopped()V
    .registers 3

    .line 310
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 311
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 312
    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .registers 6
    .param p1, "formats"    # [Lcom/google/android/exoplayer2/Format;
    .param p2, "startPositionUs"    # J
    .param p4, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 333
    iput-wide p4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamOffsetUs:J

    .line 334
    invoke-super/range {p0 .. p5}, Lcom/google/android/exoplayer2/BaseRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V

    .line 335
    return-void
.end method

.method protected releaseDecoder()V
    .registers 4

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 363
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 364
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    .line 365
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 366
    iput v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 367
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v1, :cond_2a

    .line 368
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 369
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->release()V

    .line 370
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    .line 371
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 373
    :cond_2a
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 374
    return-void
.end method

.method public render(JJ)V
    .registers 8
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 190
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_5

    .line 191
    return-void

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_33

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 197
    .local v0, "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 198
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v1

    .line 199
    .local v1, "result":I
    const/4 v2, -0x5

    if-ne v1, v2, :cond_20

    .line 200
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    goto :goto_33

    .line 201
    :cond_20
    const/4 v2, -0x4

    if-ne v1, v2, :cond_32

    .line 203
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 204
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputStreamEnded:Z

    .line 205
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamEnded:Z

    .line 206
    return-void

    .line 209
    :cond_32
    return-void

    .line 214
    .end local v0    # "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    .end local v1    # "result":I
    :cond_33
    :goto_33
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeInitDecoder()V

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_6d

    .line 219
    :try_start_3a
    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 220
    :goto_3f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_3f

    .line 221
    :cond_46
    :goto_46
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->feedInputBuffer()Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_46

    .line 222
    :cond_4d
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_50
    .catch Lcom/google/android/exoplayer2/decoder/DecoderException; {:try_start_3a .. :try_end_50} :catch_57

    .line 227
    nop

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_6d

    .line 223
    :catch_57
    move-exception v0

    .line 224
    .local v0, "e":Lcom/google/android/exoplayer2/decoder/DecoderException;
    const-string v1, "DecoderVideoRenderer"

    const-string v2, "Video codec error"

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    .line 226
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v2, 0xfa3

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 230
    .end local v0    # "e":Lcom/google/android/exoplayer2/decoder/DecoderException;
    :cond_6d
    :goto_6d
    return-void
.end method

.method protected renderOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;JLcom/google/android/exoplayer2/Format;)V
    .registers 12
    .param p1, "outputBuffer"    # Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;
    .param p2, "presentationTimeUs"    # J
    .param p4, "outputFormat"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_f

    .line 575
    nop

    .line 576
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const/4 v6, 0x0

    .line 575
    move-wide v1, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 578
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->lastRenderTimeUs:J

    .line 579
    iget v0, p1, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->mode:I

    .line 580
    .local v0, "bufferMode":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 581
    .local v3, "renderSurface":Z
    :goto_26
    if-nez v0, :cond_2e

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    if-eqz v4, :cond_2e

    const/4 v4, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x0

    .line 582
    .local v4, "renderYuv":Z
    :goto_2f
    if-nez v4, :cond_37

    if-nez v3, :cond_37

    .line 583
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V

    goto :goto_57

    .line 585
    :cond_37
    iget v5, p1, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->width:I

    iget v6, p1, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->height:I

    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeNotifyVideoSizeChanged(II)V

    .line 586
    if-eqz v4, :cond_46

    .line 587
    iget-object v5, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    invoke-interface {v5, p1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;->setOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V

    goto :goto_4b

    .line 589
    :cond_46
    iget-object v5, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, v5}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderOutputBufferToSurface(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    .line 591
    :goto_4b
    iput v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 592
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v5, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 593
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 595
    :goto_57
    return-void
.end method

.method protected abstract renderOutputBufferToSurface(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation
.end method

.method protected abstract setDecoderOutputMode(I)V
.end method

.method protected final setOutput(Ljava/lang/Object;)V
    .registers 4
    .param p1, "output"    # Ljava/lang/Object;

    .line 612
    instance-of v0, p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 613
    move-object v0, p1

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    .line 614
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    .line 615
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    goto :goto_27

    .line 616
    :cond_10
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    if-eqz v0, :cond_1f

    .line 617
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    .line 618
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    .line 619
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    goto :goto_27

    .line 622
    :cond_1f
    const/4 p1, 0x0

    .line 623
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputSurface:Landroid/view/Surface;

    .line 624
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    .line 625
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    .line 627
    :goto_27
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    if-eq v0, p1, :cond_40

    .line 628
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->output:Ljava/lang/Object;

    .line 629
    if-eqz p1, :cond_3c

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_38

    .line 631
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 633
    :cond_38
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onOutputChanged()V

    goto :goto_45

    .line 637
    :cond_3c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onOutputRemoved()V

    goto :goto_45

    .line 639
    :cond_40
    if-eqz p1, :cond_45

    .line 641
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onOutputReset()V

    .line 643
    :cond_45
    :goto_45
    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJ)Z
    .registers 6
    .param p1, "earlyUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 465
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->isBufferVeryLate(J)Z

    move-result v0

    return v0
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .registers 6
    .param p1, "earlyUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 452
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result v0

    return v0
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .registers 8
    .param p1, "earlyUs"    # J
    .param p3, "elapsedSinceLastRenderUs"    # J

    .line 478
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/32 v0, 0x186a0

    cmp-long v2, p3, v0

    if-lez v2, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method protected skipOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V
    .registers 4
    .param p1, "outputBuffer"    # Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;

    .line 487
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 488
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->release()V

    .line 489
    return-void
.end method

.method protected updateDroppedBufferCounters(II)V
    .registers 7
    .param p1, "droppedInputBufferCount"    # I
    .param p2, "droppedDecoderBufferCount"    # I

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedInputBufferCount:I

    .line 536
    add-int v0, p1, p2

    .line 537
    .local v0, "totalDroppedBufferCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 538
    iget v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    .line 539
    iget v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 540
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 541
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 542
    iget v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez v1, :cond_2f

    iget v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    if-lt v2, v1, :cond_2f

    .line 543
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 545
    :cond_2f
    return-void
.end method
