.class public final Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
.super Ljava/lang/Object;
.source "ParsableNalUnitBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field private data:[B

.field private limit:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iput p3, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->limit:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    return-void
.end method

.method private skipEmulationPreventionByte()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->limit:I

    if-ge v0, v1, :cond_2b

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    if-nez v0, :cond_2b

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    :cond_2b
    return-void
.end method


# virtual methods
.method public reset([BII)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iput p3, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->limit:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    return-void
.end method

.method public canReadBits(I)Z
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    mul-int/lit8 v1, p1, 0x8

    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->limit:I

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public canReadExpGolombCodedNum()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->limit:I

    if-lt v2, v3, :cond_f

    const/4 v2, 0x0

    return v2

    :cond_f
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x8

    aget-byte v2, v2, v3

    rsub-int/lit8 v3, v1, 0x7

    rem-int/lit8 v3, v3, 0x8

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2d

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2d
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->limit:I

    if-ge v2, v3, :cond_3a

    const/4 v2, 0x1

    return v2

    :cond_3a
    const/4 v2, 0x0

    return v2
.end method

.method public readBit()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v1, v1, v2

    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    rsub-int/lit8 v2, v2, 0x7

    shr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_14

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public readBits(I)I
    .locals 4

    const/4 v1, 0x0

    move v2, v1

    move v3, v1

    :goto_3
    if-ge v2, p1, :cond_15

    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_e
    or-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_13
    move v0, v1

    goto :goto_e

    :cond_15
    return v3
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

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

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public skipBit()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipEmulationPreventionByte()V

    :goto_11
    return-void

    :cond_12
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    goto :goto_11
.end method

.method public skipBits(I)V
    .locals 1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method
