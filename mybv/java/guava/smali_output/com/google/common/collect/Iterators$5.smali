.class final Lcom/google/common/collect/Iterators$5;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->partitionImpl(Ljava/util/Iterator;IZ)Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$pad:Z

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Ljava/util/Iterator;IZ)V
    .registers 4

    .prologue
    .line 577
    iput-object p1, p0, Lcom/google/common/collect/Iterators$5;->val$iterator:Ljava/util/Iterator;

    iput p2, p0, Lcom/google/common/collect/Iterators$5;->val$size:I

    iput-boolean p3, p0, Lcom/google/common/collect/Iterators$5;->val$pad:Z

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$5;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$5;->hasNext()Z

    move-result v4

    if-nez v4, :cond_c

    .line 586
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    throw v4

    .line 588
    :cond_c
    iget v4, p0, Lcom/google/common/collect/Iterators$5;->val$size:I

    new-array v0, v4, [Ljava/lang/Object;

    .line 589
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 590
    .local v1, "count":I
    :goto_11
    iget v4, p0, Lcom/google/common/collect/Iterators$5;->val$size:I

    if-ge v1, v4, :cond_28

    iget-object v4, p0, Lcom/google/common/collect/Iterators$5;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 591
    iget-object v4, p0, Lcom/google/common/collect/Iterators$5;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 593
    :cond_28
    move v2, v1

    .local v2, "i":I
    :goto_29
    iget v4, p0, Lcom/google/common/collect/Iterators$5;->val$size:I

    if-ge v2, v4, :cond_33

    .line 594
    const/4 v4, 0x0

    aput-object v4, v0, v2

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 598
    :cond_33
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 599
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-boolean v4, p0, Lcom/google/common/collect/Iterators$5;->val$pad:Z

    if-nez v4, :cond_43

    iget v4, p0, Lcom/google/common/collect/Iterators$5;->val$size:I

    if-ne v1, v4, :cond_44

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_43
    :goto_43
    return-object v3

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_44
    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_43
.end method
