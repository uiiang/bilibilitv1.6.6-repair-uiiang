.class final Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;
.super Ljava/lang/Object;
.source "SilenceMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SilenceMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SilenceSampleStream"
.end annotation


# instance fields
.field private final durationBytes:J

.field private positionBytes:J

.field private sentFormat:Z


# direct methods
.method public constructor <init>(J)V
    .registers 5
    .param p1, "durationUs"    # J

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    # invokes: Lcom/google/android/exoplayer2/source/SilenceMediaSource;->getAudioByteCount(J)J
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$300(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->durationBytes:J

    .line 278
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->seekTo(J)V

    .line 279
    return-void
.end method


# virtual methods
.method public isReady()Z
    .registers 2

    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .registers 1

    .line 291
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .registers 13
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I

    .line 296
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->sentFormat:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_a

    goto :goto_4b

    .line 302
    :cond_a
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->durationBytes:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    sub-long/2addr v2, v4

    .line 303
    .local v2, "bytesRemaining":J
    const-wide/16 v6, 0x0

    const/4 v0, -0x4

    cmp-long v8, v2, v6

    if-nez v8, :cond_1b

    .line 304
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 305
    return v0

    .line 308
    :cond_1b
    # invokes: Lcom/google/android/exoplayer2/source/SilenceMediaSource;->getAudioPositionUs(J)J
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$400(J)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 309
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 310
    # getter for: Lcom/google/android/exoplayer2/source/SilenceMediaSource;->SILENCE_SAMPLE:[B
    invoke-static {}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$500()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 311
    .local v1, "bytesToWrite":I
    and-int/lit8 v4, p3, 0x4

    if-nez v4, :cond_40

    .line 312
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 313
    iget-object v4, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    # getter for: Lcom/google/android/exoplayer2/source/SilenceMediaSource;->SILENCE_SAMPLE:[B
    invoke-static {}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$500()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 315
    :cond_40
    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_4a

    .line 316
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    .line 318
    :cond_4a
    return v0

    .line 297
    .end local v1    # "bytesToWrite":I
    .end local v2    # "bytesRemaining":J
    :cond_4b
    :goto_4b
    # getter for: Lcom/google/android/exoplayer2/source/SilenceMediaSource;->FORMAT:Lcom/google/android/exoplayer2/Format;
    invoke-static {}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$200()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 298
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->sentFormat:Z

    .line 299
    const/4 v0, -0x5

    return v0
.end method

.method public seekTo(J)V
    .registers 9
    .param p1, "positionUs"    # J

    .line 282
    # invokes: Lcom/google/android/exoplayer2/source/SilenceMediaSource;->getAudioByteCount(J)J
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$300(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->durationBytes:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    .line 283
    return-void
.end method

.method public skipData(J)I
    .registers 9
    .param p1, "positionUs"    # J

    .line 323
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    .line 324
    .local v0, "oldPositionBytes":J
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->seekTo(J)V

    .line 325
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    sub-long/2addr v2, v0

    # getter for: Lcom/google/android/exoplayer2/source/SilenceMediaSource;->SILENCE_SAMPLE:[B
    invoke-static {}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$500()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v3, v2

    return v3
.end method
