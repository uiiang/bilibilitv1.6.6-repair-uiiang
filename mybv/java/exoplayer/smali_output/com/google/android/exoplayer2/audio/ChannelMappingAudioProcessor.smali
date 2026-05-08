.class final Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;
.super Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "ChannelMappingAudioProcessor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private outputChannels:[I

.field private pendingOutputChannels:[I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .registers 10
    .param p1, "inputAudioFormat"    # Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    .line 58
    .local v0, "outputChannels":[I
    if-nez v0, :cond_7

    .line 59
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    return-object v1

    .line 62
    :cond_7
    iget v1, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3d

    .line 66
    iget v1, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 67
    .local v1, "active":Z
    :goto_16
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v6, v0

    if-ge v3, v6, :cond_2f

    .line 68
    aget v6, v0, v3

    .line 69
    .local v6, "channelIndex":I
    iget v7, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ge v6, v7, :cond_29

    .line 72
    if-eq v6, v3, :cond_24

    const/4 v7, 0x1

    goto :goto_25

    :cond_24
    const/4 v7, 0x0

    :goto_25
    or-int/2addr v1, v7

    .line 67
    .end local v6    # "channelIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 70
    .restart local v6    # "channelIndex":I
    :cond_29
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v2

    .line 74
    .end local v3    # "i":I
    .end local v6    # "channelIndex":I
    :cond_2f
    if-eqz v1, :cond_3a

    .line 75
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v4, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    array-length v5, v0

    invoke-direct {v3, v4, v5, v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    goto :goto_3c

    .line 76
    :cond_3a
    sget-object v3, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 74
    :goto_3c
    return-object v3

    .line 63
    .end local v1    # "active":Z
    :cond_3d
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    goto :goto_44

    :goto_43
    throw v1

    :goto_44
    goto :goto_43
.end method

.method protected onFlush()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    .line 100
    return-void
.end method

.method protected onReset()V
    .registers 2

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    .line 105
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    .line 106
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 12
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 82
    .local v0, "outputChannels":[I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 83
    .local v1, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 84
    .local v2, "limit":I
    sub-int v3, v2, v1

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int/2addr v3, v4

    .line 85
    .local v3, "frameCount":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int v4, v4, v3

    .line 86
    .local v4, "outputSize":I
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 87
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    :goto_21
    if-ge v1, v2, :cond_3c

    .line 88
    array-length v6, v0

    const/4 v7, 0x0

    :goto_25
    if-ge v7, v6, :cond_36

    aget v8, v0, v7

    .line 89
    .local v8, "channelIndex":I
    mul-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 88
    .end local v8    # "channelIndex":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 91
    :cond_36
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v6, v6, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    add-int/2addr v1, v6

    goto :goto_21

    .line 93
    :cond_3c
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 95
    return-void
.end method

.method public setChannelMap([I)V
    .registers 2
    .param p1, "outputChannels"    # [I

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    .line 51
    return-void
.end method
