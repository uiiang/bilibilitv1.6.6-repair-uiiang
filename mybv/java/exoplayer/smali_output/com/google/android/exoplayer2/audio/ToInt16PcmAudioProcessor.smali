.class public final Lcom/google/android/exoplayer2/audio/ToInt16PcmAudioProcessor;
.super Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "ToInt16PcmAudioProcessor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .registers 7
    .param p1, "inputAudioFormat"    # Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 49
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 50
    .local v0, "encoding":I
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1e

    if-eq v0, v2, :cond_1e

    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_1e

    const/high16 v1, 0x20000000

    if-eq v0, v1, :cond_1e

    const/high16 v1, 0x30000000

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    goto :goto_1e

    .line 56
    :cond_18
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v1

    .line 58
    :cond_1e
    :goto_1e
    if-eq v0, v2, :cond_2a

    .line 59
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v3, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v4, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    goto :goto_2c

    .line 61
    :cond_2a
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 58
    :goto_2c
    return-object v1
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 11
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 68
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 69
    .local v1, "limit":I
    sub-int v2, v1, v0

    .line 71
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/ToInt16PcmAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    sparse-switch v3, :sswitch_data_ca

    .line 89
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 79
    :sswitch_17
    div-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x2

    .line 80
    .local v3, "resampledSize":I
    goto :goto_24

    .line 76
    .end local v3    # "resampledSize":I
    :sswitch_1c
    move v3, v2

    .line 77
    .restart local v3    # "resampledSize":I
    goto :goto_24

    .line 83
    .end local v3    # "resampledSize":I
    :sswitch_1e
    div-int/lit8 v3, v2, 0x2

    .line 84
    .restart local v3    # "resampledSize":I
    goto :goto_24

    .line 73
    .end local v3    # "resampledSize":I
    :sswitch_21
    mul-int/lit8 v3, v2, 0x2

    .line 74
    .restart local v3    # "resampledSize":I
    nop

    .line 93
    :goto_24
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/audio/ToInt16PcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 94
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/ToInt16PcmAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v5, v5, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    sparse-switch v5, :sswitch_data_e0

    .line 141
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 118
    :sswitch_35
    move v5, v0

    .local v5, "i":I
    :goto_36
    if-ge v5, v1, :cond_4d

    .line 119
    add-int/lit8 v6, v5, 0x2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 120
    add-int/lit8 v6, v5, 0x3

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 118
    add-int/lit8 v5, v5, 0x4

    goto :goto_36

    .line 122
    .end local v5    # "i":I
    :cond_4d
    goto/16 :goto_bf

    .line 111
    :sswitch_4f
    move v5, v0

    .restart local v5    # "i":I
    :goto_50
    if-ge v5, v1, :cond_67

    .line 112
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 113
    add-int/lit8 v6, v5, 0x2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    add-int/lit8 v5, v5, 0x3

    goto :goto_50

    .line 115
    .end local v5    # "i":I
    :cond_67
    goto :goto_bf

    .line 104
    :sswitch_68
    move v5, v0

    .restart local v5    # "i":I
    :goto_69
    if-ge v5, v1, :cond_7e

    .line 105
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 104
    add-int/lit8 v5, v5, 0x2

    goto :goto_69

    .line 108
    .end local v5    # "i":I
    :cond_7e
    goto :goto_bf

    .line 126
    :sswitch_7f
    move v5, v0

    .restart local v5    # "i":I
    :goto_80
    if-ge v5, v1, :cond_a7

    .line 129
    nop

    .line 130
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v8}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v6

    .line 131
    .local v6, "floatValue":F
    const v7, 0x46fffe00    # 32767.0f

    mul-float v7, v7, v6

    float-to-int v7, v7

    int-to-short v7, v7

    .line 132
    .local v7, "shortValue":S
    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 133
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 126
    .end local v6    # "floatValue":F
    .end local v7    # "shortValue":S
    add-int/lit8 v5, v5, 0x4

    goto :goto_80

    .line 135
    .end local v5    # "i":I
    :cond_a7
    goto :goto_bf

    .line 97
    :sswitch_a8
    move v5, v0

    .restart local v5    # "i":I
    :goto_a9
    if-ge v5, v1, :cond_be

    .line 98
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    .line 101
    .end local v5    # "i":I
    :cond_be
    nop

    .line 143
    :goto_bf
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 145
    return-void

    :sswitch_data_ca
    .sparse-switch
        0x3 -> :sswitch_21
        0x4 -> :sswitch_1e
        0x10000000 -> :sswitch_1c
        0x20000000 -> :sswitch_17
        0x30000000 -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_e0
    .sparse-switch
        0x3 -> :sswitch_a8
        0x4 -> :sswitch_7f
        0x10000000 -> :sswitch_68
        0x20000000 -> :sswitch_4f
        0x30000000 -> :sswitch_35
    .end sparse-switch
.end method
