.class final Lcom/google/android/exoplayer2/audio/ToFloatPcmAudioProcessor;
.super Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "ToFloatPcmAudioProcessor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FLOAT_NAN_AS_INT:I

.field private static final PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR:D = 4.656612875245797E-10


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/audio/ToFloatPcmAudioProcessor;->FLOAT_NAN_AS_INT:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method

.method private static writePcm32BitFloat(ILjava/nio/ByteBuffer;)V
    .registers 6
    .param p0, "pcm32BitInt"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 110
    const-wide v0, 0x3e00000000200000L    # 4.656612875245797E-10

    int-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-float v0, v2

    .line 111
    .local v0, "pcm32BitFloat":F
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 112
    .local v1, "floatBits":I
    sget v2, Lcom/google/android/exoplayer2/audio/ToFloatPcmAudioProcessor;->FLOAT_NAN_AS_INT:I

    if-ne v1, v2, :cond_19

    .line 113
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 115
    :cond_19
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 116
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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->isEncodingHighResolutionPcm(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 53
    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    .line 54
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v3, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v4, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    goto :goto_17

    .line 56
    :cond_15
    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 53
    :goto_17
    return-object v2

    .line 51
    :cond_18
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v1
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 62
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 63
    .local v1, "limit":I
    sub-int v2, v1, v0

    .line 66
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/ToFloatPcmAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    sparse-switch v3, :sswitch_data_8a

    .line 96
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 78
    :sswitch_17
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/audio/ToFloatPcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 79
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    move v4, v0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v1, :cond_4c

    .line 80
    nop

    .line 81
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    .line 82
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x2

    .line 83
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x3

    .line 84
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    .line 85
    .local v5, "pcm32BitInteger":I
    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 79
    .end local v5    # "pcm32BitInteger":I
    add-int/lit8 v4, v4, 0x4

    goto :goto_1c

    .line 87
    .end local v4    # "i":I
    :cond_4c
    goto :goto_7e

    .line 68
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :sswitch_4d
    div-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/audio/ToFloatPcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 69
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    move v4, v0

    .restart local v4    # "i":I
    :goto_56
    if-ge v4, v1, :cond_7d

    .line 70
    nop

    .line 71
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x1

    .line 72
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x2

    .line 73
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    .line 74
    .restart local v5    # "pcm32BitInteger":I
    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 69
    .end local v5    # "pcm32BitInteger":I
    add-int/lit8 v4, v4, 0x3

    goto :goto_56

    .line 76
    .end local v4    # "i":I
    :cond_7d
    nop

    .line 99
    :goto_7e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 101
    return-void

    nop

    :sswitch_data_8a
    .sparse-switch
        0x20000000 -> :sswitch_4d
        0x30000000 -> :sswitch_17
    .end sparse-switch
.end method
