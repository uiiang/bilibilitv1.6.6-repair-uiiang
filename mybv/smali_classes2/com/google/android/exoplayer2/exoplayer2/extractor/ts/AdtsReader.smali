.class public final Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CRC_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x5

.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final ID3_IDENTIFIER:[B

.field private static final ID3_SIZE_OFFSET:I = 0x6

.field private static final MATCH_STATE_FF:I = 0x200

.field private static final MATCH_STATE_I:I = 0x300

.field private static final MATCH_STATE_ID:I = 0x400

.field private static final MATCH_STATE_START:I = 0x100

.field private static final MATCH_STATE_VALUE_SHIFT:I = 0x8

.field private static final STATE_CHECKING_ADTS_HEADER:I = 0x1

.field private static final STATE_FINDING_SAMPLE:I = 0x0

.field private static final STATE_READING_ADTS_HEADER:I = 0x3

.field private static final STATE_READING_ID3_HEADER:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AdtsReader"

.field private static final VERSION_UNSET:I = -0x1


# instance fields
.field private final adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private bytesRead:I

.field private currentFrameVersion:I

.field private currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private currentSampleDuration:J

.field private final exposeId3:Z

.field private firstFrameSampleRateIndex:I

.field private firstFrameVersion:I

.field private formatId:Ljava/lang/String;

.field private foundFirstFrame:Z

.field private hasCrc:Z

.field private hasOutputFormat:Z

.field private final id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final language:Ljava/lang/String;

.field private matchState:I

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "exposeId3"    # Z

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 6
    .param p1, "exposeId3"    # Z
    .param p2, "language"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 122
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 123
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 125
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 126
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 127
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 128
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->exposeId3:Z

    .line 129
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 130
    return-void
.end method

.method private assertTracksCreated()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "currentOutput",
            "id3Output"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    return-void
.end method

.method private checkAdtsHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 5
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 341
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_7

    .line 343
    return-void

    .line 346
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    aget-byte v1, v1, v2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 350
    .local v0, "currentFrameSampleRateIndex":I
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    if-eq v0, v1, :cond_30

    .line 353
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->resetSync()V

    .line 354
    return-void

    .line 357
    :cond_30
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v1, :cond_3d

    .line 358
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 359
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentFrameVersion:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 360
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 362
    :cond_3d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 363
    return-void
.end method

.method private checkSyncPositionValid(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Z
    .registers 12
    .param p1, "pesBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "syncPositionCandidate"    # I

    .line 388
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->tryRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 390
    return v2

    .line 394
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 396
    .local v0, "currentFrameVersion":I
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameVersion:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    if-eq v0, v4, :cond_26

    .line 397
    return v2

    .line 401
    :cond_26
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v4, v5, :cond_4b

    .line 402
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->tryRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v4

    if-nez v4, :cond_35

    .line 404
    return v1

    .line 406
    :cond_35
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 407
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 408
    .local v4, "currentFrameSampleRateIndex":I
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v4, v6, :cond_46

    .line 409
    return v2

    .line 411
    :cond_46
    add-int/lit8 v6, p2, 0x2

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 415
    .end local v4    # "currentFrameSampleRateIndex":I
    :cond_4b
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v3}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->tryRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v3

    if-nez v3, :cond_56

    .line 417
    return v1

    .line 419
    :cond_56
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 420
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 421
    .local v3, "frameSize":I
    const/4 v4, 0x7

    if-ge v3, v4, :cond_69

    .line 422
    return v2

    .line 427
    :cond_69
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 428
    .local v4, "data":[B
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v6

    .line 429
    .local v6, "dataLimit":I
    add-int v7, p2, v3

    .line 430
    .local v7, "nextSyncPosition":I
    if-lt v7, v6, :cond_76

    .line 432
    return v1

    .line 434
    :cond_76
    aget-byte v8, v4, v7

    if-ne v8, v5, :cond_96

    .line 435
    add-int/lit8 v8, v7, 0x1

    if-ne v8, v6, :cond_7f

    .line 437
    return v1

    .line 439
    :cond_7f
    add-int/lit8 v8, v7, 0x1

    aget-byte v8, v4, v8

    invoke-direct {p0, v5, v8}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result v5

    if-eqz v5, :cond_94

    add-int/lit8 v5, v7, 0x1

    aget-byte v5, v4, v5

    and-int/lit8 v5, v5, 0x8

    shr-int/lit8 v5, v5, 0x3

    if-ne v5, v0, :cond_94

    goto :goto_95

    :cond_94
    const/4 v1, 0x0

    :goto_95
    return v1

    .line 442
    :cond_96
    aget-byte v5, v4, v7

    const/16 v8, 0x49

    if-eq v5, v8, :cond_9d

    .line 443
    return v2

    .line 445
    :cond_9d
    add-int/lit8 v5, v7, 0x1

    if-ne v5, v6, :cond_a2

    .line 447
    return v1

    .line 449
    :cond_a2
    add-int/lit8 v5, v7, 0x1

    aget-byte v5, v4, v5

    const/16 v8, 0x44

    if-eq v5, v8, :cond_ab

    .line 450
    return v2

    .line 452
    :cond_ab
    add-int/lit8 v5, v7, 0x2

    if-ne v5, v6, :cond_b0

    .line 454
    return v1

    .line 456
    :cond_b0
    add-int/lit8 v5, v7, 0x2

    aget-byte v5, v4, v5

    const/16 v8, 0x33

    if-ne v5, v8, :cond_b9

    goto :goto_ba

    :cond_b9
    const/4 v1, 0x0

    :goto_ba
    return v1
.end method

.method private continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .registers 6
    .param p1, "source"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 228
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 229
    .local v0, "bytesToRead":I
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 230
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 231
    if-ne v1, p3, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private findNextSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 9
    .param p1, "pesBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 288
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 289
    .local v0, "adtsData":[B
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 290
    .local v1, "position":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 291
    .local v2, "endOffset":I
    :goto_c
    if-ge v1, v2, :cond_73

    .line 292
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "position":I
    .local v3, "position":I
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 293
    .local v1, "data":I
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    const/16 v5, 0x200

    if-ne v4, v5, :cond_4c

    int-to-byte v4, v1

    const/4 v6, -0x1

    invoke-direct {p0, v6, v4}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 294
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v4, :cond_2e

    add-int/lit8 v4, v3, -0x2

    .line 295
    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->checkSyncPositionValid(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 296
    :cond_2e
    and-int/lit8 v4, v1, 0x8

    shr-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentFrameVersion:I

    .line 297
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_3a

    const/4 v4, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v4, 0x0

    :goto_3b
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    .line 298
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v4, :cond_45

    .line 299
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setCheckingAdtsHeaderState()V

    goto :goto_48

    .line 301
    :cond_45
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 303
    :goto_48
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 304
    return-void

    .line 308
    :cond_4c
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    or-int v6, v4, v1

    sparse-switch v6, :sswitch_data_78

    .line 323
    const/16 v5, 0x100

    if-eq v4, v5, :cond_71

    .line 326
    iput v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 327
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_72

    .line 319
    :sswitch_5d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    .line 320
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 321
    return-void

    .line 316
    :sswitch_64
    const/16 v4, 0x400

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 317
    goto :goto_71

    .line 310
    :sswitch_69
    iput v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 311
    goto :goto_71

    .line 313
    :sswitch_6c
    const/16 v4, 0x300

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 314
    nop

    .line 331
    .end local v1    # "data":I
    :cond_71
    :goto_71
    move v1, v3

    .end local v3    # "position":I
    .local v1, "position":I
    :goto_72
    goto :goto_c

    .line 332
    :cond_73
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 333
    return-void

    nop

    :sswitch_data_78
    .sparse-switch
        0x149 -> :sswitch_6c
        0x1ff -> :sswitch_69
        0x344 -> :sswitch_64
        0x433 -> :sswitch_5d
    .end sparse-switch
.end method

.method private isAdtsSyncBytes(BB)Z
    .registers 5
    .param p1, "firstByte"    # B
    .param p2, "secondByte"    # B

    .line 461
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    .line 462
    .local v0, "syncWord":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v1

    return v1
.end method

.method public static isAdtsSyncWord(I)Z
    .registers 3
    .param p0, "candidateSyncWord"    # I

    .line 134
    const v0, 0xfff6

    and-int/2addr v0, p0

    const v1, 0xfff0

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private parseAdtsHeader()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 488
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasOutputFormat:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-nez v0, :cond_91

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 490
    .local v0, "audioObjectType":I
    if-eq v0, v2, :cond_35

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected audio object type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but assuming AAC LC."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdtsReader"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const/4 v0, 0x2

    .line 504
    :cond_35
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 505
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 507
    .local v4, "channelConfig":I
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 508
    invoke-static {v0, v5, v4}, Lcom/google/android/exoplayer2/audio/AacUtil;->buildAudioSpecificConfig(III)[B

    move-result-object v5

    .line 510
    .local v5, "audioSpecificConfig":[B
    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v6

    .line 511
    .local v6, "aacConfig":Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    new-instance v7, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 513
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 514
    const-string v8, "audio/mp4a-latm"

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    iget-object v8, v6, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 515
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    iget v8, v6, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    .line 516
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    iget v8, v6, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    .line 517
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 518
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 519
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 520
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 523
    .local v7, "format":Lcom/google/android/exoplayer2/Format;
    iget v8, v7, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v8, v8

    const-wide/32 v10, 0x3d090000

    div-long/2addr v10, v8

    iput-wide v10, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 524
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v8, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 525
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasOutputFormat:Z

    .line 526
    .end local v0    # "audioObjectType":I
    .end local v4    # "channelConfig":I
    .end local v5    # "audioSpecificConfig":[B
    .end local v6    # "aacConfig":Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    .end local v7    # "format":Lcom/google/android/exoplayer2/Format;
    goto :goto_98

    .line 527
    :cond_91
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 530
    :goto_98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 532
    .local v0, "sampleSize":I
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v1, :cond_ae

    .line 533
    add-int/lit8 v0, v0, -0x2

    .line 536
    :cond_ae
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    const/4 v5, 0x0

    move-object v1, p0

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setReadingSampleState(Lcom/google/android/exoplayer2/extractor/TrackOutput;JII)V

    .line 537
    return-void
.end method

.method private parseId3Header()V
    .registers 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "id3Output"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 479
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 480
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    .line 479
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setReadingSampleState(Lcom/google/android/exoplayer2/extractor/TrackOutput;JII)V

    .line 481
    return-void
.end method

.method private readSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 11
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentOutput"
        }
    .end annotation

    .line 542
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 543
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 544
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 545
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    if-ne v1, v6, :cond_38

    .line 546
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v1

    if-eqz v5, :cond_35

    .line 547
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 548
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 550
    :cond_35
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 552
    :cond_38
    return-void
.end method

.method private resetSync()V
    .registers 2

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 215
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 216
    return-void
.end method

.method private setCheckingAdtsHeaderState()V
    .registers 2

    .line 277
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 279
    return-void
.end method

.method private setFindingSampleState()V
    .registers 2

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 237
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 238
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 239
    return-void
.end method

.method private setReadingAdtsHeaderState()V
    .registers 2

    .line 271
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 273
    return-void
.end method

.method private setReadingId3HeaderState()V
    .registers 3

    .line 246
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 247
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    .line 249
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 250
    return-void
.end method

.method private setReadingSampleState(Lcom/google/android/exoplayer2/extractor/TrackOutput;JII)V
    .registers 7
    .param p1, "outputToUse"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .param p2, "currentSampleDuration"    # J
    .param p4, "priorReadBytes"    # I
    .param p5, "sampleSize"    # I

    .line 262
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 263
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 264
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 265
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 266
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    .line 267
    return-void
.end method

.method private tryRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .registers 6
    .param p1, "source"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 467
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_8

    .line 468
    return v1

    .line 470
    :cond_8
    invoke-virtual {p1, p2, v1, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 471
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 4
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->assertTracksCreated()V

    .line 172
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_47

    .line 173
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    packed-switch v0, :pswitch_data_48

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 192
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->readSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 193
    goto :goto_3

    .line 186
    :pswitch_18
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x7

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x5

    .line 187
    .local v0, "targetLength":I
    :goto_1f
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_3

    .line 178
    .end local v0    # "targetLength":I
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_3

    .line 183
    :pswitch_3f
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->checkAdtsHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 184
    goto :goto_3

    .line 175
    :pswitch_43
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->findNextSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 176
    goto :goto_3

    .line 198
    :cond_47
    return-void

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3f
        :pswitch_2d
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 6
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 145
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 146
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 147
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 148
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 149
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_43

    .line 150
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 151
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 152
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 154
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 155
    const-string v2, "application/id3"

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 152
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_4a

    .line 158
    :cond_43
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 160
    :goto_4a
    return-void
.end method

.method public getSampleDurationUs()J
    .registers 3

    .line 210
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    return-wide v0
.end method

.method public packetFinished()V
    .registers 1

    .line 203
    return-void
.end method

.method public packetStarted(JI)V
    .registers 7
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 164
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_b

    .line 165
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 167
    :cond_b
    return-void
.end method

.method public seek()V
    .registers 3

    .line 139
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 140
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->resetSync()V

    .line 141
    return-void
.end method
