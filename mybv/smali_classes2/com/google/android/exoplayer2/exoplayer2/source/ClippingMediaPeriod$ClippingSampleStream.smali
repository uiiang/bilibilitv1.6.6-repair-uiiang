.class final Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClippingSampleStream"
.end annotation


# instance fields
.field public final childStream:Lcom/google/android/exoplayer2/source/SampleStream;

.field private sentEos:Z

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;Lcom/google/android/exoplayer2/source/SampleStream;)V
    .registers 3
    .param p2, "childStream"    # Lcom/google/android/exoplayer2/source/SampleStream;

    .line 306
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 308
    return-void
.end method


# virtual methods
.method public clearSentEos()V
    .registers 2

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    .line 312
    return-void
.end method

.method public isReady()Z
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->isReady()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->maybeThrowError()V

    .line 322
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .registers 21
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v3

    const/4 v4, -0x3

    if-eqz v3, :cond_10

    .line 328
    return v4

    .line 330
    :cond_10
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    const/4 v5, 0x4

    const/4 v6, -0x4

    if-eqz v3, :cond_1a

    .line 331
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 332
    return v6

    .line 334
    :cond_1a
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v7

    .line 335
    .local v7, "bufferedPositionUs":J
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    move/from16 v9, p3

    invoke-interface {v3, v1, v2, v9}, Lcom/google/android/exoplayer2/source/SampleStream;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v3

    .line 336
    .local v3, "result":I
    const/4 v10, -0x5

    const-wide/high16 v11, -0x8000000000000000L

    if-ne v3, v10, :cond_6c

    .line 337
    iget-object v4, v1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/Format;

    .line 338
    .local v4, "format":Lcom/google/android/exoplayer2/Format;
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    if-nez v5, :cond_3d

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-eqz v5, :cond_6b

    .line 340
    :cond_3d
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    cmp-long v16, v5, v13

    if-eqz v16, :cond_4a

    const/4 v5, 0x0

    goto :goto_4c

    :cond_4a
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 341
    .local v5, "encoderDelay":I
    :goto_4c
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-wide v13, v6, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v13, v11

    if-eqz v6, :cond_55

    goto :goto_57

    :cond_55
    iget v15, v4, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    :goto_57
    move v6, v15

    .line 342
    .local v6, "encoderPadding":I
    nop

    .line 344
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v11

    .line 345
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v11

    .line 346
    invoke-virtual {v11, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v11

    .line 347
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    iput-object v11, v1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 349
    .end local v5    # "encoderDelay":I
    .end local v6    # "encoderPadding":I
    :cond_6b
    return v10

    .line 351
    .end local v4    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_6c
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-wide v13, v10, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v10, v13, v11

    if-eqz v10, :cond_96

    if-ne v3, v6, :cond_80

    iget-wide v13, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-wide v5, v10, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v10, v13, v5

    if-gez v10, :cond_8a

    :cond_80
    if-ne v3, v4, :cond_96

    cmp-long v4, v7, v11

    if-nez v4, :cond_96

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->waitingForKeys:Z

    if-nez v4, :cond_96

    .line 356
    :cond_8a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 357
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 358
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    .line 359
    const/4 v4, -0x4

    return v4

    .line 361
    :cond_96
    return v3
.end method

.method public skipData(J)I
    .registers 4
    .param p1, "positionUs"    # J

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 367
    const/4 v0, -0x3

    return v0

    .line 369
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleStream;->skipData(J)I

    move-result v0

    return v0
.end method
