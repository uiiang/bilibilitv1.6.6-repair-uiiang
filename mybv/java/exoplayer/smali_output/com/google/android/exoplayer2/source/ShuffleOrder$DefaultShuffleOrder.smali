.class public Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ShuffleOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ShuffleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultShuffleOrder"
.end annotation


# instance fields
.field private final indexInShuffled:[I

.field private final random:Ljava/util/Random;

.field private final shuffled:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "length"    # I

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    .line 52
    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 5
    .param p1, "length"    # I
    .param p2, "randomSeed"    # J

    .line 62
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    .line 63
    return-void
.end method

.method private constructor <init>(ILjava/util/Random;)V
    .registers 4
    .param p1, "length"    # I
    .param p2, "random"    # Ljava/util/Random;

    .line 77
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->createShuffledList(ILjava/util/Random;)[I

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    .line 78
    return-void
.end method

.method public constructor <init>([IJ)V
    .registers 6
    .param p1, "shuffledIndices"    # [I
    .param p2, "randomSeed"    # J

    .line 73
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    .line 74
    return-void
.end method

.method private constructor <init>([ILjava/util/Random;)V
    .registers 6
    .param p1, "shuffled"    # [I
    .param p2, "random"    # Ljava/util/Random;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 82
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    .line 83
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 85
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget v2, p1, v0

    aput v0, v1, v2

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 87
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method private static createShuffledList(ILjava/util/Random;)[I
    .registers 6
    .param p0, "length"    # I
    .param p1, "random"    # Ljava/util/Random;

    .line 166
    new-array v0, p0, [I

    .line 167
    .local v0, "shuffled":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p0, :cond_14

    .line 168
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 169
    .local v2, "swapIndex":I
    aget v3, v0, v2

    aput v3, v0, v1

    .line 170
    aput v1, v0, v2

    .line 167
    .end local v2    # "swapIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 172
    .end local v1    # "i":I
    :cond_14
    return-object v0
.end method


# virtual methods
.method public cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 5

    .line 162
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v1, Ljava/util/Random;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-object v0
.end method

.method public cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 12
    .param p1, "insertionIndex"    # I
    .param p2, "insertionCount"    # I

    .line 118
    new-array v0, p2, [I

    .line 119
    .local v0, "insertionPoints":[I
    new-array v1, p2, [I

    .line 120
    .local v1, "insertionValues":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, p2, :cond_27

    .line 121
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aput v3, v0, v2

    .line 122
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 123
    .local v3, "swapIndex":I
    aget v4, v1, v3

    aput v4, v1, v2

    .line 124
    add-int v4, v2, p1

    aput v4, v1, v3

    .line 120
    .end local v3    # "swapIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 126
    .end local v2    # "i":I
    :cond_27
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 127
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v2, v2

    add-int/2addr v2, p2

    new-array v2, v2, [I

    .line 128
    .local v2, "newShuffled":[I
    const/4 v3, 0x0

    .line 129
    .local v3, "indexInOldShuffled":I
    const/4 v4, 0x0

    .line 130
    .local v4, "indexInInsertionList":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_33
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v7, v6

    add-int/2addr v7, p2

    if-ge v5, v7, :cond_5a

    .line 131
    if-ge v4, p2, :cond_47

    aget v7, v0, v4

    if-ne v3, v7, :cond_47

    .line 133
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "indexInInsertionList":I
    .local v6, "indexInInsertionList":I
    aget v4, v1, v4

    aput v4, v2, v5

    move v4, v6

    goto :goto_57

    .line 135
    .end local v6    # "indexInInsertionList":I
    .restart local v4    # "indexInInsertionList":I
    :cond_47
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "indexInOldShuffled":I
    .local v7, "indexInOldShuffled":I
    aget v3, v6, v3

    aput v3, v2, v5

    .line 136
    aget v3, v2, v5

    if-lt v3, p1, :cond_56

    .line 137
    aget v3, v2, v5

    add-int/2addr v3, p2

    aput v3, v2, v5

    .line 130
    :cond_56
    move v3, v7

    .end local v7    # "indexInOldShuffled":I
    .restart local v3    # "indexInOldShuffled":I
    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 141
    .end local v5    # "i":I
    :cond_5a
    new-instance v5, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v6, Ljava/util/Random;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v5, v2, v6}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object v5
.end method

.method public cloneAndRemove(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 10
    .param p1, "indexFrom"    # I
    .param p2, "indexToExclusive"    # I

    .line 146
    sub-int v0, p2, p1

    .line 147
    .local v0, "numberOfElementsToRemove":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [I

    .line 148
    .local v1, "newShuffled":[I
    const/4 v2, 0x0

    .line 149
    .local v2, "foundElementsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v5, v4

    if-ge v3, v5, :cond_22

    .line 150
    aget v4, v4, v3

    if-lt v4, p1, :cond_18

    if-ge v4, p2, :cond_18

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 153
    :cond_18
    sub-int v5, v3, v2

    .line 154
    if-lt v4, p1, :cond_1d

    sub-int/2addr v4, v0

    :cond_1d
    aput v4, v1, v5

    .line 149
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 157
    .end local v3    # "i":I
    :cond_22
    new-instance v3, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v4, Ljava/util/Random;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v3, v1, v4}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object v3
.end method

.method public getFirstIndex()I
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v0

    if-lez v1, :cond_9

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public getLastIndex()I
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v0

    if-lez v1, :cond_b

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public getLength()I
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    return v0
.end method

.method public getNextIndex(I)I
    .registers 5
    .param p1, "index"    # I

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget v0, v0, p1

    .line 97
    .local v0, "shuffledIndex":I
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget v1, v1, v0

    goto :goto_f

    :cond_e
    const/4 v1, -0x1

    :goto_f
    return v1
.end method

.method public getPreviousIndex(I)I
    .registers 4
    .param p1, "index"    # I

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget v0, v0, p1

    .line 103
    .local v0, "shuffledIndex":I
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v1, v1, v0

    :cond_c
    return v1
.end method
