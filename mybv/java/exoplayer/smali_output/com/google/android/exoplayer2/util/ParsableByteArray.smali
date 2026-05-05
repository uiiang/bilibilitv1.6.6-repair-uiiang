.class public final Lcom/google/android/exoplayer2/util/ParsableByteArray;
.super Ljava/lang/Object;
.source "ParsableByteArray.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CR_AND_LF:[C

.field private static final LF:[C

.field private static final SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:[B

.field private limit:I

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_24

    sput-object v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->CR_AND_LF:[C

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->LF:[C

    .line 41
    sget-object v0, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    sget-object v3, Lcom/google/common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    sget-object v4, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 42
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;

    .line 41
    return-void

    nop

    :array_24
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "limit"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 62
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 63
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 72
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 73
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 83
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 84
    return-void
.end method

.method private findNextLineTerminator(Ljava/nio/charset/Charset;)I
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 632
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_45

    .line 634
    :cond_11
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 635
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 636
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_43

    .line 639
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_43
    :goto_43
    const/4 v0, 0x2

    .local v0, "stride":I
    goto :goto_46

    .line 633
    .end local v0    # "stride":I
    :cond_45
    :goto_45
    const/4 v0, 0x1

    .line 641
    .restart local v0    # "stride":I
    :goto_46
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .local v1, "i":I
    :goto_48
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    add-int/lit8 v3, v0, -0x1

    sub-int v3, v2, v3

    if-ge v1, v3, :cond_a7

    .line 642
    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    sget-object v2, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    :cond_60
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v1

    .line 643
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->isLinebreak(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 644
    return v1

    .line 645
    :cond_6b
    sget-object v2, Lcom/google/common/base/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    :cond_7b
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v3, v2, v1

    if-nez v3, :cond_8c

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v3

    .line 647
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->isLinebreak(I)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 648
    return v1

    .line 649
    :cond_8c
    sget-object v2, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_a5

    aget-byte v2, v2, v1

    .line 651
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->isLinebreak(I)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 652
    return v1

    .line 641
    :cond_a5
    add-int/2addr v1, v0

    goto :goto_48

    .line 655
    .end local v1    # "i":I
    :cond_a7
    return v2
.end method

.method private peekCharacterAndSize(Ljava/nio/charset/Charset;)I
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 697
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    sget-object v0, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lt v0, v1, :cond_29

    .line 698
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Chars;->checkedCast(J)C

    move-result v0

    int-to-byte v0, v0

    .line 699
    .local v0, "character":B
    const/4 v1, 0x1

    .local v1, "characterSize":S
    goto :goto_6e

    .line 700
    .end local v0    # "character":B
    .end local v1    # "characterSize":S
    :cond_29
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_3a

    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 701
    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lt v0, v2, :cond_50

    .line 702
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v2

    add-int/2addr v2, v1

    aget-byte v0, v0, v2

    invoke-static {v3, v0}, Lcom/google/common/primitives/Chars;->fromBytes(BB)C

    move-result v0

    int-to-byte v0, v0

    .line 703
    .restart local v0    # "character":B
    const/4 v1, 0x2

    .restart local v1    # "characterSize":S
    goto :goto_6e

    .line 704
    .end local v0    # "character":B
    .end local v1    # "characterSize":S
    :cond_50
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lt v0, v2, :cond_77

    .line 705
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    aget-byte v0, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/primitives/Chars;->fromBytes(BB)C

    move-result v0

    int-to-byte v0, v0

    .line 706
    .restart local v0    # "character":B
    const/4 v1, 0x2

    .line 710
    .restart local v1    # "characterSize":S
    :goto_6e
    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/Chars;->checkedCast(J)C

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v1

    return v2

    .line 708
    .end local v0    # "character":B
    .end local v1    # "characterSize":S
    :cond_77
    const/4 v0, 0x0

    return v0
.end method

.method private readCharacterIfInList(Ljava/nio/charset/Charset;[C)C
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "chars"    # [C

    .line 674
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->peekCharacterAndSize(Ljava/nio/charset/Charset;)I

    move-result v0

    .line 676
    .local v0, "characterAndSize":I
    if-eqz v0, :cond_1c

    shr-int/lit8 v1, v0, 0x10

    int-to-char v1, v1

    invoke-static {p2, v1}, Lcom/google/common/primitives/Chars;->contains([CC)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 677
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const v2, 0xffff

    and-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 678
    shr-int/lit8 v1, v0, 0x10

    int-to-char v1, v1

    return v1

    .line 680
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method private skipLineTerminator(Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 659
    sget-object v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->CR_AND_LF:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readCharacterIfInList(Ljava/nio/charset/Charset;[C)C

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_f

    .line 660
    sget-object v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->LF:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readCharacterIfInList(Ljava/nio/charset/Charset;[C)C

    .line 662
    :cond_f
    return-void
.end method


# virtual methods
.method public bytesLeft()I
    .registers 3

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v0, v0

    return v0
.end method

.method public ensureCapacity(I)V
    .registers 3
    .param p1, "requiredCapacity"    # I

    .line 128
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    if-le p1, v0, :cond_e

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 131
    :cond_e
    return-void
.end method

.method public getData()[B
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 155
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    return v0
.end method

.method public limit()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    return v0
.end method

.method public peekChar()C
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-char v0, v0

    return v0
.end method

.method public peekChar(Ljava/nio/charset/Charset;)C
    .registers 5
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 258
    sget-object v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;

    .line 259
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->peekCharacterAndSize(Ljava/nio/charset/Charset;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    int-to-char v0, v0

    return v0
.end method

.method public peekUnsignedByte()I
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V
    .registers 5
    .param p1, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p2, "length"    # I

    .line 207
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 208
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 209
    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;I)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 233
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 234
    return-void
.end method

.method public readBytes([BII)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 222
    return-void
.end method

.method public readDelimiterTerminatedString(C)Ljava/lang/String;
    .registers 6
    .param p1, "delimiter"    # C

    .line 508
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_8

    .line 509
    const/4 v0, 0x0

    return-object v0

    .line 511
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 512
    .local v0, "stringLimit":I
    :goto_a
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v0

    if-eq v1, p1, :cond_17

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 515
    :cond_17
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "string":Ljava/lang/String;
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 517
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    if-ge v0, v2, :cond_2b

    .line 518
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 520
    :cond_2b
    return-object v1
.end method

.method public readDouble()D
    .registers 3

    .line 442
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2

    .line 437
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .registers 5

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readInt24()I
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 2

    .line 530
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 551
    sget-object v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;

    .line 552
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 553
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_24

    .line 554
    const/4 v0, 0x0

    return-object v0

    .line 556
    :cond_24
    sget-object v0, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 557
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    .line 559
    :cond_2f
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->findNextLineTerminator(Ljava/nio/charset/Charset;)I

    move-result v0

    .line 560
    .local v0, "lineLimit":I
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "line":Ljava/lang/String;
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    if-ne v2, v3, :cond_42

    .line 562
    return-object v1

    .line 564
    :cond_42
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipLineTerminator(Ljava/nio/charset/Charset;)V

    .line 565
    return-object v1
.end method

.method public readLittleEndianInt()I
    .registers 5

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianInt24()I
    .registers 5

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianLong()J
    .registers 10

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x20

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x30

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readLittleEndianShort()S
    .registers 5

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readLittleEndianUnsignedInt()J
    .registers 10

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readLittleEndianUnsignedInt24()I
    .registers 5

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianUnsignedIntToInt()I
    .registers 5

    .line 415
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    .line 416
    .local v0, "result":I
    if-ltz v0, :cond_7

    .line 419
    return v0

    .line 417
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readLittleEndianUnsignedShort()I
    .registers 5

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public readLong()J
    .registers 10

    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x38

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x18

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readNullTerminatedString()Ljava/lang/String;
    .registers 2

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readDelimiterTerminatedString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readNullTerminatedString(I)Ljava/lang/String;
    .registers 6
    .param p1, "length"    # I

    .line 476
    if-nez p1, :cond_5

    .line 477
    const-string v0, ""

    return-object v0

    .line 479
    :cond_5
    move v0, p1

    .line 480
    .local v0, "stringLength":I
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    .line 481
    .local v2, "lastIndex":I
    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    if-ge v2, v3, :cond_18

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v2

    if-nez v3, :cond_18

    .line 482
    add-int/lit8 v0, v0, -0x1

    .line 484
    :cond_18
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v3, v1, v0}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "result":Ljava/lang/String;
    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 486
    return-object v1
.end method

.method public readShort()S
    .registers 5

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .registers 3
    .param p1, "length"    # I

    .line 452
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 463
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 464
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 465
    return-object v0
.end method

.method public readSynchSafeInt()I
    .registers 7

    .line 388
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 389
    .local v0, "b1":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 390
    .local v1, "b2":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 391
    .local v2, "b3":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 392
    .local v3, "b4":I
    shl-int/lit8 v4, v0, 0x15

    shl-int/lit8 v5, v1, 0xe

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x7

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method

.method public readUnsignedByte()I
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedFixedPoint1616()I
    .registers 5

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 375
    .local v0, "result":I
    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 376
    return v0
.end method

.method public readUnsignedInt()J
    .registers 10

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readUnsignedInt24()I
    .registers 5

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUnsignedIntToInt()I
    .registers 5

    .line 401
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 402
    .local v0, "result":I
    if-ltz v0, :cond_7

    .line 405
    return v0

    .line 403
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readUnsignedLongToLong()J
    .registers 6

    .line 428
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    .line 429
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_b

    .line 432
    return-wide v0

    .line 430
    :cond_b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Top bit not zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readUnsignedShort()I
    .registers 5

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUtf8EncodedLong()J
    .registers 12

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "length":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    int-to-long v1, v1

    .line 578
    .local v1, "value":J
    const/4 v3, 0x7

    .local v3, "j":I
    :goto_9
    const/4 v4, 0x6

    if-ltz v3, :cond_29

    .line 579
    const/4 v5, 0x1

    shl-int v6, v5, v3

    int-to-long v6, v6

    and-long/2addr v6, v1

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_26

    .line 580
    if-ge v3, v4, :cond_21

    .line 581
    shl-int v6, v5, v3

    sub-int/2addr v6, v5

    int-to-long v5, v6

    and-long/2addr v1, v5

    .line 582
    rsub-int/lit8 v0, v3, 0x7

    goto :goto_29

    .line 583
    :cond_21
    const/4 v5, 0x7

    if-ne v3, v5, :cond_29

    .line 584
    const/4 v0, 0x1

    goto :goto_29

    .line 578
    :cond_26
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 589
    .end local v3    # "j":I
    :cond_29
    :goto_29
    if-eqz v0, :cond_64

    .line 592
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2c
    if-ge v3, v0, :cond_5e

    .line 593
    iget-object v5, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v6, v3

    aget-byte v5, v5, v6

    .line 594
    .local v5, "x":I
    and-int/lit16 v6, v5, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_45

    .line 597
    shl-long v6, v1, v4

    and-int/lit8 v8, v5, 0x3f

    int-to-long v8, v8

    or-long v1, v6, v8

    .line 592
    .end local v5    # "x":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 595
    .restart local v5    # "x":I
    :cond_45
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 599
    .end local v3    # "i":I
    .end local v5    # "x":I
    :cond_5e
    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 600
    return-wide v1

    .line 590
    :cond_64
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto :goto_7e

    :goto_7d
    throw v3

    :goto_7e
    goto :goto_7d
.end method

.method public readUtfCharsetFromBom()Ljava/nio/charset/Charset;
    .registers 8

    .line 609
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v2

    const/16 v4, -0x11

    if-ne v3, v4, :cond_27

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    const/16 v4, -0x45

    if-ne v3, v4, :cond_27

    add-int/lit8 v3, v2, 0x2

    aget-byte v0, v0, v3

    const/16 v3, -0x41

    if-ne v0, v3, :cond_27

    .line 613
    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 614
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    .line 615
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_52

    .line 616
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v2

    const/4 v4, -0x1

    const/4 v5, -0x2

    if-ne v3, v5, :cond_44

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v0, v6

    if-ne v6, v4, :cond_44

    .line 617
    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 618
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    return-object v0

    .line 619
    :cond_44
    if-ne v3, v4, :cond_52

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v3

    if-ne v0, v5, :cond_52

    .line 620
    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 621
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    return-object v0

    .line 624
    :cond_52
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset(I)V
    .registers 3
    .param p1, "limit"    # I

    .line 93
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_9

    new-array v0, p1, [B

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    :goto_b
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 94
    return-void
.end method

.method public reset([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 103
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 104
    return-void
.end method

.method public reset([BI)V
    .registers 4
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 113
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 114
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 116
    return-void
.end method

.method public setLimit(I)V
    .registers 3
    .param p1, "limit"    # I

    .line 149
    if-ltz p1, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 150
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 151
    return-void
.end method

.method public setPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .line 167
    if-ltz p1, :cond_8

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 168
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 169
    return-void
.end method

.method public skipBytes(I)V
    .registers 3
    .param p1, "bytes"    # I

    .line 196
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 197
    return-void
.end method
