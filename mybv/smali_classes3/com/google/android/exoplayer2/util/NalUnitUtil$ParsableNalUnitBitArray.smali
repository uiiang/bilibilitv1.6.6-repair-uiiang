.class final Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParsableNalUnitBitArray"
.end annotation


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field private final data:[B

.field private final limit:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->data:[B

    .line 319
    iput p2, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->byteOffset:I

    .line 320
    iput p3, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->limit:I

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->bitOffset:I

    .line 322
    return-void
.end method

.method private skipEmulationPreventionByte()V
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->limit:I

    if-ge v0, v1, :cond_2b

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    if-nez v0, :cond_2b

    .line 370
    iget v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->byteOffset:I

    .line 372
    :cond_2b
    return-void
.end method


# virtual methods
.method public readBit()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 341
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v1, v1, v2

    iget v2, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->bitOffset:I

    rsub-int/lit8 v2, v2, 0x7

    shr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_14

    .line 342
    :goto_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipBit()V

    .line 343
    return v0

    .line 341
    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public readBits(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 347
    move v2, v1

    move v3, v1

    .line 348
    :goto_3
    if-ge v2, p1, :cond_15

    .line 349
    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_e
    or-int/2addr v3, v0

    .line 348
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_13
    move v0, v1

    .line 349
    goto :goto_e

    .line 351
    :cond_15
    return v3
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 364
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_f

    const/4 v0, -0x1

    :goto_9
    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public readUnsignedExpGolombCodedInt()I
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_a

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    :cond_a
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public skipBit()V
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->bitOffset:I

    .line 327
    iget v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->byteOffset:I

    .line 328
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipEmulationPreventionByte()V

    .line 332
    :goto_11
    return-void

    .line 330
    :cond_12
    iget v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->bitOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->bitOffset:I

    goto :goto_11
.end method

.method public skipBits(I)V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_9

    .line 336
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$ParsableNalUnitBitArray;->skipBit()V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_9
    return-void
.end method
