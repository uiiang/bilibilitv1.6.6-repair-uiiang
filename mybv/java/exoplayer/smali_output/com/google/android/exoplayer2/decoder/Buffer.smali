.class public abstract Lcom/google/android/exoplayer2/decoder/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private flags:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addFlag(I)V
    .registers 3
    .param p1, "flag"    # I

    .line 85
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    .line 86
    return-void
.end method

.method public clear()V
    .registers 2

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    .line 36
    return-void
.end method

.method public final clearFlag(I)V
    .registers 4
    .param p1, "flag"    # I

    .line 94
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    .line 95
    return-void
.end method

.method protected final getFlag(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 104
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public final hasSupplementalData()Z
    .registers 2

    .line 65
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isDecodeOnly()Z
    .registers 2

    .line 40
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isEndOfStream()Z
    .registers 2

    .line 50
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isFirstSample()Z
    .registers 2

    .line 45
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isKeyFrame()Z
    .registers 2

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isLastSample()Z
    .registers 2

    .line 60
    const/high16 v0, 0x20000000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 75
    iput p1, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    .line 76
    return-void
.end method
