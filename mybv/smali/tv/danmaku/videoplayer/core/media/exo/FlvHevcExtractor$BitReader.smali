.class final Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;
.super Ljava/lang/Object;
.source "FlvHevcExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BitReader"
.end annotation


# instance fields
.field private bitPos:I

.field private bytePos:I

.field private final data:[B

.field private final limit:I


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->data:[B

    .line 521
    iput p2, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->limit:I

    .line 522
    return-void
.end method


# virtual methods
.method readBit()I
    .locals 3

    .prologue
    .line 533
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bytePos:I

    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->limit:I

    if-lt v0, v1, :cond_e

    .line 534
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "SPS bitstream overrun"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_e
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->data:[B

    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bytePos:I

    aget-byte v0, v0, v1

    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bitPos:I

    rsub-int/lit8 v1, v1, 0x7

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    .line 537
    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bitPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bitPos:I

    .line 538
    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bitPos:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_30

    .line 539
    const/4 v1, 0x0

    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bitPos:I

    .line 540
    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bytePos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bytePos:I

    .line 542
    :cond_30
    return v0
.end method

.method readBits(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 525
    move v0, v1

    move v2, v1

    .line 526
    :goto_3
    if-ge v0, p1, :cond_10

    .line 527
    shl-int/lit8 v1, v2, 0x1

    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBit()I

    move-result v2

    or-int/2addr v1, v2

    .line 526
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 529
    :cond_10
    return v2
.end method

.method readSe()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 564
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v1

    .line 565
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v2, v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_f

    :goto_d
    mul-int/2addr v0, v2

    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_d
.end method

.method readUe()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 546
    move v0, v1

    .line 547
    :cond_2
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBit()I

    move-result v2

    if-nez v2, :cond_16

    .line 548
    add-int/lit8 v0, v0, 0x1

    .line 549
    const/16 v2, 0x20

    if-le v0, v2, :cond_2

    .line 550
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "ue(v) too long"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_16
    if-nez v0, :cond_19

    .line 560
    :goto_18
    return v1

    .line 556
    :cond_19
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 557
    :goto_1d
    if-ge v1, v0, :cond_2b

    .line 558
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBit()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v1

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2b
    move v1, v2

    .line 560
    goto :goto_18
.end method
