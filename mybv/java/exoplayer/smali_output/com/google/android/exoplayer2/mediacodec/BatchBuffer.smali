.class final Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;
.super Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
.source "BatchBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_SAMPLE_COUNT:I = 0x20

.field static final MAX_SIZE_BYTES:I = 0x2ee000


# instance fields
.field private lastSampleTimeUs:J

.field private maxSampleCount:I

.field private sampleCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    .line 53
    const/16 v0, 0x20

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->maxSampleCount:I

    .line 54
    return-void
.end method

.method private canAppendSampleBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z
    .registers 7
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 128
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 130
    return v1

    .line 132
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->maxSampleCount:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_10

    .line 133
    return v3

    .line 135
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->isDecodeOnly()Z

    move-result v2

    if-eq v0, v2, :cond_1b

    .line 136
    return v3

    .line 138
    :cond_1b
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 139
    .local v0, "bufferData":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_34

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v2, v4

    const v4, 0x2ee000

    if-le v2, v4, :cond_34

    .line 142
    return v3

    .line 144
    :cond_34
    return v1
.end method


# virtual methods
.method public append(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z
    .registers 6
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 103
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 104
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->hasSupplementalData()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 105
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->canAppendSampleBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 107
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_21
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    if-nez v0, :cond_36

    .line 110
    iget-wide v2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->timeUs:J

    .line 111
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isKeyFrame()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 112
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->setFlags(I)V

    .line 115
    :cond_36
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 116
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->setFlags(I)V

    .line 118
    :cond_41
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 119
    .local v0, "bufferData":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_51

    .line 120
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->ensureSpaceForWrite(I)V

    .line 121
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 123
    :cond_51
    iget-wide v2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->lastSampleTimeUs:J

    .line 124
    return v1
.end method

.method public clear()V
    .registers 2

    .line 58
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    .line 60
    return-void
.end method

.method public getFirstSampleTimeUs()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->timeUs:J

    return-wide v0
.end method

.method public getLastSampleTimeUs()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->lastSampleTimeUs:J

    return-wide v0
.end method

.method public getSampleCount()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    return v0
.end method

.method public hasSamples()Z
    .registers 2

    .line 91
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setMaxSampleCount(I)V
    .registers 3
    .param p1, "maxSampleCount"    # I

    .line 64
    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 65
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->maxSampleCount:I

    .line 66
    return-void
.end method
