.class public Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;
.super Ljava/lang/Object;
.source "FlvHevcExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;
    }
.end annotation


# static fields
.field private static final AAC_PACKET_RAW:I = 0x1

.field private static final AAC_PACKET_SEQ_START:I = 0x0

.field private static final AAC_SAMPLE_RATES:[I

.field private static final CODEC_AVC:I = 0x7

.field private static final CODEC_HEVC:I = 0xc

.field private static final FLV_HEADER_SIZE:I = 0x9

.field private static final NAL_START_CODE:[B

.field private static final PACKET_NAL_UNIT:I = 0x1

.field private static final PACKET_SEQ_START:I = 0x0

.field private static final PREV_TAG_SIZE:I = 0x4

.field private static final SOUND_FORMAT_AAC:I = 0xa

.field private static final STATE_HEADER:I = 0x0

.field private static final STATE_SKIP:I = 0x3

.field private static final STATE_TAG_DATA:I = 0x2

.field private static final STATE_TAG_HEADER:I = 0x1

.field private static final TAG_HEADER_SIZE:I = 0xb

.field private static final TAG_TYPE_AUDIO:I = 0x8

.field private static final TAG_TYPE_VIDEO:I = 0x9


# instance fields
.field private audioTrack:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final headerBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private nalLengthSize:I

.field private output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private skipBytes:I

.field private state:I

.field private tagDataSize:I

.field private final tagHeaderBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private tagTimestampUs:J

.field private tagType:I

.field private tracksEnded:Z

.field private videoTrack:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->NAL_START_CODE:[B

    .line 51
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->AAC_SAMPLE_RATES:[I

    return-void

    .line 50
    :array_12
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 51
    :array_18
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->state:I

    .line 66
    const/4 v0, 0x4

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->nalLengthSize:I

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->headerBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 69
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagHeaderBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method private audioTrack()Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->audioTrack:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-object v0
.end method

.method private convertToAnnexB([BI)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 601
    move v0, v1

    move v2, v1

    .line 603
    :goto_3
    iget v3, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->nalLengthSize:I

    add-int/2addr v3, v2

    if-gt v3, p2, :cond_23

    move v3, v1

    move v4, v1

    .line 605
    :goto_a
    iget v5, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->nalLengthSize:I

    if-ge v3, v5, :cond_1a

    .line 606
    shl-int/lit8 v4, v4, 0x8

    add-int v5, v2, v3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 605
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 608
    :cond_1a
    iget v3, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->nalLengthSize:I

    add-int/2addr v2, v3

    .line 609
    if-lez v4, :cond_23

    add-int v3, v2, v4

    if-le v3, p2, :cond_28

    .line 615
    :cond_23
    if-nez v0, :cond_2d

    .line 616
    new-array v0, v1, [B

    .line 636
    :goto_27
    return-object v0

    .line 612
    :cond_28
    add-int/lit8 v3, v4, 0x4

    add-int/2addr v0, v3

    .line 613
    add-int/2addr v2, v4

    .line 614
    goto :goto_3

    .line 618
    :cond_2d
    new-array v5, v0, [B

    move v0, v1

    move v2, v1

    .line 621
    :goto_31
    iget v3, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->nalLengthSize:I

    add-int/2addr v3, v2

    if-gt v3, p2, :cond_51

    move v3, v1

    move v4, v1

    .line 623
    :goto_38
    iget v6, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->nalLengthSize:I

    if-ge v3, v6, :cond_48

    .line 624
    shl-int/lit8 v4, v4, 0x8

    add-int v6, v2, v3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    .line 623
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 626
    :cond_48
    iget v3, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->nalLengthSize:I

    add-int/2addr v2, v3

    .line 627
    if-lez v4, :cond_51

    add-int v3, v2, v4

    if-le v3, p2, :cond_53

    :cond_51
    move-object v0, v5

    .line 636
    goto :goto_27

    .line 630
    :cond_53
    sget-object v3, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->NAL_START_CODE:[B

    const/4 v6, 0x4

    invoke-static {v3, v1, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    add-int/lit8 v0, v0, 0x4

    .line 632
    invoke-static {p1, v2, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    add-int/2addr v0, v4

    .line 634
    add-int/2addr v2, v4

    .line 635
    goto :goto_31
.end method

.method private handleVideoPacket(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IIIII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    if-gtz p5, :cond_3

    .line 233
    :cond_2
    :goto_2
    return-void

    .line 202
    :cond_3
    packed-switch p3, :pswitch_data_68

    .line 230
    move/from16 v0, p5

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_2

    .line 204
    :pswitch_c
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move/from16 v0, p5

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 205
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, p5

    invoke-interface {p1, v3, v4, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 206
    const/4 v3, 0x7

    if-ne p2, v3, :cond_24

    .line 207
    invoke-direct {p0, v2}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->parseAvcConfig(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_2

    .line 209
    :cond_24
    invoke-direct {p0, v2}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->parseHevcConfig(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_2

    .line 213
    :pswitch_28
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->videoTrack()Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v3

    .line 214
    if-nez v3, :cond_34

    .line 216
    move/from16 v0, p5

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_2

    .line 219
    :cond_34
    move/from16 v0, p5

    new-array v2, v0, [B

    .line 220
    const/4 v4, 0x0

    move/from16 v0, p5

    invoke-interface {p1, v2, v4, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 221
    move/from16 v0, p5

    invoke-direct {p0, v2, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->convertToAnnexB([BI)[B

    move-result-object v2

    .line 222
    array-length v4, v2

    if-lez v4, :cond_2

    .line 223
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    array-length v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 224
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_66

    const/4 v6, 0x1

    .line 225
    :goto_56
    iget-wide v4, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagTimestampUs:J

    move/from16 v0, p6

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 226
    array-length v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    goto :goto_2

    .line 224
    :cond_66
    const/4 v6, 0x0

    goto :goto_56

    .line 202
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_c
        :pswitch_28
    .end packed-switch
.end method

.method private maybeEndTracks()V
    .locals 2

    .prologue
    .line 719
    iget-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tracksEnded:Z

    if-eqz v0, :cond_5

    .line 740
    :goto_4
    return-void

    .line 722
    :cond_5
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 723
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$1;

    invoke-direct {v1, p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$1;-><init>(Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tracksEnded:Z

    goto :goto_4
.end method

.method private parseAacConfig(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 681
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 682
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 683
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 684
    and-int/lit8 v0, v1, 0x7

    shl-int/lit8 v0, v0, 0x1

    shr-int/lit8 v3, v2, 0x7

    and-int/lit8 v3, v3, 0x1

    or-int/2addr v0, v3

    .line 685
    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0xf

    .line 686
    if-ltz v0, :cond_5b

    sget-object v4, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->AAC_SAMPLE_RATES:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5b

    sget-object v4, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->AAC_SAMPLE_RATES:[I

    aget v0, v4, v0

    .line 687
    :goto_25
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->audioTrack()Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    .line 688
    if-eqz v4, :cond_5a

    .line 689
    new-instance v5, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v6, "audio/mp4a-latm"

    .line 690
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 691
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 692
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [B

    int-to-byte v1, v1

    aput-byte v1, v3, v7

    int-to-byte v1, v2

    aput-byte v1, v3, v8

    .line 693
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 689
    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 696
    :cond_5a
    return-void

    .line 686
    :cond_5b
    const v0, 0xac44

    goto :goto_25
.end method

.method private parseAvcConfig(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 244
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 246
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 247
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 248
    if-lt v0, v3, :cond_18

    if-le v0, v1, :cond_19

    :cond_18
    move v0, v1

    .line 251
    :cond_19
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->nalLengthSize:I

    .line 253
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v5, v1, 0x1f

    .line 254
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 257
    const-string v1, "FlvHevcExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseAvcConfig: avcC len="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", lengthSize="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", numSps="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    move v0, v4

    move v1, v4

    .line 259
    :goto_5a
    if-ge v3, v5, :cond_af

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    array-length v7, v7

    if-gt v4, v7, :cond_af

    .line 260
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 261
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    array-length v8, v8

    if-le v7, v8, :cond_14e

    .line 262
    const-string v5, "FlvHevcExtractor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseAvcConfig: SPS["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] len="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exceeds remaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 263
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_af
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 279
    const-string v4, "FlvHevcExtractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseAvcConfig: numPps="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_cb
    if-ge v2, v3, :cond_ea

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    array-length v5, v5

    if-gt v4, v5, :cond_ea

    .line 281
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 282
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    array-length v7, v7

    if-le v5, v7, :cond_1b2

    .line 297
    :cond_ea
    if-lez v1, :cond_ee

    if-gtz v0, :cond_f9

    .line 298
    :cond_ee
    const-string v0, "FlvHevcExtractor"

    const-string v1, "parseAvcConfig: SPS size unavailable, fallback 1920x1080"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/16 v1, 0x780

    .line 300
    const/16 v0, 0x438

    .line 302
    :cond_f9
    const-string v2, "FlvHevcExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseAvcConfig: initData size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->videoTrack()Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v2

    .line 306
    if-eqz v2, :cond_14d

    .line 307
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v4, "video/avc"

    .line 308
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 309
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 310
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 311
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 307
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 317
    :cond_14d
    :goto_14d
    return-void

    .line 266
    :cond_14e
    new-array v7, v4, [B

    .line 267
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 269
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    if-nez v3, :cond_1ae

    .line 271
    invoke-direct {p0, v7, v4}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->parseAvcSpsSize([BI)[I

    move-result-object v0

    .line 272
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 273
    const/4 v8, 0x1

    aget v0, v0, v8

    .line 274
    const-string v8, "FlvHevcExtractor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseAvcConfig: SPS[0] len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x10

    .line 275
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v7, v4}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->toHex([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " size="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_1ae
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5a

    .line 285
    :cond_1b2
    new-array v5, v4, [B

    .line 286
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 288
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    if-nez v2, :cond_1f4

    .line 290
    const-string v7, "FlvHevcExtractor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseAvcConfig: PPS[0] len="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x8

    .line 291
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->toHex([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f4} :catch_1f8

    .line 280
    :cond_1f4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_cb

    .line 314
    :catch_1f8
    move-exception v0

    .line 315
    const-string v1, "FlvHevcExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseAvcConfig failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14d
.end method

.method private parseAvcSpsSize([BI)[I
    .locals 11

    .prologue
    const/4 v3, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v1, 0x8

    const/4 v8, 0x1

    .line 405
    .line 408
    :try_start_6
    new-instance v10, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;

    invoke-direct {v10, p1, p2}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;-><init>([BI)V

    .line 409
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 410
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    move-result v0

    .line 411
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 412
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 413
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    .line 414
    const/16 v2, 0x64

    if-eq v0, v2, :cond_53

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_53

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_53

    const/16 v2, 0xf4

    if-eq v0, v2, :cond_53

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_53

    const/16 v2, 0x53

    if-eq v0, v2, :cond_53

    const/16 v2, 0x56

    if-eq v0, v2, :cond_53

    const/16 v2, 0x76

    if-eq v0, v2, :cond_53

    const/16 v2, 0x80

    if-eq v0, v2, :cond_53

    const/16 v2, 0x8a

    if-eq v0, v2, :cond_53

    const/16 v2, 0x8b

    if-eq v0, v2, :cond_53

    const/16 v2, 0x86

    if-ne v0, v2, :cond_a9

    .line 417
    :cond_53
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v2

    .line 418
    if-ne v2, v3, :cond_5d

    .line 419
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 421
    :cond_5d
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    .line 422
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    .line 423
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 424
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    move-result v0

    if-ne v0, v8, :cond_9c

    move v0, v8

    .line 425
    :goto_6f
    if-eqz v0, :cond_a9

    .line 426
    if-ne v2, v3, :cond_9e

    move v0, v1

    :goto_74
    move v9, v6

    .line 427
    :goto_75
    if-ge v9, v0, :cond_a9

    .line 428
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    move-result v2

    if-ne v2, v8, :cond_a0

    move v2, v8

    .line 429
    :goto_7f
    if-eqz v2, :cond_a5

    .line 430
    const/4 v2, 0x6

    if-ge v9, v2, :cond_a2

    const/16 v2, 0x10

    :goto_86
    move v7, v6

    move v4, v1

    move v3, v1

    .line 433
    :goto_89
    if-ge v7, v2, :cond_a5

    .line 434
    if-eqz v4, :cond_96

    .line 435
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readSe()I

    move-result v4

    .line 436
    add-int/2addr v4, v3

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v4, v4, 0x100

    .line 438
    :cond_96
    if-eqz v4, :cond_99

    move v3, v4

    .line 433
    :cond_99
    add-int/lit8 v7, v7, 0x1

    goto :goto_89

    :cond_9c
    move v0, v6

    .line 424
    goto :goto_6f

    .line 426
    :cond_9e
    const/4 v0, 0x4

    goto :goto_74

    :cond_a0
    move v2, v6

    .line 428
    goto :goto_7f

    .line 430
    :cond_a2
    const/16 v2, 0x40

    goto :goto_86

    .line 427
    :cond_a5
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_75

    .line 446
    :cond_a9
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    .line 447
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v0

    .line 448
    if-nez v0, :cond_dd

    .line 449
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    .line 459
    :cond_b5
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    .line 460
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 461
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v0

    .line 462
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v1

    .line 463
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c8} :catch_f6

    move-result v2

    .line 464
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v5, v0, 0x10

    .line 465
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v1, v2, 0x2

    mul-int/2addr v0, v1

    move v1, v5

    .line 471
    :goto_d5
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v6

    aput v0, v2, v8

    return-object v2

    .line 450
    :cond_dd
    if-ne v0, v8, :cond_b5

    .line 451
    const/4 v0, 0x1

    :try_start_e0
    invoke-virtual {v10, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 452
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readSe()I

    .line 453
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readSe()I

    .line 454
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v1

    move v0, v6

    .line 455
    :goto_ee
    if-ge v0, v1, :cond_b5

    .line 456
    invoke-virtual {v10}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readSe()I
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f3} :catch_f6

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_ee

    .line 466
    :catch_f6
    move-exception v0

    move v0, v5

    move v1, v5

    .line 469
    goto :goto_d5
.end method

.method private parseHevcConfig(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 14

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 324
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 328
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 329
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 330
    if-lt v0, v4, :cond_19

    if-le v0, v1, :cond_1a

    :cond_19
    move v0, v1

    .line 333
    :cond_1a
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->nalLengthSize:I

    .line 335
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 336
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 339
    const-string v1, "FlvHevcExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseHevcConfig: hvcC len="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", lengthSize="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", numArrays="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    move v0, v2

    move v1, v2

    .line 341
    :goto_59
    if-ge v4, v5, :cond_fe

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    array-length v7, v7

    if-gt v2, v7, :cond_fe

    .line 342
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v7, v2, 0x3f

    .line 343
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    move v2, v3

    .line 344
    :goto_73
    if-ge v2, v8, :cond_92

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v10

    array-length v10, v10

    if-gt v9, v10, :cond_92

    .line 345
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 346
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v11

    array-length v11, v11

    if-le v10, v11, :cond_96

    .line 341
    :cond_92
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_59

    .line 349
    :cond_96
    new-array v10, v9, [B

    .line 350
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v11

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v10, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 352
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    const/16 v11, 0x21

    if-ne v7, v11, :cond_fa

    if-nez v2, :cond_fa

    .line 355
    invoke-direct {p0, v10, v9}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->parseHevcSpsSize([BI)[I

    move-result-object v0

    .line 356
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 357
    const/4 v11, 0x1

    aget v0, v0, v11

    .line 358
    const-string v11, "FlvHevcExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseHevcConfig: SPS(nalType=33) len="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hex="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x10

    .line 359
    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v10, v9}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->toHex([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 358
    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_fa
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_73

    .line 365
    :cond_fe
    if-lez v1, :cond_102

    if-gtz v0, :cond_10d

    .line 366
    :cond_102
    const-string v0, "FlvHevcExtractor"

    const-string v1, "parseHevcConfig: SPS size unavailable, fallback 1920x1080"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/16 v1, 0x780

    .line 368
    const/16 v0, 0x438

    .line 370
    :cond_10d
    const-string v2, "FlvHevcExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseHevcConfig: initData size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->videoTrack()Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v2

    .line 374
    if-eqz v2, :cond_161

    .line 375
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v4, "video/hevc"

    .line 376
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 377
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 378
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 379
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 375
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_161} :catch_162

    .line 385
    :cond_161
    :goto_161
    return-void

    .line 382
    :catch_162
    move-exception v0

    .line 383
    const-string v1, "FlvHevcExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseHevcConfig failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_161
.end method

.method private parseHevcSpsSize([BI)[I
    .locals 13

    .prologue
    const/4 v1, -0x1

    const/16 v10, 0x8

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 475
    .line 478
    :try_start_6
    new-instance v7, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;

    invoke-direct {v7, p1, p2}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;-><init>([BI)V

    .line 479
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 480
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 481
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    move-result v2

    .line 482
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 485
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 486
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 487
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 488
    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 489
    const/16 v0, 0x30

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 490
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 491
    const/16 v0, 0x8

    new-array v8, v0, [Z

    .line 492
    const/16 v0, 0x8

    new-array v9, v0, [Z

    move v5, v6

    .line 493
    :goto_41
    if-gt v5, v2, :cond_61

    .line 494
    if-lez v5, :cond_59

    .line 495
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    move-result v0

    if-ne v0, v4, :cond_5d

    move v0, v4

    :goto_4d
    aput-boolean v0, v8, v5

    .line 496
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    move-result v0

    if-ne v0, v4, :cond_5f

    move v0, v4

    :goto_57
    aput-boolean v0, v9, v5

    .line 493
    :cond_59
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_41

    :cond_5d
    move v0, v6

    .line 495
    goto :goto_4d

    :cond_5f
    move v0, v6

    .line 496
    goto :goto_57

    .line 499
    :cond_61
    if-lez v2, :cond_6d

    move v0, v2

    .line 500
    :goto_64
    if-ge v0, v10, :cond_6d

    .line 501
    const/4 v5, 0x2

    invoke-virtual {v7, v5}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    :cond_6d
    move v0, v6

    .line 504
    :goto_6e
    if-gt v0, v2, :cond_89

    .line 505
    if-lez v0, :cond_7b

    aget-boolean v5, v8, v0

    if-eqz v5, :cond_7b

    .line 506
    const/16 v5, 0x2c

    invoke-virtual {v7, v5}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 508
    :cond_7b
    if-lez v0, :cond_86

    aget-boolean v5, v9, v0

    if-eqz v5, :cond_86

    .line 509
    const/16 v5, 0x8

    invoke-virtual {v7, v5}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    .line 504
    :cond_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 513
    :cond_89
    invoke-virtual {v7}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    .line 514
    invoke-virtual {v7}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v10

    .line 515
    invoke-virtual {v7}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v11

    .line 516
    invoke-virtual {v7}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v12

    .line 517
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBits(I)I

    move-result v0

    if-ne v0, v4, :cond_d1

    move v0, v4

    .line 522
    :goto_a0
    if-eqz v0, :cond_db

    .line 523
    invoke-virtual {v7}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v9

    .line 524
    invoke-virtual {v7}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v8

    .line 525
    invoke-virtual {v7}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v2

    .line 526
    invoke-virtual {v7}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b1} :catch_d7

    move-result v0

    move v5, v0

    move v7, v2

    .line 528
    :goto_b4
    if-eq v10, v4, :cond_b8

    if-ne v10, v3, :cond_d3

    :cond_b8
    move v2, v3

    .line 529
    :goto_b9
    if-ne v10, v4, :cond_d5

    move v0, v3

    .line 530
    :goto_bc
    add-int/2addr v8, v9

    mul-int/2addr v2, v8

    sub-int v2, v11, v2

    .line 531
    add-int/2addr v5, v7

    mul-int/2addr v0, v5

    sub-int v0, v12, v0

    .line 532
    if-lez v2, :cond_c8

    if-gtz v0, :cond_ca

    :cond_c8
    move v0, v1

    move v2, v1

    .line 540
    :cond_ca
    :goto_ca
    new-array v1, v3, [I

    aput v2, v1, v6

    aput v0, v1, v4

    return-object v1

    :cond_d1
    move v0, v6

    .line 517
    goto :goto_a0

    :cond_d3
    move v2, v4

    .line 528
    goto :goto_b9

    :cond_d5
    move v0, v4

    .line 529
    goto :goto_bc

    .line 536
    :catch_d7
    move-exception v0

    move v0, v1

    move v2, v1

    .line 538
    goto :goto_ca

    :cond_db
    move v5, v6

    move v7, v6

    move v8, v6

    move v9, v6

    goto :goto_b4
.end method

.method private readAudioTag(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v6, 0x0

    .line 642
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagDataSize:I

    if-ge v0, v2, :cond_d

    .line 643
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagDataSize:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 678
    :goto_c
    return-void

    .line 646
    :cond_d
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 647
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-interface {p1, v1, v6, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 648
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 650
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 651
    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 652
    iget v2, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagDataSize:I

    add-int/lit8 v2, v2, -0x1

    .line 654
    const/16 v3, 0xa

    if-ne v1, v3, :cond_70

    .line 655
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 656
    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagDataSize:I

    add-int/lit8 v5, v1, -0x2

    .line 657
    if-nez v0, :cond_48

    if-lez v5, :cond_48

    .line 658
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 659
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-interface {p1, v1, v6, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 660
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->parseAacConfig(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_c

    .line 661
    :cond_48
    if-ne v0, v4, :cond_6c

    if-lez v5, :cond_6c

    .line 662
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->audioTrack()Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    .line 663
    if-nez v1, :cond_56

    .line 665
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_c

    .line 667
    :cond_56
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 668
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-interface {p1, v2, v6, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 669
    invoke-interface {v1, v0, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 670
    iget-wide v2, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagTimestampUs:J

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    goto :goto_c

    .line 673
    :cond_6c
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_c

    .line 676
    :cond_70
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_c
.end method

.method private readVideoTag(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 166
    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagDataSize:I

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 167
    new-instance v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 168
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 169
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 171
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 172
    and-int/lit8 v2, v3, 0xf

    .line 173
    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v4, v3, 0xf

    .line 174
    if-le v1, v7, :cond_66

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 175
    :goto_28
    iget v5, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagDataSize:I

    sub-int/2addr v5, v1

    .line 180
    if-lt v1, v8, :cond_6c

    if-ne v3, v7, :cond_6c

    .line 181
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 182
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v7, 0x3

    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 183
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v6, 0x4

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 184
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_58

    .line 185
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    :cond_58
    move v6, v0

    .line 190
    :goto_59
    const/4 v0, 0x7

    if-eq v2, v0, :cond_60

    const/16 v0, 0xc

    if-ne v2, v0, :cond_68

    :cond_60
    move-object v0, p0

    move-object v1, p1

    .line 191
    invoke-direct/range {v0 .. v6}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->handleVideoPacket(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IIIII)V

    .line 195
    :goto_65
    return-void

    :cond_66
    move v3, v0

    .line 174
    goto :goto_28

    .line 193
    :cond_68
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_65

    :cond_6c
    move v6, v0

    goto :goto_59
.end method

.method private static toHex([BI)Ljava/lang/String;
    .locals 5

    .prologue
    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    array-length v0, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 391
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_29

    .line 392
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 393
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1a

    .line 394
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    :cond_1a
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 399
    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private videoTrack()Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->videoTrack:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-object v0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 81
    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->state:I

    .line 83
    iput-boolean v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tracksEnded:Z

    .line 84
    iput-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->videoTrack:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 85
    iput-object v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->audioTrack:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 86
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    :goto_5
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->state:I

    packed-switch v0, :pswitch_data_fe

    .line 149
    return v2

    .line 93
    :pswitch_b
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->headerBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v3, 0x9

    invoke-interface {p1, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 94
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->headerBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 96
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->headerBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 97
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->headerBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 98
    add-int/lit8 v0, v0, -0x9

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->skipBytes:I

    .line 99
    const-string v4, "FlvHevcExtractor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read: FLV header flags=0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " hasVideo="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_85

    move v0, v1

    :goto_4d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " hasAudio="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_87

    move v0, v1

    :goto_5c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_73

    .line 108
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0, v2, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->videoTrack:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 110
    :cond_73
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_7f

    .line 111
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0, v1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->audioTrack:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 113
    :cond_7f
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->maybeEndTracks()V

    .line 114
    iput v8, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->state:I

    goto :goto_5

    :cond_85
    move v0, v2

    .line 99
    goto :goto_4d

    :cond_87
    move v0, v2

    goto :goto_5c

    .line 117
    :pswitch_89
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->skipBytes:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 118
    iput v2, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->skipBytes:I

    .line 119
    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->state:I

    goto/16 :goto_5

    .line 122
    :pswitch_94
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagHeaderBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v3, 0xb

    invoke-interface {p1, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 123
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagHeaderBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 124
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagHeaderBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagType:I

    .line 125
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagHeaderBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagDataSize:I

    .line 126
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagHeaderBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    .line 127
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagHeaderBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 128
    iget-object v4, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagHeaderBuf:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 129
    int-to-long v4, v3

    const/16 v3, 0x18

    shl-long/2addr v4, v3

    int-to-long v6, v0

    or-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagTimestampUs:J

    .line 130
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagDataSize:I

    if-lez v0, :cond_d8

    .line 131
    iput v10, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->state:I

    goto/16 :goto_5

    .line 133
    :cond_d8
    iput v9, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->skipBytes:I

    .line 134
    iput v8, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->state:I

    goto/16 :goto_5

    .line 138
    :pswitch_de
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagType:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_ed

    .line 139
    invoke-direct {p0, p1}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->readVideoTag(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 145
    :goto_e7
    iput v9, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->skipBytes:I

    .line 146
    iput v8, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->state:I

    goto/16 :goto_5

    .line 140
    :cond_ed
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagType:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_f7

    .line 141
    invoke-direct {p0, p1}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->readAudioTag(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_e7

    .line 143
    :cond_f7
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->tagDataSize:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_e7

    .line 91
    nop

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_b
        :pswitch_94
        :pswitch_de
        :pswitch_89
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;->state:I

    .line 157
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    new-array v2, v3, [B

    .line 74
    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 75
    aget-byte v3, v2, v1

    const/16 v4, 0x46

    if-ne v3, v4, :cond_1c

    aget-byte v3, v2, v0

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    const/16 v3, 0x56

    if-ne v2, v3, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b
.end method
