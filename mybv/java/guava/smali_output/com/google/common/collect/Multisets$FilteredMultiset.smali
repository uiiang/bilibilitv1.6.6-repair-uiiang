.class final Lcom/google/common/collect/Multisets$FilteredMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilteredMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final predicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<-TE;>;"
        }
    .end annotation
.end field

.field final unfiltered:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    .local p1, "unfiltered":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p2, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 292
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    iput-object v0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lcom/google/common/collect/Multiset;

    .line 293
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicate;

    iput-object v0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lcom/google/common/base/Predicate;

    .line 294
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Element %s does not match predicate %s"

    iget-object v2, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1, p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 358
    .local p0, "this":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$FilteredMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 359
    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .registers 6
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    const/4 v2, 0x0

    .line 330
    iget-object v3, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lcom/google/common/collect/Multiset;

    invoke-interface {v3, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 331
    .local v0, "count":I
    if-lez v0, :cond_15

    .line 333
    move-object v1, p1

    .line 334
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 336
    .end local v0    # "count":I
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :goto_12
    return v0

    .restart local v0    # "count":I
    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_13
    move v0, v2

    .line 334
    goto :goto_12

    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_15
    move v0, v2

    .line 336
    goto :goto_12
.end method

.method createElementSet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createEntrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multisets$FilteredMultiset$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multisets$FilteredMultiset$1;-><init>(Lcom/google/common/collect/Multisets$FilteredMultiset;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method distinctElements()I
    .registers 2

    .prologue
    .line 325
    .local p0, "this":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$FilteredMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 287
    .local p0, "this":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$FilteredMultiset;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .prologue
    .line 348
    .local p0, "this":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 349
    if-nez p2, :cond_c

    .line 350
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$FilteredMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 352
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$FilteredMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_b

    :cond_19
    const/4 v0, 0x0

    goto :goto_b
.end method
