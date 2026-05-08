.class final Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;
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
    name = "ImaAdPcmOutputWriter"
.end annotation


# static fields
.field private static final INDEX_TABLE:[I

.field private static final STEP_TABLE:[I


# instance fields
.field private final decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private final framesPerBlock:I

.field private final inputData:[B

.field private outputFrameCount:J

.field private pendingInputBytes:I

.field private pendingOutputBytes:I

.field private startTimeUs:J

.field private final targetSampleSizeFrames:I

.field private final trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 388
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    .line 392
    const/16 v0, 0x59

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_38
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavFormat;)V
    .registers 12
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "trackOutput"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .param p3, "wavFormat"    # Lcom/google/android/exoplayer2/extractor/wav/WavFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 436
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 437
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    .line 438
    iget v0, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    div-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    .line 440
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->extraData:[B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 441
    .local v2, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 442
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    .line 444
    iget v4, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    .line 449
    .local v4, "numChannels":I
    iget v5, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    mul-int/lit8 v6, v4, 0x4

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x8

    iget v6, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int v6, v6, v4

    div-int/2addr v5, v6

    add-int/2addr v5, v1

    .line 453
    .local v5, "expectedFramesPerBlock":I
    if-ne v3, v5, :cond_8a

    .line 461
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v1

    .line 462
    .local v1, "maxBlocksToDecode":I
    iget v6, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    mul-int v6, v6, v1

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    .line 463
    new-instance v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 465
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result v7

    mul-int v7, v7, v1

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 469
    iget v6, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    iget v7, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    mul-int v6, v6, v7

    mul-int/lit8 v6, v6, 0x8

    div-int/2addr v6, v3

    .line 470
    .local v6, "constantBitrate":I
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 472
    const-string v7, "audio/raw"

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 473
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 474
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 475
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v3, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    .line 476
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v3, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    .line 477
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 478
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Lcom/google/android/exoplayer2/Format;

    .line 480
    return-void

    .line 454
    .end local v1    # "maxBlocksToDecode":I
    .end local v6    # "constantBitrate":I
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected frames per block: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method private decode([BILcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 7
    .param p1, "input"    # [B
    .param p2, "blockCount"    # I
    .param p3, "output"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 569
    const/4 v0, 0x0

    .local v0, "blockIndex":I
    :goto_1
    if-ge v0, p2, :cond_17

    .line 570
    const/4 v1, 0x0

    .local v1, "channelIndex":I
    :goto_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    if-ge v1, v2, :cond_14

    .line 571
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodeBlockForChannel([BII[B)V

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 569
    .end local v1    # "channelIndex":I
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    .end local v0    # "blockIndex":I
    :cond_17
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    mul-int v0, v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(I)I

    move-result v0

    .line 575
    .local v0, "decodedDataSize":I
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 576
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 577
    return-void
.end method

.method private decodeBlockForChannel([BII[B)V
    .registers 25
    .param p1, "input"    # [B
    .param p2, "blockIndex"    # I
    .param p3, "channelIndex"    # I
    .param p4, "output"    # [B

    .line 581
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    .line 582
    .local v1, "blockSize":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    .line 591
    .local v2, "numChannels":I
    mul-int v3, p2, v1

    .line 592
    .local v3, "blockStartIndex":I
    mul-int/lit8 v4, p3, 0x4

    add-int/2addr v4, v3

    .line 593
    .local v4, "headerStartIndex":I
    mul-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v4

    .line 594
    .local v5, "dataStartIndex":I
    div-int v6, v1, v2

    add-int/lit8 v6, v6, -0x4

    .line 598
    .local v6, "dataSizeBytes":I
    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    aget-byte v8, p1, v4

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-short v7, v7

    .line 600
    .local v7, "predictedSample":I
    add-int/lit8 v8, v4, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x58

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 601
    .local v8, "stepIndex":I
    sget-object v9, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    aget v9, v9, v8

    .line 604
    .local v9, "step":I
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    mul-int v10, v10, p2

    mul-int v10, v10, v2

    add-int v10, v10, p3

    mul-int/lit8 v10, v10, 0x2

    .line 605
    .local v10, "outputIndex":I
    and-int/lit16 v11, v7, 0xff

    int-to-byte v11, v11

    aput-byte v11, p4, v10

    .line 606
    add-int/lit8 v11, v10, 0x1

    shr-int/lit8 v12, v7, 0x8

    int-to-byte v12, v12

    aput-byte v12, p4, v11

    .line 609
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4b
    mul-int/lit8 v12, v6, 0x2

    if-ge v11, v12, :cond_af

    .line 610
    div-int/lit8 v12, v11, 0x8

    .line 611
    .local v12, "dataSegmentIndex":I
    div-int/lit8 v13, v11, 0x2

    rem-int/lit8 v13, v13, 0x4

    .line 612
    .local v13, "dataSegmentOffset":I
    mul-int v14, v12, v2

    mul-int/lit8 v14, v14, 0x4

    add-int/2addr v14, v5

    add-int/2addr v14, v13

    .line 614
    .local v14, "dataIndex":I
    aget-byte v15, p1, v14

    and-int/lit16 v15, v15, 0xff

    .line 615
    .local v15, "originalSample":I
    rem-int/lit8 v16, v11, 0x2

    if-nez v16, :cond_66

    .line 616
    and-int/lit8 v15, v15, 0xf

    goto :goto_68

    .line 618
    :cond_66
    shr-int/lit8 v15, v15, 0x4

    .line 621
    :goto_68
    and-int/lit8 v16, v15, 0x7

    .line 622
    .local v16, "delta":I
    mul-int/lit8 v17, v16, 0x2

    add-int/lit8 v17, v17, 0x1

    mul-int v17, v17, v9

    shr-int/lit8 v0, v17, 0x3

    .line 624
    .local v0, "difference":I
    and-int/lit8 v17, v15, 0x8

    if-eqz v17, :cond_77

    .line 625
    neg-int v0, v0

    .line 628
    :cond_77
    add-int/2addr v7, v0

    .line 629
    move/from16 v17, v0

    .end local v0    # "difference":I
    .local v17, "difference":I
    const/16 v0, -0x8000

    move/from16 v18, v1

    .end local v1    # "blockSize":I
    .local v18, "blockSize":I
    const/16 v1, 0x7fff

    invoke-static {v7, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v7

    .line 632
    mul-int/lit8 v0, v2, 0x2

    add-int/2addr v10, v0

    .line 633
    and-int/lit16 v0, v7, 0xff

    int-to-byte v0, v0

    aput-byte v0, p4, v10

    .line 634
    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v1, v7, 0x8

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 636
    sget-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    aget v0, v0, v15

    add-int/2addr v8, v0

    .line 637
    sget-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move/from16 v19, v2

    .end local v2    # "numChannels":I
    .local v19, "numChannels":I
    const/4 v2, 0x0

    invoke-static {v8, v2, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v8

    .line 638
    aget v9, v0, v8

    .line 609
    .end local v12    # "dataSegmentIndex":I
    .end local v13    # "dataSegmentOffset":I
    .end local v14    # "dataIndex":I
    .end local v15    # "originalSample":I
    .end local v16    # "delta":I
    .end local v17    # "difference":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    goto :goto_4b

    .line 640
    .end local v11    # "i":I
    .end local v18    # "blockSize":I
    .end local v19    # "numChannels":I
    .restart local v1    # "blockSize":I
    .restart local v2    # "numChannels":I
    :cond_af
    return-void
.end method

.method private numOutputBytesToFrames(I)I
    .registers 3
    .param p1, "bytes"    # I

    .line 643
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    mul-int/lit8 v0, v0, 0x2

    div-int v0, p1, v0

    return v0
.end method

.method private numOutputFramesToBytes(I)I
    .registers 3
    .param p1, "frames"    # I

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result v0

    return v0
.end method

.method private static numOutputFramesToBytes(II)I
    .registers 3
    .param p0, "frames"    # I
    .param p1, "numChannels"    # I

    .line 651
    mul-int/lit8 v0, p0, 0x2

    mul-int v0, v0, p1

    return v0
.end method

.method private writeSampleMetadata(I)V
    .registers 13
    .param p1, "sampleFrames"    # I

    .line 549
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    const-wide/32 v4, 0xf4240

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v6, v6

    .line 551
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 553
    .local v0, "timeUs":J
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(I)I

    move-result v2

    .line 554
    .local v2, "size":I
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int/2addr v3, v2

    .line 555
    .local v3, "offset":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-wide v5, v0

    move v8, v2

    move v9, v3

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 557
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    .line 558
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 559
    return-void
.end method


# virtual methods
.method public init(IJ)V
    .registers 13
    .param p1, "dataStartPosition"    # I
    .param p2, "dataEndPosition"    # J

    .line 492
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    int-to-long v4, p1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/wav/WavFormat;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 495
    return-void
.end method

.method public reset(J)V
    .registers 5
    .param p1, "timeUs"    # J

    .line 484
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 485
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    .line 486
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 487
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    .line 488
    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .registers 12
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "bytesLeft"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 502
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 504
    .local v0, "targetFramesRemaining":I
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v1

    .line 505
    .local v1, "blocksToDecode":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    mul-int v2, v2, v1

    .line 508
    .local v2, "targetReadBytes":I
    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-nez v5, :cond_1d

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    .line 509
    .local v3, "endOfSampleData":Z
    :goto_1e
    if-nez v3, :cond_3f

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    if-ge v4, v2, :cond_3f

    .line 510
    sub-int v4, v2, v4

    int-to-long v4, v4

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 511
    .local v5, "bytesToRead":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    invoke-interface {p1, v4, v6, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v4

    .line 512
    .local v4, "bytesAppended":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_39

    .line 513
    const/4 v3, 0x1

    goto :goto_3e

    .line 515
    :cond_39
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 517
    .end local v4    # "bytesAppended":I
    .end local v5    # "bytesToRead":I
    :goto_3e
    goto :goto_1e

    .line 519
    :cond_3f
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    div-int/2addr v4, v5

    .line 520
    .local v4, "pendingBlockCount":I
    if-lez v4, :cond_77

    .line 522
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, v5, v4, v6}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decode([BILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 523
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    mul-int v6, v6, v4

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 526
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    .line 527
    .local v5, "decodedDataSize":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v6, v7, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 528
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 531
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result v6

    .line 532
    .local v6, "pendingOutputFrames":I
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    if-lt v6, v7, :cond_77

    .line 533
    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    .line 538
    .end local v5    # "decodedDataSize":I
    .end local v6    # "pendingOutputFrames":I
    :cond_77
    if-eqz v3, :cond_84

    .line 539
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result v5

    .line 540
    .local v5, "pendingOutputFrames":I
    if-lez v5, :cond_84

    .line 541
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    .line 545
    .end local v5    # "pendingOutputFrames":I
    :cond_84
    return v3
.end method
