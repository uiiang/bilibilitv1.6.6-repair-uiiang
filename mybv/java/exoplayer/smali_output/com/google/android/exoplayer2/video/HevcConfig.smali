.class public final Lcom/google/android/exoplayer2/video/HevcConfig;
.super Ljava/lang/Object;
.source "HevcConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SPS_NAL_UNIT_TYPE:I = 0x21


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

    .line 186
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 188
    iput p2, p0, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    .line 189
    iput p3, p0, Lcom/google/android/exoplayer2/video/HevcConfig;->width:I

    .line 190
    iput p4, p0, Lcom/google/android/exoplayer2/video/HevcConfig;->height:I

    .line 191
    iput p5, p0, Lcom/google/android/exoplayer2/video/HevcConfig;->colorSpace:I

    .line 192
    iput p6, p0, Lcom/google/android/exoplayer2/video/HevcConfig;->colorRange:I

    .line 193
    iput p7, p0, Lcom/google/android/exoplayer2/video/HevcConfig;->colorTransfer:I

    .line 194
    iput p8, p0, Lcom/google/android/exoplayer2/video/HevcConfig;->pixelWidthHeightRatio:F

    .line 195
    iput-object p9, p0, Lcom/google/android/exoplayer2/video/HevcConfig;->codecs:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public static parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;
    .registers 33
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 49
    move-object/from16 v1, p0

    const/16 v0, 0x15

    :try_start_4
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    .line 53
    .local v0, "lengthSizeMinusOne":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 54
    .local v2, "numberOfArrays":I
    const/4 v3, 0x0

    .line 55
    .local v3, "csdLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 56
    .local v4, "csdStartPosition":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    if-ge v5, v2, :cond_34

    .line 57
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 59
    .local v6, "numberOfNalUnits":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_22
    if-ge v7, v6, :cond_31

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 61
    .local v8, "nalUnitLength":I
    add-int/lit8 v9, v8, 0x4

    add-int/2addr v3, v9

    .line 62
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 59
    .end local v8    # "nalUnitLength":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 56
    .end local v6    # "numberOfNalUnits":I
    .end local v7    # "j":I
    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 67
    .end local v5    # "i":I
    :cond_34
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 68
    new-array v5, v3, [B

    .line 69
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .line 70
    .local v6, "bufferPosition":I
    const/4 v7, -0x1

    .line 71
    .local v7, "width":I
    const/4 v8, -0x1

    .line 72
    .local v8, "height":I
    const/4 v9, -0x1

    .line 73
    .local v9, "colorSpace":I
    const/4 v10, -0x1

    .line 74
    .local v10, "colorRange":I
    const/4 v11, -0x1

    .line 75
    .local v11, "colorTransfer":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 76
    .local v12, "pixelWidthHeightRatio":F
    const/4 v13, 0x0

    .line 77
    .local v13, "codecs":Ljava/lang/String;
    const/4 v14, 0x0

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move-object/from16 v23, v13

    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "colorSpace":I
    .end local v10    # "colorRange":I
    .end local v11    # "colorTransfer":I
    .end local v12    # "pixelWidthHeightRatio":F
    .end local v13    # "codecs":Ljava/lang/String;
    .local v14, "i":I
    .local v17, "width":I
    .local v18, "height":I
    .local v19, "colorSpace":I
    .local v20, "colorRange":I
    .local v21, "colorTransfer":I
    .local v22, "pixelWidthHeightRatio":F
    .local v23, "codecs":Ljava/lang/String;
    :goto_51
    if-ge v14, v2, :cond_e4

    .line 78
    nop

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x3f

    .line 80
    .local v7, "nalUnitType":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 81
    .local v8, "numberOfNalUnits":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5f
    if-ge v9, v8, :cond_da

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 83
    .local v10, "nalUnitLength":I
    sget-object v11, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    sget-object v12, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v12, v12

    const/4 v13, 0x0

    invoke-static {v11, v13, v5, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    sget-object v11, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v11, v11

    add-int/2addr v6, v11

    .line 90
    nop

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v12

    .line 90
    invoke-static {v11, v12, v5, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    const/16 v11, 0x21

    if-ne v7, v11, :cond_c7

    if-nez v9, :cond_c7

    .line 93
    add-int v11, v6, v10

    .line 94
    invoke-static {v5, v6, v11}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseH265SpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;

    move-result-object v11

    .line 96
    .local v11, "spsData":Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;
    iget v12, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->width:I

    move/from16 v17, v12

    .line 97
    iget v12, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->height:I

    move/from16 v18, v12

    .line 98
    iget v12, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->colorSpace:I

    move/from16 v19, v12

    .line 99
    iget v12, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->colorRange:I

    move/from16 v20, v12

    .line 100
    iget v12, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->colorTransfer:I

    move/from16 v21, v12

    .line 101
    iget v12, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    move/from16 v22, v12

    .line 102
    iget v12, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    iget-boolean v13, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    iget v15, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    move/from16 v30, v2

    .end local v2    # "numberOfArrays":I
    .local v30, "numberOfArrays":I
    iget v2, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    move/from16 v31, v4

    .end local v4    # "csdStartPosition":I
    .local v31, "csdStartPosition":I
    iget-object v4, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->constraintBytes:[I

    move/from16 v16, v7

    .end local v7    # "nalUnitType":I
    .local v16, "nalUnitType":I
    iget v7, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    .line 103
    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v15

    move/from16 v27, v2

    move-object/from16 v28, v4

    move/from16 v29, v7

    invoke-static/range {v24 .. v29}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_cd

    .line 92
    .end local v11    # "spsData":Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;
    .end local v16    # "nalUnitType":I
    .end local v30    # "numberOfArrays":I
    .end local v31    # "csdStartPosition":I
    .restart local v2    # "numberOfArrays":I
    .restart local v4    # "csdStartPosition":I
    .restart local v7    # "nalUnitType":I
    :cond_c7
    move/from16 v30, v2

    move/from16 v31, v4

    move/from16 v16, v7

    .line 111
    .end local v2    # "numberOfArrays":I
    .end local v4    # "csdStartPosition":I
    .end local v7    # "nalUnitType":I
    .restart local v16    # "nalUnitType":I
    .restart local v30    # "numberOfArrays":I
    .restart local v31    # "csdStartPosition":I
    :goto_cd
    add-int/2addr v6, v10

    .line 112
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 81
    .end local v10    # "nalUnitLength":I
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v16

    move/from16 v2, v30

    move/from16 v4, v31

    goto :goto_5f

    .end local v16    # "nalUnitType":I
    .end local v30    # "numberOfArrays":I
    .end local v31    # "csdStartPosition":I
    .restart local v2    # "numberOfArrays":I
    .restart local v4    # "csdStartPosition":I
    .restart local v7    # "nalUnitType":I
    :cond_da
    move/from16 v30, v2

    move/from16 v31, v4

    move/from16 v16, v7

    .line 77
    .end local v2    # "numberOfArrays":I
    .end local v4    # "csdStartPosition":I
    .end local v7    # "nalUnitType":I
    .end local v8    # "numberOfNalUnits":I
    .end local v9    # "j":I
    .restart local v30    # "numberOfArrays":I
    .restart local v31    # "csdStartPosition":I
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_51

    .end local v30    # "numberOfArrays":I
    .end local v31    # "csdStartPosition":I
    .restart local v2    # "numberOfArrays":I
    .restart local v4    # "csdStartPosition":I
    :cond_e4
    move/from16 v30, v2

    move/from16 v31, v4

    .line 117
    .end local v2    # "numberOfArrays":I
    .end local v4    # "csdStartPosition":I
    .end local v14    # "i":I
    .restart local v30    # "numberOfArrays":I
    .restart local v31    # "csdStartPosition":I
    if-nez v3, :cond_ef

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_f3

    :cond_ef
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_f3
    move-object v8, v2

    .line 118
    .local v8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v2, Lcom/google/android/exoplayer2/video/HevcConfig;

    add-int/lit8 v9, v0, 0x1

    move-object v7, v2

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v14, v21

    move/from16 v15, v22

    move-object/from16 v16, v23

    invoke-direct/range {v7 .. v16}, Lcom/google/android/exoplayer2/video/HevcConfig;-><init>(Ljava/util/List;IIIIIIFLjava/lang/String;)V
    :try_end_10a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_10a} :catch_10b

    return-object v2

    .line 128
    .end local v0    # "lengthSizeMinusOne":I
    .end local v3    # "csdLength":I
    .end local v5    # "buffer":[B
    .end local v6    # "bufferPosition":I
    .end local v8    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v17    # "width":I
    .end local v18    # "height":I
    .end local v19    # "colorSpace":I
    .end local v20    # "colorRange":I
    .end local v21    # "colorTransfer":I
    .end local v22    # "pixelWidthHeightRatio":F
    .end local v23    # "codecs":Ljava/lang/String;
    .end local v30    # "numberOfArrays":I
    .end local v31    # "csdStartPosition":I
    :catch_10b
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "Error parsing HEVC config"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    goto :goto_114

    :goto_113
    throw v2

    :goto_114
    goto :goto_113
.end method
