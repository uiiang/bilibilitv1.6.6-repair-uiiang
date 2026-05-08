.class public final Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;
.super Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "TeeAudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;,
        Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final audioBufferSink:Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;)V
    .registers 3
    .param p1, "audioBufferSink"    # Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    .line 70
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->audioBufferSink:Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    .line 72
    return-void
.end method

.method private flushSinkIfActive()V
    .registers 5

    .line 106
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->audioBufferSink:Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;->flush(III)V

    .line 110
    :cond_17
    return-void
.end method


# virtual methods
.method public onConfigure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .registers 2
    .param p1, "inputAudioFormat"    # Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 77
    return-object p1
.end method

.method protected onFlush()V
    .registers 1

    .line 92
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->flushSinkIfActive()V

    .line 93
    return-void
.end method

.method protected onQueueEndOfStream()V
    .registers 1

    .line 97
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->flushSinkIfActive()V

    .line 98
    return-void
.end method

.method protected onReset()V
    .registers 1

    .line 102
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->flushSinkIfActive()V

    .line 103
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 83
    .local v0, "remaining":I
    if-nez v0, :cond_7

    .line 84
    return-void

    .line 86
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->audioBufferSink:Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;->handleBuffer(Ljava/nio/ByteBuffer;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 88
    return-void
.end method
