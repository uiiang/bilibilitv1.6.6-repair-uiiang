.class final Lcom/google/common/collect/UnmodifiableSortedMultiset;
.super Lcom/google/common/collect/Multisets$UnmodifiableMultiset;
.source "UnmodifiableSortedMultiset.java"

# interfaces
.implements Lcom/google/common/collect/SortedMultiset;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$UnmodifiableMultiset",
        "<TE;>;",
        "Lcom/google/common/collect/SortedMultiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMultiset:Lcom/google/common/collect/UnmodifiableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/UnmodifiableSortedMultiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/SortedMultiset;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "delegate":Lcom/google/common/collect/SortedMultiset;, "Lcom/google/common/collect/SortedMultiset<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/Multiset;)V

    .line 36
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method createElementSet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createElementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->createElementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Lcom/google/common/collect/Multiset;
    .registers 2

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/SortedMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 63
    .local v0, "result":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    if-nez v0, :cond_18

    .line 64
    new-instance v0, Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .end local v0    # "result":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/collect/SortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/common/collect/UnmodifiableSortedMultiset;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 65
    .restart local v0    # "result":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    iput-object p0, v0, Lcom/google/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 66
    iput-object v0, p0, Lcom/google/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/UnmodifiableSortedMultiset;

    move-object v1, v0

    .end local v0    # "result":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local v1, "result":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    move-object v2, v0

    .line 68
    .end local v1    # "result":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local v2, "result":Ljava/lang/Object;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    :goto_17
    return-object v2

    .end local v2    # "result":Ljava/lang/Object;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .restart local v0    # "result":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    :cond_18
    move-object v1, v0

    .end local v0    # "result":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .restart local v1    # "result":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    move-object v2, v0

    .restart local v2    # "result":Ljava/lang/Object;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    goto :goto_17
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 4
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->unmodifiableSortedMultiset(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 6
    .param p2, "lowerBoundType"    # Lcom/google/common/collect/BoundType;
    .param p4, "upperBoundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            "TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    .local p3, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->unmodifiableSortedMultiset(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 4
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->unmodifiableSortedMultiset(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method
