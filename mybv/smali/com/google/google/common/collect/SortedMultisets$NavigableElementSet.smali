.class Lcom/google/common/collect/SortedMultisets$NavigableElementSet;
.super Lcom/google/common/collect/SortedMultisets$ElementSet;
.source "SortedMultisets.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/SortedMultisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavigableElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/SortedMultisets$ElementSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;"
    }
.end annotation


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
    .line 95
    .local p0, "this":Lcom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lcom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "multiset":Lcom/google/common/collect/SortedMultiset;, "Lcom/google/common/collect/SortedMultiset<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/SortedMultisets$ElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 96
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lcom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    # invokes: Lcom/google/common/collect/SortedMultisets;->getElementOrNull(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/collect/SortedMultisets;->access$100(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lcom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lcom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;

    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/SortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lcom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    # invokes: Lcom/google/common/collect/SortedMultisets;->getElementOrNull(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/collect/SortedMultisets;->access$100(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 6
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lcom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;

    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lcom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    # invokes: Lcom/google/common/collect/SortedMultisets;->getElementOrNull(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/collect/SortedMultisets;->access$100(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lcom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    # invokes: Lcom/google/common/collect/SortedMultisets;->getElementOrNull(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/collect/SortedMultisets;->access$100(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lcom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    # invokes: Lcom/google/common/collect/SortedMultisets;->getElementOrNull(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/collect/SortedMultisets;->access$100(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lcom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->pollLastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    # invokes: Lcom/google/common/collect/SortedMultisets;->getElementOrNull(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/collect/SortedMultisets;->access$100(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 9
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lcom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;

    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-static {p4}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v3

    invoke-interface {v1, p1, v2, p3, v3}, Lcom/google/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 6
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lcom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;

    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-object v0
.end method
