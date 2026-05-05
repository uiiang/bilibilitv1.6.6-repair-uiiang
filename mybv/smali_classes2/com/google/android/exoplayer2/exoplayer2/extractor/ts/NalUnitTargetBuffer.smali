.class final Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;
.super Ljava/lang/Object;
.source "NalUnitTargetBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private isCompleted:Z

.field private isFilling:Z

.field public nalData:[B

.field public nalLength:I

.field private final targetType:I


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .param p1, "targetType"    # I
    .param p2, "initialCapacity"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->targetType:I

    .line 45
    add-int/lit8 v0, p2, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 46
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 47
    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .registers 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 83
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-nez v0, :cond_5

    .line 84
    return-void

    .line 86
    :cond_5
    sub-int v0, p3, p2

    .line 87
    .local v0, "readLength":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    array-length v2, v1

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int v4, v3, v0

    if-ge v2, v4, :cond_19

    .line 88
    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 90
    :cond_19
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 92
    return-void
.end method

.method public endNalUnit(I)Z
    .registers 4
    .param p1, "discardPadding"    # I

    .line 102
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 103
    return v1

    .line 105
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 106
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    .line 108
    return v0
.end method

.method public isCompleted()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return v0
.end method

.method public reset()V
    .registers 2

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 52
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    .line 53
    return-void
.end method

.method public startNalUnit(I)V
    .registers 5
    .param p1, "type"    # I

    .line 66
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 67
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->targetType:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 68
    if-eqz v1, :cond_17

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 71
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    .line 73
    :cond_17
    return-void
.end method
