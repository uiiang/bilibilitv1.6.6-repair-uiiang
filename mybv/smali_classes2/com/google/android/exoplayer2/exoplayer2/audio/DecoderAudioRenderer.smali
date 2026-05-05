.class public abstract Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "DecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer$AudioSinkListener;,
        Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer$Api23;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/decoder/Decoder<",
        "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
        "+",
        "Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;",
        "+",
        "Lcom/google/android/exoplayer2/decoder/DecoderException;",
        ">;>",
        "Lcom/google/android/exoplayer2/BaseRenderer;",
        "Lcom/google/android/exoplayer2/util/MediaClock;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_PENDING_OUTPUT_STREAM_OFFSET_COUNT:I = 0xa

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DecoderAudioRenderer"


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private audioTrackNeedsConfigure:Z

.field private currentPositionUs:J

.field private decoder:Lcom/google/android/exoplayer2/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private encoderDelay:I

.field private encoderPadding:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private experimentalKeepAudioTrackOnSeek:Z

.field private firstStreamSampleRead:Z

.field private final flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private pendingOutputStreamOffsetCount:I

.field private final pendingOutputStreamOffsetsUs:[J

.field private sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 167
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 168
    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .registers 7
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p3, "audioCapabilities"    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .param p4, "audioProcessors"    # [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 197
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 202
    invoke-static {p3, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 201
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setAudioCapabilities(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->setAudioProcessors([Lcom/google/android/exoplayer2/audio/AudioProcessor;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->build()Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    move-result-object v0

    .line 197
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .registers 7
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p3, "audioSink"    # Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 217
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 218
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 219
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 220
    new-instance v1, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer$AudioSinkListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer$1;)V

    invoke-interface {p3, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V

    .line 221
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newNoDataInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 222
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 223
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 224
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setOutputStreamOffsetUs(J)V

    .line 225
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    .line 226
    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .registers 5
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p3, "audioProcessors"    # [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 180
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 181
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-object v0
.end method

.method private drainOutputBuffer()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/decoder/DecoderException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 408
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_31

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    .line 410
    if-nez v0, :cond_12

    .line 411
    return v1

    .line 413
    :cond_12
    iget v0, v0, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->skippedOutputBufferCount:I

    if-lez v0, :cond_26

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    iget v3, v3, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    .line 417
    :cond_26
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->isFirstSample()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 418
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->processFirstSampleOfStream()V

    .line 422
    :cond_31
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_61

    .line 423
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_49

    .line 425
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 426
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 428
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    goto :goto_54

    .line 430
    :cond_49
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 431
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    .line 433
    :try_start_50
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->processEndOfStream()V
    :try_end_53
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_50 .. :try_end_53} :catch_55

    .line 437
    nop

    .line 439
    :goto_54
    return v1

    .line 434
    :catch_55
    move-exception v0

    .line 435
    .local v0, "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 442
    .end local v0    # "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    :cond_61
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    if-eqz v0, :cond_86

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 444
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getOutputFormat(Lcom/google/android/exoplayer2/decoder/Decoder;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->encoderDelay:I

    .line 446
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->encoderPadding:I

    .line 447
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 449
    .local v0, "outputFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioSink;->configure(Lcom/google/android/exoplayer2/Format;I[I)V

    .line 450
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 453
    .end local v0    # "outputFormat":Lcom/google/android/exoplayer2/Format;
    :cond_86
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->timeUs:J

    invoke-interface {v0, v4, v5, v6, v3}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 456
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 457
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    .line 458
    return v3

    .line 461
    :cond_a5
    return v1
.end method

.method private feedInputBuffer()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;,
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 486
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_93

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_93

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_10

    goto/16 :goto_93

    .line 493
    :cond_10
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v2, :cond_1f

    .line 494
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 495
    if-nez v0, :cond_1f

    .line 496
    return v1

    .line 500
    :cond_1f
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_37

    .line 501
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 503
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 504
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 505
    return v1

    .line 508
    :cond_37
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 509
    .local v0, "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v3

    packed-switch v3, :pswitch_data_94

    .line 535
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 511
    :pswitch_4a
    return v1

    .line 516
    :pswitch_4b
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 517
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 518
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 519
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 520
    return v1

    .line 522
    :cond_5f
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->firstStreamSampleRead:Z

    if-nez v1, :cond_6c

    .line 523
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->firstStreamSampleRead:Z

    .line 524
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 526
    :cond_6c
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 527
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->format:Lcom/google/android/exoplayer2/Format;

    .line 528
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 529
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 530
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 531
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->queuedInputBufferCount:I

    .line 532
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 533
    return v4

    .line 513
    :pswitch_8f
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    .line 514
    return v4

    .line 490
    .end local v0    # "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    :cond_93
    :goto_93
    return v1

    :pswitch_data_94
    .packed-switch -0x5
        :pswitch_8f
        :pswitch_4b
        :pswitch_4a
    .end packed-switch
.end method

.method private flushDecoder()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 545
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    if-eqz v0, :cond_b

    .line 546
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 547
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    goto :goto_1f

    .line 549
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 550
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    if-eqz v1, :cond_17

    .line 551
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 552
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    .line 554
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->flush()V

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 557
    :goto_1f
    return-void
.end method

.method private maybeInitDecoder()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 703
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_5

    .line 704
    return-void

    .line 707
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 709
    const/4 v0, 0x0

    .line 710
    .local v0, "cryptoConfig":Lcom/google/android/exoplayer2/decoder/CryptoConfig;
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1f

    .line 711
    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getCryptoConfig()Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    move-result-object v0

    .line 712
    if-nez v0, :cond_1f

    .line 713
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    .line 714
    .local v1, "drmError":Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    if-eqz v1, :cond_1e

    goto :goto_1f

    .line 719
    :cond_1e
    return-void

    .line 725
    .end local v1    # "drmError":Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    :cond_1f
    :goto_1f
    const/16 v1, 0xfa1

    :try_start_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 726
    .local v2, "codecInitializingTimestamp":J
    const-string v4, "createAudioDecoder"

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 727
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v4, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/CryptoConfig;)Lcom/google/android/exoplayer2/decoder/Decoder;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 728
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 729
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 730
    .local v4, "codecInitializedTimestamp":J
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 731
    invoke-interface {v7}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v7

    sub-long v10, v4, v2

    .line 730
    move-wide v8, v4

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 734
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v7, v6, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_4f
    .catch Lcom/google/android/exoplayer2/decoder/DecoderException; {:try_start_21 .. :try_end_4f} :catch_59
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_4f} :catch_51

    .line 743
    .end local v2    # "codecInitializingTimestamp":J
    .end local v4    # "codecInitializedTimestamp":J
    nop

    .line 744
    return-void

    .line 740
    :catch_51
    move-exception v2

    .line 741
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 735
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_59
    move-exception v2

    .line 736
    .local v2, "e":Lcom/google/android/exoplayer2/decoder/DecoderException;
    const-string v3, "DecoderAudioRenderer"

    const-string v4, "Audio codec error"

    invoke-static {v3, v4, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 737
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    .line 738
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method private onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V
    .registers 11
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 771
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    .line 772
    .local v0, "newFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 773
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 774
    .local v7, "oldFormat":Lcom/google/android/exoplayer2/Format;
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 775
    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iput v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->encoderDelay:I

    .line 776
    iget v1, v0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iput v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->encoderPadding:I

    .line 778
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-nez v1, :cond_29

    .line 779
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 780
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 781
    return-void

    .line 785
    :cond_29
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_3f

    .line 786
    new-instance v8, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 788
    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x80

    move-object v1, v8

    move-object v3, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    .local v1, "evaluation":Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    goto :goto_47

    .line 794
    .end local v1    # "evaluation":Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    :cond_3f
    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->canReuseDecoder(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v1

    .line 797
    .restart local v1    # "evaluation":Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    :goto_47
    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-nez v2, :cond_5b

    .line 798
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_53

    .line 800
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    goto :goto_5b

    .line 803
    :cond_53
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 804
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 805
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 808
    :cond_5b
    :goto_5b
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 809
    return-void
.end method

.method private processEndOfStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 540
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V

    .line 542
    return-void
.end method

.method private processFirstSampleOfStream()V
    .registers 5

    .line 465
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    .line 466
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    if-eqz v0, :cond_1c

    .line 467
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setOutputStreamOffsetUs(J)V

    .line 468
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    .line 469
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    :cond_1c
    return-void
.end method

.method private releaseDecoder()V
    .registers 4

    .line 747
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 748
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    .line 749
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 750
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 751
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v1, :cond_28

    .line 752
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 753
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->release()V

    .line 754
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    .line 755
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 757
    :cond_28
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 758
    return-void
.end method

.method private setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .registers 3
    .param p1, "session"    # Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 766
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 767
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 768
    return-void
.end method

.method private setOutputStreamOffsetUs(J)V
    .registers 6
    .param p1, "outputStreamOffsetUs"    # J

    .line 479
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamOffsetUs:J

    .line 480
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_10

    .line 481
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setOutputStreamOffsetUs(J)V

    .line 483
    :cond_10
    return-void
.end method

.method private setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .registers 3
    .param p1, "session"    # Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 761
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 762
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 763
    return-void
.end method

.method private updateCurrentPosition()V
    .registers 6

    .line 824
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 825
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_22

    .line 826
    nop

    .line 827
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_17

    .line 828
    move-wide v2, v0

    goto :goto_1d

    .line 829
    :cond_17
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_1d
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    .line 830
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 832
    :cond_22
    return-void
.end method


# virtual methods
.method protected canReuseDecoder(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .registers 11
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "oldFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "newFormat"    # Lcom/google/android/exoplayer2/Format;

    .line 398
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
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
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation
.end method

.method public experimentalSetEnableKeepAudioTrackOnSeek(Z)V
    .registers 2
    .param p1, "enableKeepAudioTrackOnSeek"    # Z

    .line 238
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    .line 239
    return-void
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
    .registers 1

    .line 244
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    return-object p0
.end method

.method protected abstract getOutputFormat(Lcom/google/android/exoplayer2/decoder/Decoder;)Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 2

    .line 585
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .registers 3

    .line 572
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 573
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->updateCurrentPosition()V

    .line 575
    :cond_a
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method protected final getSinkFormatSupport(Lcom/google/android/exoplayer2/Format;)I
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 286
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getFormatSupport(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 667
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    packed-switch p1, :pswitch_data_4e

    .line 697
    :pswitch_3
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_4c

    .line 686
    :pswitch_7
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4c

    .line 687
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer$Api23;->setAudioSinkPreferredDevice(Lcom/google/android/exoplayer2/audio/AudioSink;Ljava/lang/Object;)V

    goto :goto_4c

    .line 683
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioSessionId(I)V

    .line 684
    goto :goto_4c

    .line 680
    :pswitch_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    .line 681
    goto :goto_4c

    .line 676
    :pswitch_2d
    move-object v0, p2

    check-cast v0, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 677
    .local v0, "auxEffectInfo":Lcom/google/android/exoplayer2/audio/AuxEffectInfo;
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    .line 678
    goto :goto_4c

    .line 672
    .end local v0    # "auxEffectInfo":Lcom/google/android/exoplayer2/audio/AuxEffectInfo;
    :pswitch_36
    move-object v0, p2

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 673
    .local v0, "audioAttributes":Lcom/google/android/exoplayer2/audio/AudioAttributes;
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 674
    goto :goto_4c

    .line 669
    .end local v0    # "audioAttributes":Lcom/google/android/exoplayer2/audio/AudioAttributes;
    :pswitch_3f
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setVolume(F)V

    .line 670
    nop

    .line 700
    :cond_4c
    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_36
        :pswitch_3
        :pswitch_3
        :pswitch_2d
        :pswitch_3
        :pswitch_3
        :pswitch_20
        :pswitch_13
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public isEnded()Z
    .registers 2

    .line 561
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 566
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_17

    .line 567
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 566
    :goto_1a
    return v0
.end method

.method protected onDisabled()V
    .registers 4

    .line 632
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 633
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 634
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setOutputStreamOffsetUs(J)V

    .line 636
    :try_start_e
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 637
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_22

    .line 640
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 641
    nop

    .line 642
    return-void

    .line 640
    :catchall_22
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 641
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

    .line 591
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 592
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 593
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    if-eqz v0, :cond_1a

    .line 594
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->enableTunnelingV21()V

    goto :goto_1f

    .line 596
    :cond_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->disableTunneling()V

    .line 598
    :goto_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPlayerId(Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 599
    return-void
.end method

.method protected onPositionDiscontinuity()V
    .registers 2

    .line 360
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 361
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 5
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 603
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    if-eqz v0, :cond_a

    .line 604
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->experimentalFlushWithoutAudioTrackRelease()V

    goto :goto_f

    .line 606
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    .line 609
    :goto_f
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 611
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 613
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    .line 614
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_22

    .line 615
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flushDecoder()V

    .line 617
    :cond_22
    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 7
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 812
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_21

    .line 816
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    .line 817
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    .line 819
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 821
    :cond_21
    return-void
.end method

.method protected onStarted()V
    .registers 2

    .line 621
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->play()V

    .line 622
    return-void
.end method

.method protected onStopped()V
    .registers 2

    .line 626
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->updateCurrentPosition()V

    .line 627
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    .line 628
    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .registers 11
    .param p1, "formats"    # [Lcom/google/android/exoplayer2/Format;
    .param p2, "startPositionUs"    # J
    .param p4, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 647
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    invoke-super/range {p0 .. p5}, Lcom/google/android/exoplayer2/BaseRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V

    .line 648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->firstStreamSampleRead:Z

    .line 649
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    .line 650
    invoke-direct {p0, p4, p5}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setOutputStreamOffsetUs(J)V

    goto :goto_49

    .line 652
    :cond_15
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    array-length v1, v1

    if-ne v0, v1, :cond_3d

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many stream changes, so dropping offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecoderAudioRenderer"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 658
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    .line 660
    :goto_41
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v1, v1, -0x1

    aput-wide p4, v0, v1

    .line 662
    :goto_49
    return-void
.end method

.method public render(JJ)V
    .registers 10
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 291
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    const/16 v1, 0x138a

    if-eqz v0, :cond_17

    .line 293
    :try_start_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V
    :try_end_b
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 297
    nop

    .line 298
    return-void

    .line 294
    :catch_d
    move-exception v0

    .line 295
    .local v0, "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 302
    .end local v0    # "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_4e

    .line 304
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 305
    .local v0, "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 306
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v2

    .line 307
    .local v2, "result":I
    const/4 v3, -0x5

    if-ne v2, v3, :cond_32

    .line 308
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    goto :goto_4e

    .line 309
    :cond_32
    const/4 v3, -0x4

    if-ne v2, v3, :cond_4d

    .line 311
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 312
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 314
    :try_start_41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->processEndOfStream()V
    :try_end_44
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_41 .. :try_end_44} :catch_46

    .line 318
    nop

    .line 319
    return-void

    .line 315
    :catch_46
    move-exception v3

    .line 316
    .local v3, "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 322
    .end local v3    # "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    :cond_4d
    return-void

    .line 327
    .end local v0    # "formatHolder":Lcom/google/android/exoplayer2/FormatHolder;
    .end local v2    # "result":I
    :cond_4e
    :goto_4e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_a6

    .line 332
    const/16 v0, 0x1389

    :try_start_57
    const-string v2, "drainAndFeed"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 333
    :goto_5c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->drainOutputBuffer()Z

    move-result v2

    if-eqz v2, :cond_63

    goto :goto_5c

    .line 334
    :cond_63
    :goto_63
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->feedInputBuffer()Z

    move-result v2

    if-eqz v2, :cond_6a

    goto :goto_63

    .line 335
    :cond_6a
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_6d
    .catch Lcom/google/android/exoplayer2/decoder/DecoderException; {:try_start_57 .. :try_end_6d} :catch_90
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_57 .. :try_end_6d} :catch_88
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_57 .. :try_end_6d} :catch_7e
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_57 .. :try_end_6d} :catch_74

    .line 350
    nop

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_a6

    .line 347
    :catch_74
    move-exception v0

    .line 348
    .local v0, "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 344
    .end local v0    # "e":Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
    :catch_7e
    move-exception v1

    .line 345
    .local v1, "e":Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->isRecoverable:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 341
    .end local v1    # "e":Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
    :catch_88
    move-exception v1

    .line 342
    .local v1, "e":Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 336
    .end local v1    # "e":Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
    :catch_90
    move-exception v0

    .line 338
    .local v0, "e":Lcom/google/android/exoplayer2/decoder/DecoderException;
    const-string v1, "DecoderAudioRenderer"

    const-string v2, "Audio codec error"

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    .line 340
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v2, 0xfa3

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 353
    .end local v0    # "e":Lcom/google/android/exoplayer2/decoder/DecoderException;
    :cond_a6
    :goto_a6
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 580
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 581
    return-void
.end method

.method protected final sinkSupportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 276
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    return v0
.end method

.method public final supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .registers 6
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 249
    .local p0, "this":Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 250
    invoke-static {v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v0

    return v0

    .line 252
    :cond_e
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer;->supportsFormatInternal(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    .line 253
    .local v0, "formatSupport":I
    const/4 v2, 0x2

    if-gt v0, v2, :cond_1a

    .line 254
    invoke-static {v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v1

    return v1

    .line 257
    :cond_1a
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_22

    const/16 v1, 0x20

    .line 258
    .local v1, "tunnelingSupport":I
    :cond_22
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result v2

    return v2
.end method

.method protected abstract supportsFormatInternal(Lcom/google/android/exoplayer2/Format;)I
.end method
