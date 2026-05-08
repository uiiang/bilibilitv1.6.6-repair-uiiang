.class final Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;
.super Ljava/lang/Object;
.source "PgsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueBuilder"
.end annotation


# instance fields
.field private final bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private bitmapX:I

.field private bitmapY:I

.field private final colors:[I

.field private colorsSet:Z

.field private planeHeight:I

.field private planeWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 141
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "x2"    # I

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->parsePaletteSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "x2"    # I

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->parseBitmapSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "x2"    # I

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->parseIdentifierSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method private parseBitmapSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .registers 9
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "sectionLength"    # I

    .line 172
    const/4 v0, 0x4

    if-ge p2, v0, :cond_4

    .line 173
    return-void

    .line 175
    :cond_4
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 176
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 177
    .local v1, "isBaseSection":Z
    :goto_13
    add-int/lit8 p2, p2, -0x4

    .line 179
    if-eqz v1, :cond_37

    .line 180
    const/4 v2, 0x7

    if-ge p2, v2, :cond_1b

    .line 181
    return-void

    .line 183
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    .line 184
    .local v2, "totalLength":I
    if-ge v2, v0, :cond_22

    .line 185
    return-void

    .line 187
    :cond_22
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    .line 188
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/lit8 v3, v2, -0x4

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 190
    add-int/lit8 p2, p2, -0x7

    .line 193
    .end local v2    # "totalLength":I
    :cond_37
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 194
    .local v0, "position":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 195
    .local v2, "limit":I
    if-ge v0, v2, :cond_5d

    if-lez p2, :cond_5d

    .line 196
    sub-int v3, v2, v0

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 197
    .local v3, "bytesToRead":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-virtual {p1, v4, v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 198
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 200
    .end local v3    # "bytesToRead":I
    :cond_5d
    return-void
.end method

.method private parseIdentifierSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .registers 4
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "sectionLength"    # I

    .line 203
    const/16 v0, 0x13

    if-ge p2, v0, :cond_5

    .line 204
    return-void

    .line 206
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    .line 207
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    .line 208
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 209
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    .line 210
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    .line 211
    return-void
.end method

.method private parsePaletteSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .registers 21
    .param p1, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "sectionLength"    # I

    .line 145
    move-object/from16 v0, p0

    rem-int/lit8 v1, p2, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    .line 147
    return-void

    .line 149
    :cond_8
    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 151
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 152
    div-int/lit8 v2, p2, 0x5

    .line 153
    .local v2, "entryCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v2, :cond_93

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 155
    .local v5, "index":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 156
    .local v6, "y":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 157
    .local v7, "cr":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 158
    .local v8, "cb":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 159
    .local v9, "a":I
    int-to-double v10, v6

    add-int/lit8 v12, v7, -0x80

    int-to-double v12, v12

    const-wide v14, 0x3ff66e978d4fdf3bL    # 1.402

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    double-to-int v10, v10

    .line 160
    .local v10, "r":I
    int-to-double v11, v6

    add-int/lit8 v13, v8, -0x80

    int-to-double v13, v13

    const-wide v15, 0x3fd60663c74fb54aL    # 0.34414

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v15

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v11, v13

    add-int/lit8 v13, v7, -0x80

    int-to-double v13, v13

    const-wide v15, 0x3fe6da3c21187e7cL    # 0.71414

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v15

    sub-double/2addr v11, v13

    double-to-int v11, v11

    .line 161
    .local v11, "g":I
    int-to-double v12, v6

    add-int/lit8 v14, v8, -0x80

    int-to-double v14, v14

    const-wide v16, 0x3ffc5a1cac083127L    # 1.772

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v14

    double-to-int v12, v12

    .line 162
    .local v12, "b":I
    iget-object v13, v0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    shl-int/lit8 v14, v9, 0x18

    .line 164
    const/16 v15, 0xff

    invoke-static {v10, v3, v15}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v16

    shl-int/lit8 v16, v16, 0x10

    or-int v14, v14, v16

    .line 165
    invoke-static {v11, v3, v15}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v16

    shl-int/lit8 v16, v16, 0x8

    or-int v14, v14, v16

    .line 166
    invoke-static {v12, v3, v15}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v15

    or-int/2addr v14, v15

    aput v14, v13, v5

    .line 153
    .end local v5    # "index":I
    .end local v6    # "y":I
    .end local v7    # "cr":I
    .end local v8    # "cb":I
    .end local v9    # "a":I
    .end local v10    # "r":I
    .end local v11    # "g":I
    .end local v12    # "b":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 168
    .end local v4    # "i":I
    :cond_93
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    .line 169
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/text/Cue;
    .registers 9

    .line 215
    iget v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    if-eqz v0, :cond_ce

    iget v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    if-eqz v0, :cond_ce

    iget v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    if-eqz v0, :cond_ce

    iget v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 219
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 220
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    if-ne v0, v1, :cond_ce

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    if-nez v0, :cond_2c

    goto/16 :goto_ce

    .line 225
    :cond_2c
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 226
    iget v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iget v2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    mul-int v0, v0, v2

    new-array v0, v0, [I

    .line 227
    .local v0, "argbBitmapData":[I
    const/4 v2, 0x0

    .line 228
    .local v2, "argbBitmapDataIndex":I
    :goto_3b
    array-length v3, v0

    if-ge v2, v3, :cond_82

    .line 229
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 230
    .local v3, "colorIndex":I
    if-eqz v3, :cond_50

    .line 231
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "argbBitmapDataIndex":I
    .local v4, "argbBitmapDataIndex":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    aget v5, v5, v3

    aput v5, v0, v2

    move v2, v4

    goto :goto_81

    .line 233
    .end local v4    # "argbBitmapDataIndex":I
    .restart local v2    # "argbBitmapDataIndex":I
    :cond_50
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 234
    .local v4, "switchBits":I
    if-eqz v4, :cond_81

    .line 236
    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_5f

    .line 237
    and-int/lit8 v5, v4, 0x3f

    goto :goto_6a

    .line 238
    :cond_5f
    and-int/lit8 v5, v4, 0x3f

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    or-int/2addr v5, v6

    :goto_6a
    nop

    .line 239
    .local v5, "runLength":I
    and-int/lit16 v6, v4, 0x80

    if-nez v6, :cond_71

    const/4 v6, 0x0

    goto :goto_7b

    :cond_71
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    iget-object v7, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    aget v6, v6, v7

    .line 240
    .local v6, "color":I
    :goto_7b
    add-int v7, v2, v5

    invoke-static {v0, v2, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 242
    add-int/2addr v2, v5

    .line 245
    .end local v3    # "colorIndex":I
    .end local v4    # "switchBits":I
    .end local v5    # "runLength":I
    .end local v6    # "color":I
    :cond_81
    :goto_81
    goto :goto_3b

    .line 246
    :cond_82
    iget v3, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iget v4, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 247
    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 249
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    .line 250
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 251
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v4

    .line 252
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 253
    invoke-virtual {v4, v5, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v4

    .line 254
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    iget v4, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 255
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    iget v4, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 256
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setBitmapHeight(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v1

    .line 249
    return-object v1

    .line 222
    .end local v0    # "argbBitmapData":[I
    .end local v2    # "argbBitmapDataIndex":I
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_ce
    :goto_ce
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()V
    .registers 3

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    .line 262
    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    .line 263
    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    .line 264
    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    .line 265
    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    .line 266
    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    .line 267
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 268
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    .line 269
    return-void
.end method
