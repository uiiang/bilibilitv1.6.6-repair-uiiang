.class final Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PassthroughOutputWriter"
.end annotation


# instance fields
.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private outputFrameCount:J

.field private pendingOutputBytes:I

.field private startTimeUs:J

.field private final targetSampleSizeBytes:I

.field private final trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavFormat;Ljava/lang/String;I)V
    .registers 10
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "trackOutput"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .param p3, "wavFormat"    # Lcom/google/android/exoplayer2/extractor/wav/WavFormat;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "pcmEncoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 310
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 311
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    .line 313
    iget v0, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    iget v1, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x8

    .line 315
    .local v0, "bytesPerFrame":I
    iget v1, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    if-ne v1, v0, :cond_53

    .line 321
    iget v1, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    mul-int v1, v1, v0

    mul-int/lit8 v1, v1, 0x8

    .line 322
    .local v1, "constantBitrate":I
    iget v2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    mul-int v2, v2, v0

    div-int/lit8 v2, v2, 0xa

    .line 323
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    .line 324
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 326
    invoke-virtual {v3, p4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 327
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 328
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 329
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    .line 330
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    .line 331
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 332
    invoke-virtual {v2, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 333
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Lcom/google/android/exoplayer2/Format;

    .line 334
    return-void

    .line 316
    .end local v1    # "constantBitrate":I
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected block size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public init(IJ)V
    .registers 13
    .param p1, "dataStartPosition"    # I
    .param p2, "dataEndPosition"    # J

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    const/4 v3, 0x1

    int-to-long v4, p1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/wav/WavFormat;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 348
    return-void
.end method

.method public reset(J)V
    .registers 5
    .param p1, "timeUs"    # J

    .line 338
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    .line 340
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    .line 341
    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .registers 22
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "bytesLeft"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .end local p2    # "bytesLeft":J
    .local v1, "bytesLeft":J
    :goto_4
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_2e

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    if-ge v6, v7, :cond_2e

    .line 354
    sub-int/2addr v7, v6

    int-to-long v4, v7

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 355
    .local v5, "bytesToRead":I
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v3

    .line 356
    .local v3, "bytesAppended":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_26

    .line 357
    const-wide/16 v1, 0x0

    goto :goto_2d

    .line 359
    :cond_26
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    .line 360
    int-to-long v7, v3

    sub-long/2addr v1, v7

    .line 362
    .end local v3    # "bytesAppended":I
    .end local v5    # "bytesToRead":I
    :goto_2d
    goto :goto_4

    .line 353
    :cond_2e
    move-object/from16 v6, p1

    .line 367
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    .line 368
    .local v7, "bytesPerFrame":I
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    div-int/2addr v8, v7

    .line 369
    .local v8, "pendingFrames":I
    if-lez v8, :cond_64

    .line 370
    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    const-wide/32 v13, 0xf4240

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v15, v15, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v3, v15

    .line 372
    move-wide v15, v3

    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    add-long/2addr v9, v3

    .line 374
    .local v9, "timeUs":J
    mul-int v3, v8, v7

    .line 375
    .local v3, "size":I
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    sub-int/2addr v4, v3

    .line 376
    .local v4, "offset":I
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v14, 0x1

    const/16 v17, 0x0

    move-wide v12, v9

    move v15, v3

    move/from16 v16, v4

    invoke-interface/range {v11 .. v17}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 378
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    int-to-long v13, v8

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    .line 379
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    .line 382
    .end local v3    # "size":I
    .end local v4    # "offset":I
    .end local v9    # "timeUs":J
    :cond_64
    const-wide/16 v3, 0x0

    cmp-long v9, v1, v3

    if-gtz v9, :cond_6c

    const/4 v3, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v3, 0x0

    :goto_6d
    return v3
.end method
