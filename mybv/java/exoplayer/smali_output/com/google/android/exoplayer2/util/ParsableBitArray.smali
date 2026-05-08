.class public final Lcom/google/android/exoplayer2/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 45
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 53
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 54
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 64
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    .line 65
    return-void
.end method

.method private assertValidOffset()V
    .registers 3

    .line 349
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_10

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_e

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 351
    return-void
.end method


# virtual methods
.method public bitsLeft()I
    .registers 3

    .line 102
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public byteAlign()V
    .registers 2

    .line 248
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_5

    .line 249
    return-void

    .line 251
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 252
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 253
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 254
    return-void
.end method

.method public getBytePosition()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 117
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    return v0
.end method

.method public getPosition()I
    .registers 3

    .line 107
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public putInt(II)V
    .registers 14
    .param p1, "value"    # I
    .param p2, "numBits"    # I

    .line 320
    move v0, p2

    .line 321
    .local v0, "remainingBitsToRead":I
    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge p2, v1, :cond_a

    .line 322
    shl-int v1, v2, p2

    sub-int/2addr v1, v2

    and-int/2addr p1, v1

    .line 324
    :cond_a
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/16 v3, 0x8

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 325
    .local v1, "firstByteReadSize":I
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v5, v4, 0x8

    sub-int/2addr v5, v1

    .line 326
    .local v5, "firstByteRightPaddingSize":I
    const v6, 0xff00

    shr-int v4, v6, v4

    shl-int v6, v2, v5

    sub-int/2addr v6, v2

    or-int/2addr v4, v6

    .line 327
    .local v4, "firstByteBitmask":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v8, v6, v7

    and-int/2addr v8, v4

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 328
    sub-int v9, p2, v1

    ushr-int v9, p1, v9

    .line 329
    .local v9, "firstByteInputBits":I
    shl-int v10, v9, v5

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 331
    sub-int/2addr v0, v1

    .line 332
    add-int/2addr v7, v2

    .line 333
    .local v7, "currentByteIndex":I
    :goto_38
    if-le v0, v3, :cond_49

    .line 334
    iget-object v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "currentByteIndex":I
    .local v8, "currentByteIndex":I
    add-int/lit8 v10, v0, -0x8

    ushr-int v10, p1, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v7

    .line 335
    add-int/lit8 v0, v0, -0x8

    move v7, v8

    goto :goto_38

    .line 337
    .end local v8    # "currentByteIndex":I
    .restart local v7    # "currentByteIndex":I
    :cond_49
    rsub-int/lit8 v3, v0, 0x8

    .line 338
    .local v3, "lastByteRightPaddingSize":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    aget-byte v8, v6, v7

    shl-int v10, v2, v3

    sub-int/2addr v10, v2

    and-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 340
    shl-int v10, v2, v0

    sub-int/2addr v10, v2

    and-int v2, p1, v10

    .line 341
    .local v2, "lastByteInput":I
    shl-int v10, v2, v3

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 343
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 344
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 345
    return-void
.end method

.method public readBit()Z
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 163
    .local v0, "returnValue":Z
    :goto_11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 164
    return v0
.end method

.method public readBits(I)I
    .registers 9
    .param p1, "numBits"    # I

    .line 174
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 175
    return v0

    .line 177
    :cond_4
    const/4 v1, 0x0

    .line 178
    .local v1, "returnValue":I
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 179
    :goto_a
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_24

    .line 180
    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 181
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_a

    .line 183
    :cond_24
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    .line 184
    rsub-int/lit8 v4, p1, 0x20

    const/4 v6, -0x1

    ushr-int v4, v6, v4

    and-int/2addr v1, v4

    .line 185
    if-ne v2, v3, :cond_3e

    .line 186
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 187
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 189
    :cond_3e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 190
    return v1
.end method

.method public readBits([BII)V
    .registers 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBits"    # I

    .line 217
    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    .line 218
    .local v0, "to":I
    move v1, p2

    .local v1, "i":I
    :goto_4
    const/16 v2, 0xff

    const/16 v3, 0x8

    if-ge v1, v0, :cond_28

    .line 219
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v5, v4, v5

    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 220
    aget-byte v5, p1, v1

    aget-byte v4, v4, v6

    and-int/2addr v2, v4

    sub-int/2addr v3, v7

    shr-int/2addr v2, v3

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 223
    .end local v1    # "i":I
    :cond_28
    and-int/lit8 v1, p3, 0x7

    .line 224
    .local v1, "bitsLeft":I
    if-nez v1, :cond_2d

    .line 225
    return-void

    .line 228
    :cond_2d
    aget-byte v4, p1, v0

    shr-int v5, v2, v1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 229
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int v5, v4, v1

    if-le v5, v3, :cond_50

    .line 231
    aget-byte v5, p1, v0

    iget-object v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v2

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    .line 232
    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 234
    :cond_50
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 235
    iget-object v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v5, v5, v6

    and-int/2addr v2, v5

    rsub-int/lit8 v5, v4, 0x8

    shr-int/2addr v2, v5

    .line 236
    .local v2, "lastDataByteTrailingBits":I
    aget-byte v5, p1, v0

    rsub-int/lit8 v7, v1, 0x8

    shl-int v7, v2, v7

    int-to-byte v7, v7

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    .line 237
    if-ne v4, v3, :cond_73

    .line 238
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 239
    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 241
    :cond_73
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 242
    return-void
.end method

.method public readBitsToLong(I)J
    .registers 4
    .param p1, "numBits"    # I

    .line 200
    const/16 v0, 0x20

    if-gt p1, v0, :cond_d

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0

    .line 203
    :cond_d
    add-int/lit8 v1, p1, -0x20

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->toLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public readBytes([BII)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 267
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 270
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 271
    return-void
.end method

.method public readBytesAsString(I)Ljava/lang/String;
    .registers 3
    .param p1, "length"    # I

    .line 293
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 305
    new-array v0, p1, [B

    .line 306
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    .line 307
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public reset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 4
    .param p1, "parsableByteArray"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 84
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 85
    return-void
.end method

.method public reset([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 73
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 74
    return-void
.end method

.method public reset([BI)V
    .registers 4
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 96
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 97
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    .line 98
    return-void
.end method

.method public setPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .line 126
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 127
    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 128
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 129
    return-void
.end method

.method public skipBit()V
    .registers 3

    .line 133
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 137
    :cond_13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 138
    return-void
.end method

.method public skipBits(I)V
    .registers 6
    .param p1, "numBits"    # I

    .line 146
    div-int/lit8 v0, p1, 0x8

    .line 147
    .local v0, "numBytes":I
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 148
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    mul-int/lit8 v3, v0, 0x8

    sub-int v3, p1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 149
    const/4 v3, 0x7

    if-le v2, v3, :cond_1b

    .line 150
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 151
    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 153
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 154
    return-void
.end method

.method public skipBytes(I)V
    .registers 3
    .param p1, "length"    # I

    .line 280
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 281
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 282
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 283
    return-void
.end method
