.class final Lcom/google/common/collect/TopKSelector;
.super Ljava/lang/Object;
.source "TopKSelector.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private bufferSize:I

.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final k:I

.field private threshold:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Comparator;I)V
    .registers 6
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TopKSelector;, "Lcom/google/common/collect/TopKSelector<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, "comparator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    .line 116
    iput p2, p0, Lcom/google/common/collect/TopKSelector;->k:I

    .line 117
    if-ltz p2, :cond_26

    const/4 v0, 0x1

    :goto_13
    const-string v2, "k must be nonnegative, was %s"

    invoke-static {v0, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 118
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    .line 119
    iput v1, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    .line 121
    return-void

    :cond_26
    move v0, v1

    .line 117
    goto :goto_13
.end method

.method public static greatest(I)Lcom/google/common/collect/TopKSelector;
    .registers 2
    .param p0, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(I)",
            "Lcom/google/common/collect/TopKSelector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/TopKSelector;->greatest(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;

    move-result-object v0

    return-object v0
.end method

.method public static greatest(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;
    .registers 4
    .param p0, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Lcom/google/common/collect/TopKSelector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Lcom/google/common/collect/TopKSelector;

    invoke-static {p1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/TopKSelector;-><init>(Ljava/util/Comparator;I)V

    return-object v0
.end method

.method public static least(I)Lcom/google/common/collect/TopKSelector;
    .registers 2
    .param p0, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(I)",
            "Lcom/google/common/collect/TopKSelector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/TopKSelector;->least(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;

    move-result-object v0

    return-object v0
.end method

.method public static least(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;
    .registers 3
    .param p0, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Lcom/google/common/collect/TopKSelector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Lcom/google/common/collect/TopKSelector;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/TopKSelector;-><init>(Ljava/util/Comparator;I)V

    return-object v0
.end method

.method private partition(III)I
    .registers 9
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "pivotIndex"    # I

    .prologue
    .line 199
    .local p0, "this":Lcom/google/common/collect/TopKSelector;, "Lcom/google/common/collect/TopKSelector<TT;>;"
    iget-object v3, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v2, v3, p3

    .line 200
    .local v2, "pivotValue":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, p2

    aput-object v4, v3, p3

    .line 202
    move v1, p1

    .line 203
    .local v1, "pivotNewIndex":I
    move v0, p1

    .local v0, "i":I
    :goto_e
    if-ge v0, p2, :cond_24

    .line 204
    iget-object v3, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_21

    .line 205
    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/TopKSelector;->swap(II)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    .line 203
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 209
    :cond_24
    iget-object v3, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v3, p2

    .line 210
    iget-object v3, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 211
    return v1
.end method

.method private swap(II)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 215
    .local p0, "this":Lcom/google/common/collect/TopKSelector;, "Lcom/google/common/collect/TopKSelector<TT;>;"
    iget-object v1, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 216
    .local v0, "tmp":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v2, v2, p2

    aput-object v2, v1, p1

    .line 217
    iget-object v1, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aput-object v0, v1, p2

    .line 218
    return-void
.end method

.method private trim()V
    .registers 12

    .prologue
    .line 153
    .local p0, "this":Lcom/google/common/collect/TopKSelector;, "Lcom/google/common/collect/TopKSelector<TT;>;"
    const/4 v2, 0x0

    .line 154
    .local v2, "left":I
    iget v8, p0, Lcom/google/common/collect/TopKSelector;->k:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v7, v8, -0x1

    .line 156
    .local v7, "right":I
    const/4 v4, 0x0

    .line 160
    .local v4, "minThresholdPosition":I
    const/4 v1, 0x0

    .line 161
    .local v1, "iterations":I
    sub-int v8, v7, v2

    sget-object v9, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v8, v9}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v8

    mul-int/lit8 v3, v8, 0x3

    .line 162
    .local v3, "maxIterations":I
    :cond_13
    if-ge v2, v7, :cond_30

    .line 163
    add-int v8, v2, v7

    add-int/lit8 v8, v8, 0x1

    ushr-int/lit8 v5, v8, 0x1

    .line 165
    .local v5, "pivotIndex":I
    invoke-direct {p0, v2, v7, v5}, Lcom/google/common/collect/TopKSelector;->partition(III)I

    move-result v6

    .line 167
    .local v6, "pivotNewIndex":I
    iget v8, p0, Lcom/google/common/collect/TopKSelector;->k:I

    if-le v6, v8, :cond_57

    .line 168
    add-int/lit8 v7, v6, -0x1

    .line 175
    :goto_25
    add-int/lit8 v1, v1, 0x1

    .line 176
    if-lt v1, v3, :cond_13

    .line 178
    iget-object v8, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    invoke-static {v8, v2, v7, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 182
    .end local v5    # "pivotIndex":I
    .end local v6    # "pivotNewIndex":I
    :cond_30
    iget v8, p0, Lcom/google/common/collect/TopKSelector;->k:I

    iput v8, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    .line 184
    iget-object v8, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v8, v8, v4

    iput-object v8, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    .line 185
    add-int/lit8 v0, v4, 0x1

    .local v0, "i":I
    :goto_3c
    iget v8, p0, Lcom/google/common/collect/TopKSelector;->k:I

    if-ge v0, v8, :cond_63

    .line 186
    iget-object v8, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    iget-object v9, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v9, v9, v0

    iget-object v10, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_54

    .line 187
    iget-object v8, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v8, v8, v0

    iput-object v8, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    .line 185
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 169
    .end local v0    # "i":I
    .restart local v5    # "pivotIndex":I
    .restart local v6    # "pivotNewIndex":I
    :cond_57
    iget v8, p0, Lcom/google/common/collect/TopKSelector;->k:I

    if-ge v6, v8, :cond_30

    .line 170
    add-int/lit8 v8, v2, 0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 171
    move v4, v6

    goto :goto_25

    .line 190
    .end local v5    # "pivotIndex":I
    .end local v6    # "pivotNewIndex":I
    .restart local v0    # "i":I
    :cond_63
    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)V
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/google/common/collect/TopKSelector;, "Lcom/google/common/collect/TopKSelector<TT;>;"
    .local p1, "elem":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/google/common/collect/TopKSelector;->k:I

    if-nez v0, :cond_5

    .line 146
    :cond_4
    :goto_4
    return-void

    .line 130
    :cond_5
    iget v0, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    if-nez v0, :cond_14

    .line 131
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 132
    iput-object p1, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    goto :goto_4

    .line 134
    :cond_14
    iget v0, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    iget v1, p0, Lcom/google/common/collect/TopKSelector;->k:I

    if-ge v0, v1, :cond_31

    .line 135
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    aput-object p1, v0, v1

    .line 136
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_4

    .line 137
    iput-object p1, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    goto :goto_4

    .line 139
    :cond_31
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    aput-object p1, v0, v1

    .line 142
    iget v0, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    iget v1, p0, Lcom/google/common/collect/TopKSelector;->k:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_4

    .line 143
    invoke-direct {p0}, Lcom/google/common/collect/TopKSelector;->trim()V

    goto :goto_4
.end method

.method public offerAll(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcom/google/common/collect/TopKSelector;, "Lcom/google/common/collect/TopKSelector<TT;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TopKSelector;->offerAll(Ljava/util/Iterator;)V

    .line 230
    return-void
.end method

.method public offerAll(Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/google/common/collect/TopKSelector;, "Lcom/google/common/collect/TopKSelector<TT;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 243
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TopKSelector;->offer(Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_e
    return-void
.end method

.method public topK()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lcom/google/common/collect/TopKSelector;, "Lcom/google/common/collect/TopKSelector<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    iget-object v3, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 257
    iget v0, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    iget v1, p0, Lcom/google/common/collect/TopKSelector;->k:I

    if-le v0, v1, :cond_29

    .line 258
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/TopKSelector;->k:I

    iget-object v2, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 259
    iget v0, p0, Lcom/google/common/collect/TopKSelector;->k:I

    iput v0, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    .line 260
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/TopKSelector;->k:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    .line 263
    :cond_29
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
