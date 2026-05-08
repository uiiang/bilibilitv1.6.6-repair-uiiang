.class final Lcom/google/android/exoplayer2/source/SpannedData;
.super Ljava/lang/Object;
.source "SpannedData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private memoizedReadIndex:I

.field private final removeCallback:Lcom/google/android/exoplayer2/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final spans:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    .local p0, "this":Lcom/google/android/exoplayer2/source/SpannedData;, "Lcom/google/android/exoplayer2/source/SpannedData<TV;>;"
    new-instance v0, Lcom/google/android/exoplayer2/source/SpannedData$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/SpannedData$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SpannedData;-><init>(Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "TV;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/google/android/exoplayer2/source/SpannedData;, "Lcom/google/android/exoplayer2/source/SpannedData<TV;>;"
    .local p1, "removeCallback":Lcom/google/android/exoplayer2/util/Consumer;, "Lcom/google/android/exoplayer2/util/Consumer<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->removeCallback:Lcom/google/android/exoplayer2/util/Consumer;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    .line 62
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Object;)V
    .registers 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method public appendSpan(ILjava/lang/Object;)V
    .registers 8
    .param p1, "startKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/google/android/exoplayer2/source/SpannedData;, "Lcom/google/android/exoplayer2/source/SpannedData<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_17

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 96
    iput v2, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    .line 99
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_42

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 101
    .local v0, "lastStartKey":I
    if-lt p1, v0, :cond_2d

    const/4 v2, 0x1

    :cond_2d
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 102
    if-ne v0, p1, :cond_42

    .line 103
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->removeCallback:Lcom/google/android/exoplayer2/util/Consumer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 106
    .end local v0    # "lastStartKey":I
    :cond_42
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 107
    return-void
.end method

.method public clear()V
    .registers 4

    .line 151
    .local p0, "this":Lcom/google/android/exoplayer2/source/SpannedData;, "Lcom/google/android/exoplayer2/source/SpannedData<TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 152
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->removeCallback:Lcom/google/android/exoplayer2/util/Consumer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    .end local v0    # "i":I
    :cond_17
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 156
    return-void
.end method

.method public discardFrom(I)V
    .registers 5
    .param p1, "discardFromKey"    # I

    .line 142
    .local p0, "this":Lcom/google/android/exoplayer2/source/SpannedData;, "Lcom/google/android/exoplayer2/source/SpannedData<TV;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_25

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-ge p1, v1, :cond_25

    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->removeCallback:Lcom/google/android/exoplayer2/util/Consumer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 142
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 146
    .end local v0    # "i":I
    :cond_25
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_3c

    iget v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3d

    :cond_3c
    const/4 v0, -0x1

    :goto_3d
    iput v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    .line 147
    return-void
.end method

.method public discardTo(I)V
    .registers 5
    .param p1, "discardToKey"    # I

    .line 127
    .local p0, "this":Lcom/google/android/exoplayer2/source/SpannedData;, "Lcom/google/android/exoplayer2/source/SpannedData<TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-lt p1, v1, :cond_30

    .line 128
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->removeCallback:Lcom/google/android/exoplayer2/util/Consumer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 130
    iget v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    if-lez v1, :cond_2d

    .line 131
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    .line 127
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/android/exoplayer2/source/SpannedData;, "Lcom/google/android/exoplayer2/source/SpannedData<TV;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    .line 77
    :cond_8
    :goto_8
    iget v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    if-lez v0, :cond_1b

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ge p1, v0, :cond_1b

    .line 78
    iget v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    goto :goto_8

    .line 80
    :cond_1b
    :goto_1b
    iget v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3a

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_3a

    .line 81
    iget v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    goto :goto_1b

    .line 83
    :cond_3a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEndValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/google/android/exoplayer2/source/SpannedData;, "Lcom/google/android/exoplayer2/source/SpannedData<TV;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 160
    .local p0, "this":Lcom/google/android/exoplayer2/source/SpannedData;, "Lcom/google/android/exoplayer2/source/SpannedData<TV;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
