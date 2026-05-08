.class public final Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;
.super Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "ChannelMixingAudioProcessor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final matrixByInputChannelCount:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;->matrixByInputChannelCount:Landroid/util/SparseArray;

    .line 44
    return-void
.end method


# virtual methods
.method protected onConfigure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .registers 7
    .param p1, "inputAudioFormat"    # Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 59
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;->matrixByInputChannelCount:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 64
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;

    .line 65
    .local v0, "channelMixingMatrix":Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;
    if-eqz v0, :cond_26

    .line 69
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 70
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    return-object v1

    .line 72
    :cond_1a
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v3, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 74
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->getOutputChannelCount()I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    .line 72
    return-object v2

    .line 66
    :cond_26
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    const-string v2, "No mixing matrix for input channel count"

    invoke-direct {v1, v2, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v1

    .line 60
    .end local v0    # "channelMixingMatrix":Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;
    :cond_2e
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v0
.end method

.method public putChannelMixingMatrix(Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;)V
    .registers 4
    .param p1, "matrix"    # Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;

    .line 52
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->getInputChannelCount()I

    move-result v0

    .line 53
    .local v0, "inputChannelCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;->matrixByInputChannelCount:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 14
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;->matrixByInputChannelCount:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 81
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;

    .line 83
    .local v0, "channelMixingMatrix":Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int/2addr v1, v2

    .line 84
    .local v1, "inputFramesToMix":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int v2, v2, v1

    .line 85
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 86
    .local v2, "outputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->getInputChannelCount()I

    move-result v3

    .line 87
    .local v3, "inputChannelCount":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->getOutputChannelCount()I

    move-result v4

    .line 88
    .local v4, "outputChannelCount":I
    new-array v5, v4, [F

    .line 89
    .local v5, "outputFrame":[F
    :goto_2f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 90
    const/4 v6, 0x0

    .local v6, "inputChannelIndex":I
    :goto_36
    if-ge v6, v3, :cond_51

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 92
    .local v7, "inputValue":S
    const/4 v8, 0x0

    .line 93
    .local v8, "outputChannelIndex":I
    :goto_3d
    if-ge v8, v4, :cond_4e

    .line 95
    aget v9, v5, v8

    .line 96
    invoke-virtual {v0, v6, v8}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->getMixingCoefficient(II)F

    move-result v10

    int-to-float v11, v7

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    aput v9, v5, v8

    .line 94
    add-int/lit8 v8, v8, 0x1

    goto :goto_3d

    .line 90
    .end local v7    # "inputValue":S
    .end local v8    # "outputChannelIndex":I
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 100
    .end local v6    # "inputChannelIndex":I
    :cond_51
    const/4 v6, 0x0

    .line 101
    .local v6, "outputChannelIndex":I
    :goto_52
    if-ge v6, v4, :cond_75

    .line 103
    aget v7, v5, v6

    .line 105
    const/high16 v8, -0x39000000    # -32768.0f

    const v9, 0x46fffe00    # 32767.0f

    invoke-static {v7, v8, v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v7

    float-to-int v7, v7

    int-to-short v7, v7

    .line 107
    .local v7, "shortValue":S
    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 108
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 109
    const/4 v8, 0x0

    aput v8, v5, v6

    .line 102
    .end local v7    # "shortValue":S
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .end local v6    # "outputChannelIndex":I
    :cond_75
    goto :goto_2f

    .line 112
    :cond_76
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 113
    return-void
.end method
