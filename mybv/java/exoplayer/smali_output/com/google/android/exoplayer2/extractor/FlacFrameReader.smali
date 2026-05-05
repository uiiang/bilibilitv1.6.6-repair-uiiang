.class public final Lcom/google/android/exoplayer2/extractor/FlacFrameReader;
.super Ljava/lang/Object;
.source "FlacFrameReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndReadBlockSizeSamples(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;I)Z
    .registers 5
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "flacStreamMetadata"    # Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .param p2, "blockSizeKey"    # I

    .line 284
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->readFrameBlockSizeSamplesFromKey(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v0

    .line 285
    .local v0, "blockSizeSamples":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    iget v1, p1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    if-gt v0, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method private static checkAndReadCrc(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Z
    .registers 7
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameStartPosition"    # I

    .line 333
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 334
    .local v0, "crc":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 335
    .local v1, "frameEndPosition":I
    nop

    .line 336
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->crc8([BIII)I

    move-result v2

    .line 337
    .local v2, "expectedCrc":I
    if-ne v0, v2, :cond_17

    const/4 v4, 0x1

    :cond_17
    return v4
.end method

.method private static checkAndReadFirstSampleNumber(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;ZLcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .registers 8
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "flacStreamMetadata"    # Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .param p2, "isBlockSizeVariable"    # Z
    .param p3, "sampleNumberHolder"    # Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUtf8EncodedLong()J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_13

    .line 262
    .local v0, "utf8Value":J
    nop

    .line 264
    nop

    .line 265
    if-eqz p2, :cond_a

    move-wide v2, v0

    goto :goto_f

    :cond_a
    iget v2, p1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    :goto_f
    iput-wide v2, p3, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    .line 266
    const/4 v2, 0x1

    return v2

    .line 260
    .end local v0    # "utf8Value":J
    :catch_13
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method public static checkAndReadFrameHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;ILcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .registers 22
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "flacStreamMetadata"    # Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .param p2, "frameStartMarker"    # I
    .param p3, "sampleNumberHolder"    # Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    .line 61
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 63
    .local v2, "frameStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 64
    .local v3, "frameHeaderBytes":J
    const/16 v5, 0x10

    ushr-long v6, v3, v5

    move/from16 v8, p2

    int-to-long v9, v8

    const/4 v11, 0x0

    cmp-long v12, v6, v9

    if-eqz v12, :cond_19

    .line 65
    return v11

    .line 68
    :cond_19
    ushr-long v5, v3, v5

    const-wide/16 v9, 0x1

    and-long/2addr v5, v9

    const/4 v7, 0x1

    cmp-long v12, v5, v9

    if-nez v12, :cond_25

    const/4 v5, 0x1

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    .line 69
    .local v5, "isBlockSizeVariable":Z
    :goto_26
    const/16 v6, 0xc

    shr-long v12, v3, v6

    const-wide/16 v14, 0xf

    and-long/2addr v12, v14

    long-to-int v6, v12

    .line 70
    .local v6, "blockSizeKey":I
    const/16 v12, 0x8

    shr-long v12, v3, v12

    and-long/2addr v12, v14

    long-to-int v13, v12

    .line 71
    .local v13, "sampleRateKey":I
    const/4 v12, 0x4

    shr-long v16, v3, v12

    and-long v14, v16, v14

    long-to-int v12, v14

    .line 72
    .local v12, "channelAssignmentKey":I
    shr-long v14, v3, v7

    const-wide/16 v16, 0x7

    and-long v14, v14, v16

    long-to-int v15, v14

    .line 73
    .local v15, "bitsPerSampleKey":I
    and-long v16, v3, v9

    cmp-long v14, v16, v9

    if-nez v14, :cond_49

    const/4 v9, 0x1

    goto :goto_4a

    :cond_49
    const/4 v9, 0x0

    .line 74
    .local v9, "reservedBit":Z
    :goto_4a
    invoke-static {v12, v1}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkChannelAssignment(ILcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)Z

    move-result v10

    if-eqz v10, :cond_77

    .line 75
    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkBitsPerSample(ILcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)Z

    move-result v10

    if-eqz v10, :cond_74

    if-nez v9, :cond_74

    .line 77
    move-object/from16 v10, p3

    invoke-static {v0, v1, v5, v10}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadFirstSampleNumber(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;ZLcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v14

    if-eqz v14, :cond_79

    .line 79
    invoke-static {v0, v1, v6}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadBlockSizeSamples(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;I)Z

    move-result v14

    if-eqz v14, :cond_79

    .line 80
    invoke-static {v0, v1, v13}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadSampleRate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;I)Z

    move-result v14

    if-eqz v14, :cond_79

    .line 81
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadCrc(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Z

    move-result v14

    if-eqz v14, :cond_79

    const/4 v11, 0x1

    goto :goto_7a

    .line 75
    :cond_74
    move-object/from16 v10, p3

    goto :goto_79

    .line 74
    :cond_77
    move-object/from16 v10, p3

    .line 81
    :cond_79
    :goto_79
    nop

    .line 74
    :goto_7a
    return v11
.end method

.method private static checkAndReadSampleRate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;I)Z
    .registers 8
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "flacStreamMetadata"    # Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .param p2, "sampleRateKey"    # I

    .line 302
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    .line 303
    .local v0, "expectedSampleRate":I
    const/4 v1, 0x1

    if-nez p2, :cond_6

    .line 304
    return v1

    .line 305
    :cond_6
    const/16 v2, 0xb

    const/4 v3, 0x0

    if-gt p2, v2, :cond_12

    .line 306
    iget v2, p1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    if-ne p2, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1

    .line 307
    :cond_12
    const/16 v2, 0xc

    if-ne p2, v2, :cond_21

    .line 308
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    if-ne v2, v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1

    .line 309
    :cond_21
    const/16 v2, 0xe

    if-gt p2, v2, :cond_32

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 311
    .local v4, "sampleRate":I
    if-ne p2, v2, :cond_2d

    .line 312
    mul-int/lit8 v4, v4, 0xa

    .line 314
    :cond_2d
    if-ne v4, v0, :cond_30

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    return v1

    .line 316
    .end local v4    # "sampleRate":I
    :cond_32
    return v3
.end method

.method private static checkBitsPerSample(ILcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)Z
    .registers 4
    .param p0, "bitsPerSampleKey"    # I
    .param p1, "flacStreamMetadata"    # Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 231
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 232
    return v0

    .line 234
    :cond_4
    iget v1, p1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static checkChannelAssignment(ILcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)Z
    .registers 6
    .param p0, "channelAssignmentKey"    # I
    .param p1, "flacStreamMetadata"    # Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 213
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_c

    .line 214
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    sub-int/2addr v0, v2

    if-ne p0, v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1

    .line 215
    :cond_c
    const/16 v0, 0xa

    if-gt p0, v0, :cond_17

    .line 216
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    .line 218
    :cond_17
    return v1
.end method

.method public static checkFrameHeaderFromPeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;ILcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .registers 13
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "flacStreamMetadata"    # Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .param p2, "frameStartMarker"    # I
    .param p3, "sampleNumberHolder"    # Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    .line 105
    .local v0, "originalPeekPosition":J
    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 106
    .local v3, "frameStartBytes":[B
    const/4 v4, 0x0

    invoke-interface {p0, v3, v4, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 107
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 108
    .local v5, "frameStart":I
    if-eq v5, p2, :cond_27

    .line 109
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 110
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v0, v6

    long-to-int v2, v6

    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 111
    return v4

    .line 114
    :cond_27
    new-instance v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 115
    .local v6, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    nop

    .line 116
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    .line 115
    invoke-static {v3, v4, v7, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    nop

    .line 120
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 119
    const/16 v7, 0xe

    invoke-static {p0, v4, v2, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->peekToLength(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)I

    move-result v2

    .line 121
    .local v2, "totalBytesPeeked":I
    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 123
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 124
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long v7, v0, v7

    long-to-int v4, v7

    invoke-interface {p0, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 126
    invoke-static {v6, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadFrameHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;ILcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v4

    return v4
.end method

.method public static getFirstSampleNumber(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)J
    .registers 10
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "flacStreamMetadata"    # Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 147
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 148
    new-array v1, v0, [B

    .line 149
    .local v1, "blockingStrategyByte":[B
    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 150
    aget-byte v3, v1, v2

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 151
    .local v0, "isBlockSizeVariable":Z
    :goto_14
    const/4 v3, 0x2

    invoke-interface {p0, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 153
    if-eqz v0, :cond_1c

    const/4 v3, 0x7

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x6

    .line 154
    .local v3, "maxUtf8SampleNumberSize":I
    :goto_1d
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 155
    .local v4, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    nop

    .line 156
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-static {p0, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->peekToLength(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)I

    move-result v2

    .line 157
    .local v2, "totalBytesPeeked":I
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 158
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 160
    new-instance v5, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    .line 161
    .local v5, "sampleNumberHolder":Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;
    invoke-static {v4, p1, v0, v5}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadFirstSampleNumber(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;ZLcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 166
    iget-wide v6, v5, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide v6

    .line 163
    :cond_3f
    const/4 v6, 0x0

    invoke-static {v6, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v6

    throw v6
.end method

.method public static readFrameBlockSizeSamplesFromKey(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I
    .registers 4
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "blockSizeKey"    # I

    .line 178
    packed-switch p1, :pswitch_data_24

    .line 200
    const/4 v0, -0x1

    return v0

    .line 198
    :pswitch_5
    add-int/lit8 v0, p1, -0x8

    const/16 v1, 0x100

    shl-int v0, v1, v0

    return v0

    .line 189
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 187
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 185
    :pswitch_1a
    add-int/lit8 v0, p1, -0x2

    const/16 v1, 0x240

    shl-int v0, v1, v0

    return v0

    .line 180
    :pswitch_21
    const/16 v0, 0xc0

    return v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_13
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
