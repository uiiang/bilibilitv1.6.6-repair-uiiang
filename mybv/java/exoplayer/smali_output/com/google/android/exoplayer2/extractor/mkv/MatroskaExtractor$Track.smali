.class public final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Track"
.end annotation


# static fields
.field private static final DEFAULT_MAX_CLL:I = 0x3e8

.field private static final DEFAULT_MAX_FALL:I = 0xc8

.field private static final DISPLAY_UNIT_PIXELS:I = 0x0

.field private static final MAX_CHROMATICITY:I = 0xc350


# instance fields
.field public audioBitDepth:I

.field private blockAddIdType:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public dolbyVisionConfigBytes:[B

.field public drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public flagDefault:Z

.field public flagForced:Z

.field public hasColorInfo:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public maxBlockAdditionId:I

.field public maxContentLuminance:I

.field public maxFrameAverageLuminance:I

.field public maxMasteringLuminance:F

.field public minMasteringLuminance:F

.field public nalUnitLengthFieldLength:I

.field public name:Ljava/lang/String;

.field public number:I

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public primaryBChromaticityX:F

.field public primaryBChromaticityY:F

.field public primaryGChromaticityX:F

.field public primaryGChromaticityY:F

.field public primaryRChromaticityX:F

.field public primaryRChromaticityY:F

.field public projectionData:[B

.field public projectionPosePitch:F

.field public projectionPoseRoll:F

.field public projectionPoseYaw:F

.field public projectionType:I

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

.field public type:I

.field public whitePointChromaticityX:F

.field public whitePointChromaticityY:F

.field public width:I


# direct methods
.method protected constructor <init>()V
    .registers 5

    .line 1979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2004
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 2005
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 2006
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 2007
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 2008
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 2009
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 2010
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 2011
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 2012
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    .line 2013
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 2014
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 2015
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 2016
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 2017
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 2018
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 2019
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    .line 2020
    const/16 v1, 0xc8

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    .line 2021
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 2022
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 2023
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 2024
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 2025
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 2026
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 2027
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 2028
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 2029
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 2030
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    .line 2034
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2035
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 2036
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2037
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 2038
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 2043
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 2044
    const-string v0, "eng"

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 1979
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->assertOutputInitialized()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 1979
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    .param p1, "x1"    # I

    .line 1979
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1979
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    .param p1, "x1"    # Z

    .line 1979
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->samplesHaveSupplementalData(Z)Z

    move-result v0

    return v0
.end method

.method private assertOutputInitialized()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 2549
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2550
    return-void
.end method

.method private getCodecPrivate(Ljava/lang/String;)[B
    .registers 4
    .param p1, "codecId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "codecPrivate"
        }
    .end annotation

    .line 2554
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-eqz v0, :cond_5

    .line 2558
    return-object v0

    .line 2555
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing CodecPrivate for codec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method private getHdrStaticInfo()[B
    .registers 6

    .line 2385
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_40

    goto/16 :goto_c4

    .line 2398
    :cond_40
    const/16 v0, 0x19

    new-array v0, v0, [B

    .line 2399
    .local v0, "hdrStaticInfoData":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2400
    .local v1, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2401
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v3, 0x47435000    # 50000.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2402
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2403
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2404
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2405
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2406
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2407
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2408
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2409
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2410
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2411
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2412
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2413
    return-object v0

    .line 2395
    .end local v0    # "hdrStaticInfoData":[B
    .end local v1    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_c4
    :goto_c4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseFourCcPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 11
    .param p0, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 2427
    const/16 v0, 0x10

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 2428
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    .line 2429
    .local v2, "compression":J
    const-wide/32 v4, 0x58564944

    cmp-long v0, v2, v4

    if-nez v0, :cond_19

    .line 2430
    new-instance v0, Landroid/util/Pair;

    const-string v4, "video/divx"

    invoke-direct {v0, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2431
    :cond_19
    const-wide/32 v4, 0x33363248

    cmp-long v0, v2, v4

    if-nez v0, :cond_28

    .line 2432
    new-instance v0, Landroid/util/Pair;

    const-string v4, "video/3gpp"

    invoke-direct {v0, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2433
    :cond_28
    const-wide/32 v4, 0x31435657

    cmp-long v0, v2, v4

    if-nez v0, :cond_73

    .line 2436
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 2437
    .local v0, "startOffset":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 2438
    .local v4, "bufferData":[B
    move v5, v0

    .local v5, "offset":I
    :goto_3a
    array-length v6, v4

    add-int/lit8 v6, v6, -0x4

    if-ge v5, v6, :cond_6c

    .line 2439
    aget-byte v6, v4, v5

    if-nez v6, :cond_69

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    if-nez v6, :cond_69

    add-int/lit8 v6, v5, 0x2

    aget-byte v6, v4, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_69

    add-int/lit8 v6, v5, 0x3

    aget-byte v6, v4, v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_69

    .line 2444
    array-length v6, v4

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 2445
    .local v6, "initializationData":[B
    new-instance v7, Landroid/util/Pair;

    const-string v8, "video/wvc1"

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 2438
    .end local v6    # "initializationData":[B
    :cond_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 2448
    .end local v5    # "offset":I
    :cond_6c
    const-string v5, "Failed to find FourCC VC1 initialization data"

    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v5

    .end local p0    # "buffer":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    throw v5
    :try_end_73
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_73} :catch_83

    .line 2454
    .end local v0    # "startOffset":I
    .end local v2    # "compression":J
    .end local v4    # "bufferData":[B
    .restart local p0    # "buffer":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_73
    nop

    .line 2456
    const-string v0, "MatroskaExtractor"

    const-string v2, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    new-instance v0, Landroid/util/Pair;

    const-string v2, "video/x-unknown"

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2451
    :catch_83
    move-exception v0

    .line 2452
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "Error parsing FourCC private data"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    goto :goto_8c

    :goto_8b
    throw v1

    :goto_8c
    goto :goto_8b
.end method

.method private static parseMsAcmCodecPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 9
    .param p0, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 2524
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    .line 2525
    .local v0, "formatTag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2526
    return v1

    .line 2527
    :cond_8
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_36

    .line 2528
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 2529
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$700()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_34

    .line 2530
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$700()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_2f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2f} :catch_37

    cmp-long v2, v4, v6

    if-nez v2, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    .line 2529
    :goto_35
    return v1

    .line 2532
    :cond_36
    return v3

    .line 2534
    .end local v0    # "formatTag":I
    :catch_37
    move-exception v0

    .line 2535
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Error parsing MS/ACM codec private"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .registers 11
    .param p0, "codecPrivate"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 2469
    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    aget-byte v3, p0, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_68

    .line 2473
    const/4 v3, 0x1

    .line 2474
    .local v3, "offset":I
    const/4 v5, 0x0

    .line 2475
    .local v5, "vorbisInfoLength":I
    :goto_b
    aget-byte v6, p0, v3

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_17

    .line 2476
    add-int/lit16 v5, v5, 0xff

    .line 2477
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2479
    :cond_17
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .local v6, "offset":I
    aget-byte v3, p0, v3

    and-int/2addr v3, v7

    add-int/2addr v5, v3

    .line 2481
    const/4 v3, 0x0

    .line 2482
    .local v3, "vorbisSkipLength":I
    :goto_1e
    aget-byte v8, p0, v6

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_28

    .line 2483
    add-int/lit16 v3, v3, 0xff

    .line 2484
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 2486
    :cond_28
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "offset":I
    .local v8, "offset":I
    aget-byte v6, p0, v6

    and-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 2488
    aget-byte v6, p0, v8

    const/4 v7, 0x1

    if-ne v6, v7, :cond_63

    .line 2492
    new-array v6, v5, [B

    .line 2493
    .local v6, "vorbisInfo":[B
    invoke-static {p0, v8, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2494
    add-int/2addr v8, v5

    .line 2495
    aget-byte v7, p0, v8

    const/4 v9, 0x3

    if-ne v7, v9, :cond_5e

    .line 2499
    add-int/2addr v8, v3

    .line 2500
    aget-byte v7, p0, v8

    const/4 v9, 0x5

    if-ne v7, v9, :cond_59

    .line 2504
    array-length v7, p0

    sub-int/2addr v7, v8

    new-array v7, v7, [B

    .line 2505
    .local v7, "vorbisBooks":[B
    array-length v9, p0

    sub-int/2addr v9, v8

    invoke-static {p0, v8, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2507
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2508
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2509
    return-object v1

    .line 2501
    .end local v1    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v7    # "vorbisBooks":[B
    :cond_59
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    .end local p0    # "codecPrivate":[B
    throw v1

    .line 2496
    .restart local p0    # "codecPrivate":[B
    :cond_5e
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    .end local p0    # "codecPrivate":[B
    throw v1

    .line 2489
    .end local v6    # "vorbisInfo":[B
    .restart local p0    # "codecPrivate":[B
    :cond_63
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    .end local p0    # "codecPrivate":[B
    throw v1

    .line 2470
    .end local v3    # "vorbisSkipLength":I
    .end local v5    # "vorbisInfoLength":I
    .end local v8    # "offset":I
    .restart local p0    # "codecPrivate":[B
    :cond_68
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    .end local p0    # "codecPrivate":[B
    throw v1
    :try_end_6d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_6d} :catch_6d

    .line 2510
    .restart local p0    # "codecPrivate":[B
    :catch_6d
    move-exception v1

    .line 2511
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    goto :goto_74

    :goto_73
    throw v0

    :goto_74
    goto :goto_73
.end method

.method private samplesHaveSupplementalData(Z)Z
    .registers 4
    .param p1, "isBlockGroup"    # Z

    .line 2372
    const-string v0, "A_OPUS"

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2376
    return p1

    .line 2378
    :cond_b
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    if-lez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method


# virtual methods
.method public initializeOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;I)V
    .registers 20
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "trackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.output"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "codecId"
        }
    .end annotation

    .line 2055
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 2056
    .local v1, "maxInputSize":I
    const/4 v2, -0x1

    .line 2057
    .local v2, "pcmEncoding":I
    const/4 v3, 0x0

    .line 2058
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v4, 0x0

    .line 2059
    .local v4, "codecs":Ljava/lang/String;
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v8, 0x10

    const/16 v9, 0x20

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, -0x1

    sparse-switch v6, :sswitch_data_58c

    :cond_19
    goto/16 :goto_196

    :sswitch_1b
    const-string v6, "A_OPUS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0xc

    goto/16 :goto_197

    :sswitch_27
    const-string v6, "A_FLAC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x16

    goto/16 :goto_197

    :sswitch_33
    const-string v6, "A_EAC3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x11

    goto/16 :goto_197

    :sswitch_3f
    const-string v6, "V_MPEG2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x3

    goto/16 :goto_197

    :sswitch_4a
    const-string v6, "S_TEXT/UTF8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x1b

    goto/16 :goto_197

    :sswitch_56
    const-string v6, "S_TEXT/WEBVTT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x1d

    goto/16 :goto_197

    :sswitch_62
    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x8

    goto/16 :goto_197

    :sswitch_6e
    const-string v6, "S_TEXT/ASS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x1c

    goto/16 :goto_197

    :sswitch_7a
    const-string v6, "A_PCM/INT/LIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x18

    goto/16 :goto_197

    :sswitch_86
    const-string v6, "A_PCM/INT/BIG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x19

    goto/16 :goto_197

    :sswitch_92
    const-string v6, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x1a

    goto/16 :goto_197

    :sswitch_9e
    const-string v6, "A_DTS/EXPRESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x14

    goto/16 :goto_197

    :sswitch_aa
    const-string v6, "V_THEORA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0xa

    goto/16 :goto_197

    :sswitch_b6
    const-string v6, "S_HDMV/PGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x1f

    goto/16 :goto_197

    :sswitch_c2
    const-string v6, "V_VP9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    goto/16 :goto_197

    :sswitch_cd
    const-string v6, "V_VP8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x0

    goto/16 :goto_197

    :sswitch_d8
    const-string v6, "V_AV1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x2

    goto/16 :goto_197

    :sswitch_e3
    const-string v6, "A_DTS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x13

    goto/16 :goto_197

    :sswitch_ef
    const-string v6, "A_AC3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x10

    goto/16 :goto_197

    :sswitch_fb
    const-string v6, "A_AAC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0xd

    goto/16 :goto_197

    :sswitch_107
    const-string v6, "A_DTS/LOSSLESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x15

    goto/16 :goto_197

    :sswitch_113
    const-string v6, "S_VOBSUB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x1e

    goto/16 :goto_197

    :sswitch_11f
    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x7

    goto/16 :goto_197

    :sswitch_12a
    const-string v6, "V_MPEG4/ISO/ASP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x5

    goto/16 :goto_197

    :sswitch_135
    const-string v6, "S_DVBSUB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x20

    goto :goto_197

    :sswitch_140
    const-string v6, "V_MS/VFW/FOURCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x9

    goto :goto_197

    :sswitch_14b
    const-string v6, "A_MPEG/L3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0xf

    goto :goto_197

    :sswitch_156
    const-string v6, "A_MPEG/L2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0xe

    goto :goto_197

    :sswitch_161
    const-string v6, "A_VORBIS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0xb

    goto :goto_197

    :sswitch_16c
    const-string v6, "A_TRUEHD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x12

    goto :goto_197

    :sswitch_177
    const-string v6, "A_MS/ACM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x17

    goto :goto_197

    :sswitch_182
    const-string v6, "V_MPEG4/ISO/SP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x4

    goto :goto_197

    :sswitch_18c
    const-string v6, "V_MPEG4/ISO/AP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x6

    goto :goto_197

    :goto_196
    const/4 v5, -0x1

    :goto_197
    const/4 v6, 0x0

    const-string v15, ". Setting mimeType to "

    const-string v7, "MatroskaExtractor"

    packed-switch v5, :pswitch_data_612

    .line 2248
    move-object/from16 v12, p1

    move/from16 v9, p2

    const-string v5, "Unrecognized codec identifier."

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v5

    throw v5

    .line 2241
    :pswitch_1aa
    const-string v5, "application/dvbsubs"

    .line 2243
    .local v5, "mimeType":Ljava/lang/String;
    new-array v7, v11, [B

    .line 2244
    .local v7, "initializationDataBytes":[B
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v12, v7, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2245
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 2246
    goto/16 :goto_3e8

    .line 2238
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v7    # "initializationDataBytes":[B
    :pswitch_1bd
    const-string v5, "application/pgs"

    .line 2239
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3e8

    .line 2234
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_1c1
    const-string v5, "application/vobsub"

    .line 2235
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 2236
    goto/16 :goto_3e8

    .line 2231
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_1cf
    const-string v5, "text/vtt"

    .line 2232
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3e8

    .line 2227
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_1d3
    const-string v5, "text/x-ssa"

    .line 2228
    .restart local v5    # "mimeType":Ljava/lang/String;
    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$500()[B

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 2229
    goto/16 :goto_3e8

    .line 2224
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_1e5
    const-string v5, "application/x-subrip"

    .line 2225
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3e8

    .line 2209
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_1e9
    const-string v5, "audio/raw"

    .line 2210
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v8, v9, :cond_1f2

    .line 2211
    const/4 v2, 0x4

    goto/16 :goto_3e8

    .line 2213
    :cond_1f2
    const/4 v2, -0x1

    .line 2214
    const-string v5, "audio/x-unknown"

    .line 2215
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported floating point PCM bit depth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    goto/16 :goto_3e8

    .line 2192
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_217
    const-string v5, "audio/raw"

    .line 2193
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v9, v13, :cond_220

    .line 2194
    const/4 v2, 0x3

    goto/16 :goto_3e8

    .line 2195
    :cond_220
    if-ne v9, v8, :cond_226

    .line 2196
    const/high16 v2, 0x10000000

    goto/16 :goto_3e8

    .line 2198
    :cond_226
    const/4 v2, -0x1

    .line 2199
    const-string v5, "audio/x-unknown"

    .line 2200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported big endian PCM bit depth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    goto/16 :goto_3e8

    .line 2178
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_24b
    const-string v5, "audio/raw"

    .line 2179
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v2

    .line 2180
    if-nez v2, :cond_3e8

    .line 2181
    const/4 v2, -0x1

    .line 2182
    const-string v5, "audio/x-unknown"

    .line 2183
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported little endian PCM bit depth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e8

    .line 2159
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_27a
    const-string v5, "audio/raw"

    .line 2160
    .restart local v5    # "mimeType":Ljava/lang/String;
    new-instance v8, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v8

    if-eqz v8, :cond_2ba

    .line 2161
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v2

    .line 2162
    if-nez v2, :cond_3e8

    .line 2163
    const/4 v2, -0x1

    .line 2164
    const-string v5, "audio/x-unknown"

    .line 2165
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported PCM bit depth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e8

    .line 2173
    :cond_2ba
    const-string v5, "audio/x-unknown"

    .line 2174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    goto/16 :goto_3e8

    .line 2155
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_2d4
    const-string v5, "audio/flac"

    .line 2156
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2157
    goto/16 :goto_3e8

    .line 2152
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_2e2
    const-string v5, "audio/vnd.dts.hd"

    .line 2153
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3e8

    .line 2149
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_2e6
    const-string v5, "audio/vnd.dts"

    .line 2150
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3e8

    .line 2144
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_2ea
    const-string v5, "audio/true-hd"

    .line 2145
    .restart local v5    # "mimeType":Ljava/lang/String;
    new-instance v7, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;-><init>()V

    iput-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    .line 2146
    goto/16 :goto_3e8

    .line 2141
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_2f5
    const-string v5, "audio/eac3"

    .line 2142
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3e8

    .line 2138
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_2f9
    const-string v5, "audio/ac3"

    .line 2139
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3e8

    .line 2134
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_2fd
    const-string v5, "audio/mpeg"

    .line 2135
    .restart local v5    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1000

    .line 2136
    goto/16 :goto_3e8

    .line 2130
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_303
    const-string v5, "audio/mpeg-L2"

    .line 2131
    .restart local v5    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1000

    .line 2132
    goto/16 :goto_3e8

    .line 2120
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_309
    const-string v5, "audio/mp4a-latm"

    .line 2121
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2122
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v7}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v7

    .line 2125
    .local v7, "aacConfig":Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    iget v8, v7, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2126
    iget v8, v7, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2127
    iget-object v4, v7, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 2128
    goto/16 :goto_3e8

    .line 2110
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v7    # "aacConfig":Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    :pswitch_327
    const-string v5, "audio/opus"

    .line 2111
    .restart local v5    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1680

    .line 2112
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v7

    .line 2113
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2114
    nop

    .line 2115
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 2114
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2116
    nop

    .line 2117
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 2116
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2118
    goto/16 :goto_3e8

    .line 2105
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_36c
    const-string v5, "audio/vorbis"

    .line 2106
    .restart local v5    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x2000

    .line 2107
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v3

    .line 2108
    goto/16 :goto_3e8

    .line 2102
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_37c
    const-string v5, "video/x-unknown"

    .line 2103
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3e8

    .line 2094
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_380
    new-instance v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2095
    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseFourCcPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v5

    .line 2096
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 2097
    .local v7, "mimeType":Ljava/lang/String;
    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v8

    check-cast v3, Ljava/util/List;

    .line 2098
    move-object v5, v7

    goto :goto_3e8

    .line 2087
    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    .end local v7    # "mimeType":Ljava/lang/String;
    :pswitch_39a
    const-string v5, "video/hevc"

    .line 2088
    .local v5, "mimeType":Ljava/lang/String;
    new-instance v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v7}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v7

    .line 2089
    .local v7, "hevcConfig":Lcom/google/android/exoplayer2/video/HevcConfig;
    iget-object v3, v7, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 2090
    iget v8, v7, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 2091
    iget-object v4, v7, Lcom/google/android/exoplayer2/video/HevcConfig;->codecs:Ljava/lang/String;

    .line 2092
    goto :goto_3e8

    .line 2080
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v7    # "hevcConfig":Lcom/google/android/exoplayer2/video/HevcConfig;
    :pswitch_3b4
    const-string v5, "video/avc"

    .line 2081
    .restart local v5    # "mimeType":Ljava/lang/String;
    new-instance v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v7}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v7

    .line 2082
    .local v7, "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    iget-object v3, v7, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 2083
    iget v8, v7, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 2084
    iget-object v4, v7, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    .line 2085
    goto :goto_3e8

    .line 2075
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v7    # "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    :pswitch_3ce
    const-string v5, "video/mp4v-es"

    .line 2077
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v7, :cond_3d6

    move-object v7, v6

    goto :goto_3da

    :cond_3d6
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :goto_3da
    move-object v3, v7

    .line 2078
    goto :goto_3e8

    .line 2070
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_3dc
    const-string v5, "video/mpeg2"

    .line 2071
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto :goto_3e8

    .line 2067
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_3df
    const-string v5, "video/av01"

    .line 2068
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto :goto_3e8

    .line 2064
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_3e2
    const-string v5, "video/x-vnd.on2.vp9"

    .line 2065
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto :goto_3e8

    .line 2061
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_3e5
    const-string v5, "video/x-vnd.on2.vp8"

    .line 2062
    .restart local v5    # "mimeType":Ljava/lang/String;
    nop

    .line 2252
    :cond_3e8
    :goto_3e8
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    if-eqz v7, :cond_3fd

    .line 2254
    new-instance v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 2255
    invoke-static {v7}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    move-result-object v7

    .line 2256
    .local v7, "dolbyVisionConfig":Lcom/google/android/exoplayer2/video/DolbyVisionConfig;
    if-eqz v7, :cond_3fd

    .line 2257
    iget-object v4, v7, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 2258
    const-string v5, "video/dolby-vision"

    .line 2262
    .end local v7    # "dolbyVisionConfig":Lcom/google/android/exoplayer2/video/DolbyVisionConfig;
    :cond_3fd
    const/4 v7, 0x0

    .line 2263
    .local v7, "selectionFlags":I
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    or-int/2addr v7, v8

    .line 2264
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v8, :cond_408

    const/16 v16, 0x2

    goto :goto_40a

    :cond_408
    const/16 v16, 0x0

    :goto_40a
    or-int v7, v7, v16

    .line 2267
    new-instance v8, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 2270
    .local v8, "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_429

    .line 2271
    const/4 v6, 0x1

    .line 2272
    .local v6, "type":I
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2273
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2274
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    .line 2275
    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    goto/16 :goto_53d

    .line 2276
    .end local v6    # "type":I
    :cond_429
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_504

    .line 2277
    const/4 v6, 0x2

    .line 2278
    .restart local v6    # "type":I
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v9, :cond_444

    .line 2279
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-ne v9, v14, :cond_43a

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    :cond_43a
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 2280
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v9, v14, :cond_442

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    :cond_442
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 2282
    :cond_444
    const/high16 v9, -0x40800000    # -1.0f

    .line 2283
    .local v9, "pixelWidthHeightRatio":F
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-eq v10, v14, :cond_45a

    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v11, v14, :cond_45a

    .line 2284
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    mul-int v12, v12, v10

    int-to-float v10, v12

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    mul-int v12, v12, v11

    int-to-float v11, v12

    div-float v9, v10, v11

    .line 2286
    :cond_45a
    const/4 v10, 0x0

    .line 2287
    .local v10, "colorInfo":Lcom/google/android/exoplayer2/video/ColorInfo;
    iget-boolean v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v11, :cond_46f

    .line 2288
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getHdrStaticInfo()[B

    move-result-object v11

    .line 2289
    .local v11, "hdrStaticInfo":[B
    new-instance v12, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iget v14, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    iget v15, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    move-object v10, v12

    .line 2291
    .end local v11    # "hdrStaticInfo":[B
    :cond_46f
    const/4 v11, -0x1

    .line 2293
    .local v11, "rotationDegrees":I
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v12, :cond_490

    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/Map;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_490

    .line 2294
    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/Map;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2296
    :cond_490
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    if-nez v12, :cond_4e0

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 2297
    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_4e0

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 2298
    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_4e0

    .line 2300
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_4af

    .line 2301
    const/4 v11, 0x0

    goto :goto_4e0

    .line 2302
    :cond_4af
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v13, 0x42b40000    # 90.0f

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_4bc

    .line 2303
    const/16 v11, 0x5a

    goto :goto_4e0

    .line 2304
    :cond_4bc
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v13, -0x3ccc0000    # -180.0f

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_4de

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 2305
    const/high16 v13, 0x43340000    # 180.0f

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_4d1

    goto :goto_4de

    .line 2307
    :cond_4d1
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v13, -0x3d4c0000    # -90.0f

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-nez v12, :cond_4e0

    .line 2308
    const/16 v11, 0x10e

    goto :goto_4e0

    .line 2306
    :cond_4de
    :goto_4de
    const/16 v11, 0xb4

    .line 2311
    :cond_4e0
    :goto_4e0
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 2312
    invoke-virtual {v8, v12}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 2313
    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 2314
    invoke-virtual {v12, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 2315
    invoke-virtual {v12, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 2316
    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setProjectionData([B)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 2317
    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setStereoMode(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v12

    .line 2318
    invoke-virtual {v12, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 2319
    .end local v9    # "pixelWidthHeightRatio":F
    .end local v10    # "colorInfo":Lcom/google/android/exoplayer2/video/ColorInfo;
    .end local v11    # "rotationDegrees":I
    goto :goto_53d

    .end local v6    # "type":I
    :cond_504
    const-string v9, "application/x-subrip"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_53c

    .line 2320
    const-string v9, "text/x-ssa"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_53c

    .line 2321
    const-string v9, "text/vtt"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_53c

    .line 2322
    const-string v9, "application/vobsub"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_53c

    .line 2323
    const-string v9, "application/pgs"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_53c

    .line 2324
    const-string v9, "application/dvbsubs"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_535

    goto :goto_53c

    .line 2327
    :cond_535
    const-string v9, "Unexpected MIME type."

    invoke-static {v9, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v6

    throw v6

    .line 2325
    :cond_53c
    :goto_53c
    const/4 v6, 0x3

    .line 2331
    .restart local v6    # "type":I
    :goto_53d
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v9, :cond_552

    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/Map;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_552

    .line 2332
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 2335
    :cond_552
    nop

    .line 2337
    move/from16 v9, p2

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 2338
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 2339
    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 2340
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 2341
    invoke-virtual {v10, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 2342
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 2343
    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 2344
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 2345
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    .line 2347
    .local v10, "format":Lcom/google/android/exoplayer2/Format;
    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v12, p1

    invoke-interface {v12, v11, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 2348
    invoke-interface {v11, v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 2349
    return-void

    nop

    :sswitch_data_58c
    .sparse-switch
        -0x7ce7f5de -> :sswitch_18c
        -0x7ce7f3b0 -> :sswitch_182
        -0x76567dc0 -> :sswitch_177
        -0x6a615338 -> :sswitch_16c
        -0x672350af -> :sswitch_161
        -0x585f4fce -> :sswitch_156
        -0x585f4fcd -> :sswitch_14b
        -0x51dc40b2 -> :sswitch_140
        -0x37a9c464 -> :sswitch_135
        -0x2016c535 -> :sswitch_12a
        -0x2016c4e5 -> :sswitch_11f
        -0x19552dbd -> :sswitch_113
        -0x1538b2ba -> :sswitch_107
        0x3c02325 -> :sswitch_fb
        0x3c02353 -> :sswitch_ef
        0x3c030c5 -> :sswitch_e3
        0x4e81333 -> :sswitch_d8
        0x4e86155 -> :sswitch_cd
        0x4e86156 -> :sswitch_c2
        0x5e8da3e -> :sswitch_b6
        0x1a8350d6 -> :sswitch_aa
        0x2056f406 -> :sswitch_9e
        0x25e26ee2 -> :sswitch_92
        0x2b45174d -> :sswitch_86
        0x2b453ce4 -> :sswitch_7a
        0x2c0618eb -> :sswitch_6e
        0x32fdf009 -> :sswitch_62
        0x3e4ca2d8 -> :sswitch_56
        0x54c61e47 -> :sswitch_4a
        0x6bd6c624 -> :sswitch_3f
        0x7446132a -> :sswitch_33
        0x7446b0a6 -> :sswitch_27
        0x744ad97d -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_612
    .packed-switch 0x0
        :pswitch_3e5
        :pswitch_3e2
        :pswitch_3df
        :pswitch_3dc
        :pswitch_3ce
        :pswitch_3ce
        :pswitch_3ce
        :pswitch_3b4
        :pswitch_39a
        :pswitch_380
        :pswitch_37c
        :pswitch_36c
        :pswitch_327
        :pswitch_309
        :pswitch_303
        :pswitch_2fd
        :pswitch_2f9
        :pswitch_2f5
        :pswitch_2ea
        :pswitch_2e6
        :pswitch_2e6
        :pswitch_2e2
        :pswitch_2d4
        :pswitch_27a
        :pswitch_24b
        :pswitch_217
        :pswitch_1e9
        :pswitch_1e5
        :pswitch_1d3
        :pswitch_1cf
        :pswitch_1c1
        :pswitch_1bd
        :pswitch_1aa
    .end packed-switch
.end method

.method public outputPendingSampleMetadata()V
    .registers 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 2354
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    if-eqz v0, :cond_b

    .line 2355
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 2357
    :cond_b
    return-void
.end method

.method public reset()V
    .registers 2

    .line 2361
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    if-eqz v0, :cond_7

    .line 2362
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->reset()V

    .line 2364
    :cond_7
    return-void
.end method
