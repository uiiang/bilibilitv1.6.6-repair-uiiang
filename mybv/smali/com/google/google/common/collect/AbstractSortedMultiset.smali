.class abstract Lcom/google/common/collect/AbstractSortedMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractSortedMultiset.java"

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
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;",
        "Lcom/google/common/collect/SortedMultiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation runtime Lcom/google/common/collect/GwtTransient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private transient descendingMultiset:Lcom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 42
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/AbstractSortedMultiset;->comparator:Ljava/util/Comparator;

    .line 47
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
    .line 61
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractSortedMultiset;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method createDescendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;-><init>(Lcom/google/common/collect/AbstractSortedMultiset;)V

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
    .line 56
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-object v0
.end method

.method bridge synthetic createElementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 35
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->createElementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method abstract descendingEntryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end method

.method descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractSortedMultiset;->descendingMultiset:Lcom/google/common/collect/SortedMultiset;

    .line 123
    .local v0, "result":Lcom/google/common/collect/SortedMultiset;, "Lcom/google/common/collect/SortedMultiset<TE;>;"
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->createDescendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    .end local v0    # "result":Lcom/google/common/collect/SortedMultiset;, "Lcom/google/common/collect/SortedMultiset<TE;>;"
    iput-object v0, p0, Lcom/google/common/collect/AbstractSortedMultiset;->descendingMultiset:Lcom/google/common/collect/SortedMultiset;

    :cond_a
    return-object v0
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
    .line 51
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 35
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 35
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 67
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 81
    .local v1, "result":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v1

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 85
    .end local v1    # "result":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    :goto_1f
    return-object v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 91
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 93
    .local v1, "result":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v1

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 97
    .end local v1    # "result":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    :goto_1f
    return-object v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fromBoundType"    # Lcom/google/common/collect/BoundType;
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "toBoundType"    # Lcom/google/common/collect/BoundType;
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
    .line 107
    .local p0, "this":Lcom/google/common/collect/AbstractSortedMultiset;, "Lcom/google/common/collect/AbstractSortedMultiset<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method
