.class public final Lcom/google/android/exoplayer2/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;,
        Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;,
        Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;,
        Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field public static final NAL_START_CODE:[B

.field public static final NAL_UNIT_TYPE_AUD:I = 0x9

.field public static final NAL_UNIT_TYPE_IDR:I = 0x5

.field public static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field public static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2

.field public static final NAL_UNIT_TYPE_PPS:I = 0x8

.field public static final NAL_UNIT_TYPE_SEI:I = 0x6

.field public static final NAL_UNIT_TYPE_SPS:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    .line 19
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_18

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    return-void

    .line 7
    :array_12
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 19
    :array_18
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    aput-boolean v1, p0, v1

    .line 99
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 100
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 101
    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 146
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 147
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 149
    :goto_9
    add-int/lit8 v3, v2, -0x4

    if-ge v0, v3, :cond_40

    .line 150
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-nez v3, :cond_3d

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-nez v3, :cond_3d

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-nez v3, :cond_3d

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3d

    .line 151
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    .line 152
    const/4 v4, 0x7

    if-ne v3, v4, :cond_3d

    .line 158
    :goto_37
    if-eq v0, v1, :cond_3c

    .line 159
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    :cond_3c
    return-void

    .line 149
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_40
    move v0, v1

    goto :goto_37
.end method

.method public static findNalUnit([BII[Z)I
    .locals 4

    .prologue
    .line 104
    const/4 v1, -0x1

    move v0, p1

    .line 105
    :goto_2
    if-ge v0, p2, :cond_23

    .line 106
    aget-byte v2, p0, v0

    if-nez v2, :cond_20

    add-int/lit8 v2, v0, 0x3

    if-ge v2, p2, :cond_20

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    if-nez v2, :cond_20

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    if-nez v2, :cond_20

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 111
    :goto_1f
    return v0

    .line 105
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_23
    move v0, v1

    goto :goto_1f
.end method

.method public static getNalUnitType([BI)I
    .locals 1

    .prologue
    .line 115
    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    .line 116
    return v0
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    if-nez p0, :cond_4

    .line 142
    :cond_3
    :goto_3
    return v0

    .line 138
    :cond_4
    and-int/lit8 v1, p1, 0x1f

    .line 139
    const-string v2, "video/avc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "video/hevc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    :cond_16
    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static parseH265SpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;
    .locals 20

    .prologue
    .line 248
    new-instance v6, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v6, v0, v1, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;-><init>([BII)V

    .line 249
    const/4 v3, 0x4

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipBits(I)V

    .line 250
    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 251
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    .line 252
    const/4 v3, 0x5

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    .line 253
    const/4 v10, 0x0

    .line 254
    const/4 v3, 0x0

    :goto_1f
    const/16 v4, 0x20

    if-ge v3, v4, :cond_2f

    .line 255
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 256
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    or-int/2addr v10, v4

    .line 254
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 259
    :cond_2f
    const/4 v3, 0x6

    new-array v11, v3, [I

    .line 260
    const/4 v3, 0x0

    :goto_33
    array-length v4, v11

    if-ge v3, v4, :cond_41

    .line 261
    const/16 v4, 0x8

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    aput v4, v11, v3

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 263
    :cond_41
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 266
    const/high16 v3, 0x3f800000    # 1.0f

    .line 267
    const/4 v13, -0x1

    .line 268
    const/4 v14, -0x1

    .line 269
    const/4 v15, -0x1

    .line 270
    const/4 v4, 0x3

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 271
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipBit()V

    .line 272
    if-lez v5, :cond_70

    .line 273
    const/4 v4, 0x0

    :goto_57
    if-ge v4, v5, :cond_70

    .line 274
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipBits(I)V

    .line 275
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_6d

    .line 276
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipBits(I)V

    .line 273
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 280
    :cond_70
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 281
    const/4 v5, 0x3

    if-ne v4, v5, :cond_7a

    .line 282
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipBit()V

    .line 284
    :cond_7a
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 285
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 286
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_a0

    .line 287
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v16

    .line 288
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v17

    .line 289
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v18

    .line 290
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v19

    .line 291
    add-int v16, v16, v17

    sub-int v4, v4, v16

    .line 292
    add-int v16, v18, v19

    sub-int v5, v5, v16

    .line 294
    :cond_a0
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_e1

    .line 295
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v16

    .line 296
    const/16 v17, 0xff

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d4

    .line 297
    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v16

    .line 298
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 299
    if-eqz v6, :cond_cd

    .line 300
    move/from16 v0, v16

    int-to-float v3, v0

    int-to-float v6, v6

    div-float/2addr v3, v6

    :cond_cd
    move v6, v3

    .line 306
    :goto_ce
    new-instance v3, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;

    invoke-direct/range {v3 .. v15}, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;-><init>(IIFIZII[IIIII)V

    return-object v3

    .line 302
    :cond_d4
    sget-object v6, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v6, v6

    move/from16 v0, v16

    if-ge v0, v6, :cond_e1

    .line 303
    sget-object v3, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v3, v3, v16

    move v6, v3

    goto :goto_ce

    :cond_e1
    move v6, v3

    goto :goto_ce
.end method

.method public static parsePpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;-><init>([BII)V

    .line 242
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 243
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    .line 244
    new-instance v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;-><init>(II)V

    return-object v2
.end method

.method public static parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .locals 17

    .prologue
    .line 164
    new-instance v6, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v6, v0, v1, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;-><init>([BII)V

    .line 165
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 166
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 167
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    .line 168
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 171
    const/high16 v3, 0x3f800000    # 1.0f

    .line 172
    const/4 v10, -0x1

    .line 173
    const/4 v11, -0x1

    .line 174
    const/4 v12, -0x1

    .line 175
    const/16 v4, 0x64

    if-eq v7, v4, :cond_55

    const/16 v4, 0x6e

    if-eq v7, v4, :cond_55

    const/16 v4, 0x7a

    if-eq v7, v4, :cond_55

    const/16 v4, 0xf4

    if-eq v7, v4, :cond_55

    const/16 v4, 0x2c

    if-eq v7, v4, :cond_55

    const/16 v4, 0x53

    if-eq v7, v4, :cond_55

    const/16 v4, 0x56

    if-eq v7, v4, :cond_55

    const/16 v4, 0x76

    if-eq v7, v4, :cond_55

    const/16 v4, 0x80

    if-eq v7, v4, :cond_55

    const/16 v4, 0x8a

    if-eq v7, v4, :cond_55

    const/16 v4, 0x8b

    if-eq v7, v4, :cond_55

    const/16 v4, 0x86

    if-ne v7, v4, :cond_7c

    .line 178
    :cond_55
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 179
    const/4 v5, 0x3

    if-ne v4, v5, :cond_5f

    .line 180
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipBit()V

    .line 182
    :cond_5f
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 183
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 184
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 185
    const/4 v4, 0x0

    :goto_6c
    const/16 v5, 0x8

    if-ge v4, v5, :cond_7c

    .line 186
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 187
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 185
    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 192
    :cond_7c
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 193
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 194
    if-nez v4, :cond_f1

    .line 195
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 205
    :cond_88
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 206
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipBit()V

    .line 207
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 208
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 209
    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x10

    .line 210
    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x10

    .line 211
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    .line 212
    if-nez v13, :cond_a7

    .line 213
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipBit()V

    .line 215
    :cond_a7
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipBit()V

    .line 216
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-eqz v13, :cond_c9

    .line 217
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v13

    .line 218
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v14

    .line 219
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v15

    .line 220
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v16

    .line 221
    add-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v4, v13

    .line 222
    add-int v13, v15, v16

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v5, v13

    .line 224
    :cond_c9
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-eqz v13, :cond_115

    .line 225
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v13

    .line 226
    const/16 v14, 0xff

    if-ne v13, v14, :cond_10a

    .line 227
    const/16 v13, 0x10

    invoke-virtual {v6, v13}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v13

    .line 228
    const/16 v14, 0x10

    invoke-virtual {v6, v14}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 229
    if-eqz v6, :cond_ea

    .line 230
    int-to-float v3, v13

    int-to-float v6, v6

    div-float/2addr v3, v6

    :cond_ea
    move v6, v3

    .line 236
    :goto_eb
    new-instance v3, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;-><init>(IIFIIIIII)V

    return-object v3

    .line 196
    :cond_f1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_88

    .line 197
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipBit()V

    .line 198
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 199
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 200
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 201
    const/4 v4, 0x0

    :goto_102
    if-ge v4, v5, :cond_88

    .line 202
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_102

    .line 232
    :cond_10a
    sget-object v6, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v6, v6

    if-ge v13, v6, :cond_115

    .line 233
    sget-object v3, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v3, v3, v13

    move v6, v3

    goto :goto_eb

    :cond_115
    move v6, v3

    goto :goto_eb
.end method

.method public static unescapeStream([BI)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 120
    move v0, v1

    move v3, v1

    .line 122
    :goto_3
    if-ge v0, p1, :cond_31

    .line 123
    add-int/lit8 v2, v0, 0x2

    if-ge v2, p1, :cond_26

    aget-byte v2, p0, v0

    if-nez v2, :cond_26

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    if-nez v2, :cond_26

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_26

    .line 124
    add-int/lit8 v4, v3, 0x1

    aput-byte v1, p0, v3

    .line 125
    add-int/lit8 v2, v4, 0x1

    aput-byte v1, p0, v4

    .line 126
    add-int/lit8 v0, v0, 0x3

    move v3, v2

    goto :goto_3

    .line 128
    :cond_26
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    aput-byte v0, p0, v3

    move v0, v2

    move v3, v4

    goto :goto_3

    .line 131
    :cond_31
    return v3
.end method
