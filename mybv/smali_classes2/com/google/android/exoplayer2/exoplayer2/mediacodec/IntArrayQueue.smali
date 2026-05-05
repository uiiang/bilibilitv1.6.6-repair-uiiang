.class final Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;
.super Ljava/lang/Object;
.source "IntArrayQueue.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10


# instance fields
.field private data:[I

.field private headIndex:I

.field private size:I

.field private tailIndex:I

.field private wrapAroundMask:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    .line 46
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    .line 48
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    .line 49
    return-void
.end method

.method private doubleArraySize()V
    .registers 8

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    .line 103
    .local v1, "newCapacity":I
    if-ltz v1, :cond_28

    .line 107
    new-array v2, v1, [I

    .line 108
    .local v2, "newData":[I
    array-length v3, v0

    iget v4, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    sub-int/2addr v3, v4

    .line 109
    .local v3, "itemsToRight":I
    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    .line 110
    .local v5, "itemsToLeft":I
    const/4 v6, 0x0

    invoke-static {v0, v4, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    invoke-static {v0, v6, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iput v6, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    .line 114
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    .line 115
    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    .line 116
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    .line 117
    return-void

    .line 104
    .end local v2    # "newData":[I
    .end local v3    # "itemsToRight":I
    .end local v5    # "itemsToLeft":I
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(I)V
    .registers 4
    .param p1, "value"    # I

    .line 53
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    array-length v1, v1

    if-ne v0, v1, :cond_a

    .line 54
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->doubleArraySize()V

    .line 57
    :cond_a
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    .line 58
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    aput p1, v1, v0

    .line 59
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    .line 60
    return-void
.end method

.method public capacity()I
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .registers 3

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    .line 92
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    .line 93
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    .line 94
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 86
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public remove()I
    .registers 5

    .line 68
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    if-eqz v0, :cond_16

    .line 72
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    aget v1, v1, v2

    .line 73
    .local v1, "value":I
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    .line 74
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    .line 76
    return v1

    .line 69
    .end local v1    # "value":I
    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    return v0
.end method
