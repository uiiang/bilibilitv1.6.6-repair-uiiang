.class public final Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor$Flags;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS:I = 0x2

.field private static final MAX_PACKET_SIZE:I = 0x800

.field private static final MAX_SNIFF_BYTES:I = 0x2000

.field private static final NUM_FRAMES_FOR_AVERAGE_FRAME_SIZE:I = 0x3e8


# instance fields
.field private averageFrameSize:I

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private firstFramePosition:J

.field private firstSampleTimestampUs:J

.field private final flags:I

.field private hasCalculatedAverageFrameSize:Z

.field private hasOutputSeekMap:Z

.field private final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final scratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>(I)V

    .line 126
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    .line 135
    or-int/lit8 p1, p1, 0x1

    .line 137
    :cond_9
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->flags:I

    .line 138
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    .line 139
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    .line 141
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->firstFramePosition:J

    .line 143
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 144
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 145
    return-void
.end method

.method private calculateAverageFrameSize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 11
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    if-eqz v0, :cond_5

    .line 301
    return-void

    .line 303
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    .line 304
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 305
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_18

    .line 307
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->peekId3Header(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    .line 310
    :cond_18
    const/4 v1, 0x0

    .line 311
    .local v1, "numValidFrames":I
    const-wide/16 v2, 0x0

    .line 313
    .local v2, "totalValidFramesSize":J
    :goto_1b
    const/4 v4, 0x1

    :try_start_1c
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 314
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    .line 313
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-interface {p1, v5, v6, v7, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 315
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 316
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 317
    .local v5, "syncBytes":I
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 320
    const/4 v1, 0x0

    .line 321
    goto :goto_7a

    .line 324
    :cond_3d
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 325
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    .line 324
    const/4 v8, 0x4

    invoke-interface {p1, v7, v6, v8, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 326
    goto :goto_7a

    .line 328
    :cond_4b
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 329
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 331
    .local v6, "currentFrameSize":I
    const/4 v7, 0x6

    if-le v6, v7, :cond_70

    .line 336
    int-to-long v7, v6

    add-long/2addr v2, v7

    .line 337
    add-int/lit8 v1, v1, 0x1

    const/16 v7, 0x3e8

    if-ne v1, v7, :cond_66

    .line 338
    goto :goto_7a

    .line 340
    :cond_66
    add-int/lit8 v7, v6, -0x6

    invoke-interface {p1, v7, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(IZ)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 341
    goto :goto_7a

    .line 344
    .end local v5    # "syncBytes":I
    .end local v6    # "currentFrameSize":I
    :cond_6f
    goto :goto_1b

    .line 332
    .restart local v5    # "syncBytes":I
    .restart local v6    # "currentFrameSize":I
    :cond_70
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    .line 333
    const-string v7, "Malformed ADTS stream"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v7

    .end local v1    # "numValidFrames":I
    .end local v2    # "totalValidFramesSize":J
    .end local p1    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    throw v7
    :try_end_7a
    .catch Ljava/io/EOFException; {:try_start_1c .. :try_end_7a} :catch_7b

    .line 350
    .end local v5    # "syncBytes":I
    .end local v6    # "currentFrameSize":I
    .restart local v1    # "numValidFrames":I
    .restart local v2    # "totalValidFramesSize":J
    .restart local p1    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    :cond_7a
    :goto_7a
    goto :goto_7c

    .line 345
    :catch_7b
    move-exception v5

    .line 351
    :goto_7c
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 352
    if-lez v1, :cond_88

    .line 353
    int-to-long v5, v1

    div-long v5, v2, v5

    long-to-int v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    goto :goto_8a

    .line 355
    :cond_88
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    .line 357
    :goto_8a
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    .line 358
    return-void
.end method

.method private static getBitrateFromFrameSize(IJ)I
    .registers 7
    .param p0, "frameSize"    # I
    .param p1, "durationUsPerFrame"    # J

    .line 374
    int-to-long v0, p0

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    div-long/2addr v0, p1

    long-to-int v1, v0

    return v1
.end method

.method private getConstantBitrateSeekMap(JZ)Lcom/google/android/exoplayer2/extractor/SeekMap;
    .registers 15
    .param p1, "inputLength"    # J
    .param p3, "allowSeeksIfLengthUnknown"    # Z

    .line 361
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->getBitrateFromFrameSize(IJ)I

    move-result v0

    .line 362
    .local v0, "bitrate":I
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->firstFramePosition:J

    iget v9, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    move-object v3, v1

    move-wide v4, p1

    move v8, v0

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    return-object v1
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(JZ)V
    .registers 12
    .param p1, "inputLength"    # J
    .param p3, "readEndOfStream"    # Z
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 275
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    if-eqz v0, :cond_5

    .line 276
    return-void

    .line 279
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 281
    .local v0, "useConstantBitrateSeeking":Z
    :goto_13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_27

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    .line 282
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_27

    if-nez p3, :cond_27

    .line 286
    return-void

    .line 289
    :cond_27
    if-eqz v0, :cond_44

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-eqz v7, :cond_44

    .line 290
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3c

    const/4 v2, 0x1

    .line 291
    :cond_3c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->getConstantBitrateSeekMap(JZ)Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v2

    .line 290
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    goto :goto_4e

    .line 294
    :cond_44
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v5, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-direct {v5, v3, v4}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 296
    :goto_4e
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    .line 297
    return-void
.end method

.method private peekId3Header(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, "firstFramePosition":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 256
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 257
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    const v2, 0x494433

    if-eq v1, v2, :cond_30

    .line 258
    nop

    .line 265
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 266
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 267
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->firstFramePosition:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2f

    .line 268
    int-to-long v1, v0

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->firstFramePosition:J

    .line 270
    :cond_2f
    return v0

    .line 260
    :cond_30
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 261
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    .line 262
    .local v1, "length":I
    add-int/lit8 v2, v1, 0xa

    add-int/2addr v0, v2

    .line 263
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 264
    .end local v1    # "length":I
    goto :goto_1
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 6
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 200
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 202
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 203
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 14
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 222
    .local v0, "inputLength":J
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->flags:I

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1d

    and-int/2addr v2, v4

    if-eqz v2, :cond_1b

    const-wide/16 v2, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    .line 226
    .local v2, "canUseConstantBitrateSeeking":Z
    :goto_1e
    if-eqz v2, :cond_23

    .line 227
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->calculateAverageFrameSize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 230
    :cond_23
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/16 v6, 0x800

    invoke-interface {p1, v3, v5, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v3

    .line 231
    .local v3, "bytesRead":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_34

    const/4 v7, 0x1

    goto :goto_35

    :cond_34
    const/4 v7, 0x0

    .line 232
    .local v7, "readEndOfStream":Z
    :goto_35
    invoke-direct {p0, v0, v1, v7}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->maybeOutputSeekMap(JZ)V

    .line 233
    if-eqz v7, :cond_3b

    .line 234
    return v6

    .line 238
    :cond_3b
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 239
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 241
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->startedPacket:Z

    if-nez v6, :cond_53

    .line 243
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    const/4 v10, 0x4

    invoke-virtual {v6, v8, v9, v10}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->packetStarted(JI)V

    .line 244
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 248
    :cond_53
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 249
    return v5
.end method

.method public release()V
    .registers 1

    .line 215
    return-void
.end method

.method public seek(JJ)V
    .registers 6
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->seek()V

    .line 209
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    .line 210
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 10
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->peekId3Header(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    .line 155
    .local v0, "startPosition":I
    move v1, v0

    .line 156
    .local v1, "headerPosition":I
    const/4 v2, 0x0

    .line 157
    .local v2, "totalValidFramesSize":I
    const/4 v3, 0x0

    .line 159
    .local v3, "validFramesCount":I
    :goto_7
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {p1, v4, v6, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 160
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 161
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 162
    .local v4, "syncBytes":I
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 165
    const/4 v3, 0x0

    .line 166
    const/4 v2, 0x0

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 168
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 169
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_65

    .line 171
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x4

    if-lt v3, v5, :cond_39

    const/16 v7, 0xbc

    if-le v2, v7, :cond_39

    .line 172
    const/4 v5, 0x1

    return v5

    .line 176
    :cond_39
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    invoke-interface {p1, v7, v6, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 177
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xe

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 178
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 179
    .local v5, "frameSize":I
    const/4 v7, 0x6

    if-gt v5, v7, :cond_5f

    .line 182
    const/4 v3, 0x0

    .line 183
    const/4 v2, 0x0

    .line 184
    add-int/lit8 v1, v1, 0x1

    .line 185
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 186
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_65

    .line 188
    :cond_5f
    add-int/lit8 v7, v5, -0x6

    invoke-interface {p1, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 189
    add-int/2addr v2, v5

    .line 192
    .end local v5    # "frameSize":I
    :goto_65
    sub-int v5, v1, v0

    const/16 v7, 0x2000

    if-lt v5, v7, :cond_6c

    .line 193
    return v6

    .line 195
    .end local v4    # "syncBytes":I
    :cond_6c
    goto :goto_7
.end method
