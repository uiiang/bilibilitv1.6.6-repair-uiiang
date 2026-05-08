.class final Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;
.super Ljava/lang/Object;
.source "C2Mp3TimestampTracker.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DECODER_DELAY_FRAMES:J = 0x211L

.field private static final TAG:Ljava/lang/String; = "C2Mp3TimestampTracker"


# instance fields
.field private anchorTimestampUs:J

.field private processedFrames:J

.field private seenInvalidMpegAudioHeader:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBufferTimestampUs(J)J
    .registers 9
    .param p1, "sampleRate"    # J

    .line 109
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->anchorTimestampUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    const-wide/16 v4, 0x211

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    div-long/2addr v2, p1

    .line 110
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 109
    return-wide v0
.end method


# virtual methods
.method public getLastOutputBufferPresentationTimeUs(Lcom/google/android/exoplayer2/Format;)J
    .registers 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 103
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->getBufferTimestampUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->anchorTimestampUs:J

    .line 54
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->seenInvalidMpegAudioHeader:Z

    .line 56
    return-void
.end method

.method public updateAndGetPresentationTimeUs(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)J
    .registers 12
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 66
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    .line 67
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->anchorTimestampUs:J

    .line 70
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->seenInvalidMpegAudioHeader:Z

    if-eqz v0, :cond_13

    .line 71
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    return-wide v0

    .line 74
    :cond_13
    iget-object v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 75
    .local v0, "data":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 76
    .local v1, "sampleHeaderData":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2c

    .line 77
    shl-int/lit8 v1, v1, 0x8

    .line 78
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 81
    .end local v4    # "i":I
    :cond_2c
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->parseMpegAudioFrameSampleCount(I)I

    move-result v4

    .line 82
    .local v4, "frameCount":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_46

    .line 83
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->seenInvalidMpegAudioHeader:Z

    .line 84
    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    .line 85
    iget-wide v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->anchorTimestampUs:J

    .line 86
    const-string v2, "C2Mp3TimestampTracker"

    const-string v3, "MPEG audio header is invalid."

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-wide v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    return-wide v2

    .line 89
    :cond_46
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->getBufferTimestampUs(J)J

    move-result-wide v2

    .line 90
    .local v2, "currentBufferTimestampUs":J
    iget-wide v5, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    .line 91
    return-wide v2
.end method
