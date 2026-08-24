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
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->data:[B

    .line 552
    iput p2, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->limit:I

    .line 553
    return-void
.end method


# virtual methods
.method readBit()I
    .locals 3

    .prologue
    .line 564
    iget v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bytePos:I

    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->limit:I

    if-lt v0, v1, :cond_e

    .line 565
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "SPS bitstream overrun"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_e
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->data:[B

    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bytePos:I

    aget-byte v0, v0, v1

    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bitPos:I

    rsub-int/lit8 v1, v1, 0x7

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    .line 568
    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bitPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bitPos:I

    .line 569
    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bitPos:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_30

    .line 570
    const/4 v1, 0x0

    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bitPos:I

    .line 571
    iget v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bytePos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->bytePos:I

    .line 573
    :cond_30
    return v0
.end method

.method readBits(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 556
    move v0, v1

    move v2, v1

    .line 557
    :goto_3
    if-ge v0, p1, :cond_10

    .line 558
    shl-int/lit8 v1, v2, 0x1

    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBit()I

    move-result v2

    or-int/2addr v1, v2

    .line 557
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 560
    :cond_10
    return v2
.end method

.method readSe()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 595
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readUe()I

    move-result v1

    .line 596
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

    .line 577
    move v0, v1

    .line 578
    :cond_2
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBit()I

    move-result v2

    if-nez v2, :cond_16

    .line 579
    add-int/lit8 v0, v0, 0x1

    .line 580
    const/16 v2, 0x20

    if-le v0, v2, :cond_2

    .line 581
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "ue(v) too long"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_16
    if-nez v0, :cond_19

    .line 591
    :goto_18
    return v1

    .line 587
    :cond_19
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 588
    :goto_1d
    if-ge v1, v0, :cond_2b

    .line 589
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/media/exo/FlvHevcExtractor$BitReader;->readBit()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v1

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2b
    move v1, v2

    .line 591
    goto :goto_18
.end method
