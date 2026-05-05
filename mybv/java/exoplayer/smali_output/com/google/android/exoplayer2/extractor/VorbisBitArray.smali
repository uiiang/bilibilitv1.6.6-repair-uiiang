.class public final Lcom/google/android/exoplayer2/extractor/VorbisBitArray;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bitOffset:I

.field private final byteLimit:I

.field private byteOffset:I

.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->data:[B

    .line 49
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteLimit:I

    .line 50
    return-void
.end method

.method private assertValidOffset()V
    .registers 3

    .line 127
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    if-ltz v0, :cond_10

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteLimit:I

    if-lt v0, v1, :cond_e

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 129
    return-void
.end method


# virtual methods
.method public bitsLeft()I
    .registers 3

    .line 122
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteLimit:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosition()I
    .registers 3

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 65
    .local v0, "returnValue":Z
    :goto_12
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 66
    return v0
.end method

.method public readBits(I)I
    .registers 8
    .param p1, "numBits"    # I

    .line 76
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    .line 77
    .local v0, "tempByteOffset":I
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 78
    .local v1, "bitsRead":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->data:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tempByteOffset":I
    .local v3, "tempByteOffset":I
    aget-byte v0, v2, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v4

    rsub-int/lit8 v4, v1, 0x8

    shr-int v4, v2, v4

    and-int/2addr v0, v4

    .line 79
    .local v0, "returnValue":I
    :goto_1b
    if-ge v1, p1, :cond_2a

    .line 80
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->data:[B

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "tempByteOffset":I
    .local v5, "tempByteOffset":I
    aget-byte v3, v4, v3

    and-int/2addr v3, v2

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    .line 81
    add-int/lit8 v1, v1, 0x8

    move v3, v5

    goto :goto_1b

    .line 83
    .end local v5    # "tempByteOffset":I
    .restart local v3    # "tempByteOffset":I
    :cond_2a
    rsub-int/lit8 v2, p1, 0x20

    const/4 v4, -0x1

    ushr-int v2, v4, v2

    and-int/2addr v0, v2

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 85
    return v0
.end method

.method public reset()V
    .registers 2

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    .line 55
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    .line 56
    return-void
.end method

.method public setPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .line 115
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    .line 116
    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    .line 117
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->assertValidOffset()V

    .line 118
    return-void
.end method

.method public skipBits(I)V
    .registers 6
    .param p1, "numBits"    # I

    .line 94
    div-int/lit8 v0, p1, 0x8

    .line 95
    .local v0, "numBytes":I
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    .line 96
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    mul-int/lit8 v3, v0, 0x8

    sub-int v3, p1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    .line 97
    const/4 v3, 0x7

    if-le v2, v3, :cond_1b

    .line 98
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    .line 99
    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    .line 101
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->assertValidOffset()V

    .line 102
    return-void
.end method
