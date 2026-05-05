.class public final Lcom/google/android/exoplayer2/video/AvcConfig;
.super Ljava/lang/Object;
.source "AvcConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final codecs:Ljava/lang/String;

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIFLjava/lang/String;)V
    .registers 10
    .param p2, "nalUnitLengthFieldLength"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "colorSpace"    # I
    .param p6, "colorRange"    # I
    .param p7, "colorTransfer"    # I
    .param p8, "pixelWidthHeightRatio"    # F
    .param p9, "codecs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIIIIF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 154
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 156
    iput p2, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    .line 157
    iput p3, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->width:I

    .line 158
    iput p4, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->height:I

    .line 159
    iput p5, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->colorSpace:I

    .line 160
    iput p6, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->colorRange:I

    .line 161
    iput p7, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->colorTransfer:I

    .line 162
    iput p8, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 163
    iput-object p9, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    .line 164
    return-void
.end method

.method private static buildNalUnitForChild(Lcom/google/android/exoplayer2/util/ParsableByteArray;)[B
    .registers 4
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 167
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 168
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 169
    .local v1, "offset":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public static parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;
    .registers 23
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x4

    move-object/from16 v1, p0

    :try_start_3
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v2, 0x3

    and-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 52
    .local v0, "nalUnitLengthFieldLength":I
    if-eq v0, v2, :cond_a3

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v13, v3, 0x1f

    .line 57
    .local v13, "numSequenceParameterSets":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1c
    if-ge v3, v13, :cond_28

    .line 58
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->buildNalUnitForChild(Lcom/google/android/exoplayer2/util/ParsableByteArray;)[B

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 60
    .end local v3    # "j":I
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    move v14, v3

    .line 61
    .local v14, "numPictureParameterSets":I
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2e
    if-ge v3, v14, :cond_3a

    .line 62
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->buildNalUnitForChild(Lcom/google/android/exoplayer2/util/ParsableByteArray;)[B

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 65
    .end local v3    # "j":I
    :cond_3a
    const/4 v3, -0x1

    .line 66
    .local v3, "width":I
    const/4 v4, -0x1

    .line 67
    .local v4, "height":I
    const/4 v5, -0x1

    .line 68
    .local v5, "colorSpace":I
    const/4 v6, -0x1

    .line 69
    .local v6, "colorRange":I
    const/4 v7, -0x1

    .line 70
    .local v7, "colorTransfer":I
    const/high16 v8, 0x3f800000    # 1.0f

    .line 71
    .local v8, "pixelWidthHeightRatio":F
    const/4 v9, 0x0

    .line 72
    .local v9, "codecs":Ljava/lang/String;
    if-lez v13, :cond_81

    .line 73
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 74
    .local v11, "sps":[B
    nop

    .line 76
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v12, v11

    .line 75
    invoke-static {v10, v0, v12}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v10

    .line 77
    .local v10, "spsData":Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    iget v12, v10, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    move v3, v12

    .line 78
    iget v12, v10, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    move v4, v12

    .line 79
    iget v12, v10, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->colorSpace:I

    move v5, v12

    .line 80
    iget v12, v10, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->colorRange:I

    move v6, v12

    .line 81
    iget v12, v10, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->colorTransfer:I

    move v7, v12

    .line 82
    iget v12, v10, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    move v8, v12

    .line 83
    iget v12, v10, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->profileIdc:I

    iget v15, v10, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget v1, v10, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->levelIdc:I

    .line 84
    invoke-static {v12, v15, v1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move v1, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    goto :goto_8d

    .line 72
    .end local v10    # "spsData":Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .end local v11    # "sps":[B
    :cond_81
    move v1, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    .line 88
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "colorSpace":I
    .end local v6    # "colorRange":I
    .end local v7    # "colorTransfer":I
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v9    # "codecs":Ljava/lang/String;
    .local v1, "width":I
    .local v15, "height":I
    .local v16, "colorSpace":I
    .local v17, "colorRange":I
    .local v18, "colorTransfer":I
    .local v19, "pixelWidthHeightRatio":F
    .local v20, "codecs":Ljava/lang/String;
    :goto_8d
    new-instance v21, Lcom/google/android/exoplayer2/video/AvcConfig;

    move-object/from16 v3, v21

    move-object v4, v2

    move v5, v0

    move v6, v1

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/video/AvcConfig;-><init>(Ljava/util/List;IIIIIIFLjava/lang/String;)V

    return-object v21

    .line 53
    .end local v1    # "width":I
    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v13    # "numSequenceParameterSets":I
    .end local v14    # "numPictureParameterSets":I
    .end local v15    # "height":I
    .end local v16    # "colorSpace":I
    .end local v17    # "colorRange":I
    .end local v18    # "colorTransfer":I
    .end local v19    # "pixelWidthHeightRatio":F
    .end local v20    # "codecs":Ljava/lang/String;
    :cond_a3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    throw v1
    :try_end_a9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_a9} :catch_a9

    .line 98
    .end local v0    # "nalUnitLengthFieldLength":I
    .restart local p0    # "data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :catch_a9
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Error parsing AVC config"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    goto :goto_b2

    :goto_b1
    throw v1

    :goto_b2
    goto :goto_b1
.end method
