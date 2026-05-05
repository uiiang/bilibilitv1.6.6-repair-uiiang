.class public final Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ShuffleOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ShuffleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnshuffledShuffleOrder"
.end annotation


# instance fields
.field private final length:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "length"    # I

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    .line 188
    return-void
.end method


# virtual methods
.method public cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 3

    .line 227
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object v0
.end method

.method public cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 5
    .param p1, "insertionIndex"    # I
    .param p2, "insertionCount"    # I

    .line 217
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    add-int/2addr v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object v0
.end method

.method public cloneAndRemove(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 5
    .param p1, "indexFrom"    # I
    .param p2, "indexToExclusive"    # I

    .line 222
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    sub-int/2addr v1, p2

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object v0
.end method

.method public getFirstIndex()I
    .registers 2

    .line 212
    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-lez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, -0x1

    :goto_7
    return v0
.end method

.method public getLastIndex()I
    .registers 2

    .line 207
    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-lez v0, :cond_7

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method public getLength()I
    .registers 2

    .line 192
    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    return v0
.end method

.method public getNextIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .line 197
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-ge p1, v0, :cond_8

    move v0, p1

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public getPreviousIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .line 202
    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_5

    move v0, p1

    :cond_5
    return v0
.end method
