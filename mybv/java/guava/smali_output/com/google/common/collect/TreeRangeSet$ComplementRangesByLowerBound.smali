.class final Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;
.super Lcom/google/common/collect/AbstractNavigableMap;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComplementRangesByLowerBound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable",
        "<*>;>",
        "Lcom/google/common/collect/AbstractNavigableMap",
        "<",
        "Lcom/google/common/collect/Cut",
        "<TC;>;",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field private final complementLowerBoundWindow:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private final positiveRangesByLowerBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private final positiveRangesByUpperBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "positiveRangesByLowerBound":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Range;)V

    .line 449
    return-void
.end method

.method private constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Range;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;",
            "Lcom/google/common/collect/Range",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "positiveRangesByLowerBound":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    .local p2, "window":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<Lcom/google/common/collect/Cut<TC;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractNavigableMap;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    .line 454
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;

    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    .line 455
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    .line 456
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;)Lcom/google/common/collect/Range;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method private subMap(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;>;)",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "subWindow":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<Lcom/google/common/collect/Cut<TC;>;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 460
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    .line 463
    :goto_c
    return-object v0

    .line 462
    :cond_d
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    .line 463
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Range;)V

    goto :goto_c
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/google/common/collect/Cut",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 636
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->get(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;>;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    iget-object v5, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {v5}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v5

    if-eqz v5, :cond_66

    iget-object v5, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {v5}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/Cut;

    move-object v4, v5

    .line 561
    .local v4, "startingPoint":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_11
    iget-object v5, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {v5}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v5

    if-eqz v5, :cond_6b

    iget-object v5, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {v5}, Lcom/google/common/collect/Range;->upperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v5

    sget-object v6, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v5, v6, :cond_6b

    const/4 v2, 0x1

    .line 564
    .local v2, "inclusive":Z
    :goto_24
    iget-object v5, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    invoke-interface {v5, v4, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v3

    .line 572
    .local v3, "positiveItr":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<Lcom/google/common/collect/Range<TC;>;>;"
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 573
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/Range;

    iget-object v5, v5, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v6

    if-ne v5, v6, :cond_6d

    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/Range;

    iget-object v0, v5, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 583
    .local v0, "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_56
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Cut;

    .line 585
    .local v1, "firstComplementRangeUpperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    new-instance v5, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;

    invoke-direct {v5, p0, v1, v3}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;-><init>(Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;Lcom/google/common/collect/Cut;Lcom/google/common/collect/PeekingIterator;)V

    .end local v0    # "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .end local v1    # "firstComplementRangeUpperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_65
    return-object v5

    .line 557
    .end local v2    # "inclusive":Z
    .end local v3    # "positiveItr":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<Lcom/google/common/collect/Range<TC;>;>;"
    .end local v4    # "startingPoint":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_66
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v4

    goto :goto_11

    .line 561
    .restart local v4    # "startingPoint":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_6b
    const/4 v2, 0x0

    goto :goto_24

    .line 573
    .restart local v2    # "inclusive":Z
    .restart local v3    # "positiveItr":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<Lcom/google/common/collect/Range<TC;>;>;"
    :cond_6d
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/Range;

    iget-object v5, v5, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-interface {v6, v5}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/Cut;

    move-object v0, v5

    goto :goto_56

    .line 577
    :cond_7f
    iget-object v5, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_97

    iget-object v5, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 579
    :cond_97
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v5

    goto :goto_65

    .line 581
    :cond_9c
    iget-object v5, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Cut;

    .restart local v0    # "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    goto :goto_56
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;>;"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {v3}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 504
    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {v3}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v5

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {v3}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v6, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v3, v6, :cond_55

    const/4 v3, 0x1

    :goto_1b
    invoke-interface {v4, v5, v3}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 513
    .local v2, "positiveRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/collect/Range<TC;>;>;"
    :goto_23
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v1

    .line 516
    .local v1, "positiveItr":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<Lcom/google/common/collect/Range<TC;>;>;"
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v4

    if-eq v3, v4, :cond_5e

    .line 518
    :cond_4b
    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    .line 524
    .local v0, "firstComplementRangeLowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_4f
    new-instance v3, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;-><init>(Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;Lcom/google/common/collect/Cut;Lcom/google/common/collect/PeekingIterator;)V

    .end local v0    # "firstComplementRangeLowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_54
    return-object v3

    .line 504
    .end local v1    # "positiveItr":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<Lcom/google/common/collect/Range<TC;>;>;"
    .end local v2    # "positiveRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/collect/Range<TC;>;>;"
    :cond_55
    const/4 v3, 0x0

    goto :goto_1b

    .line 511
    :cond_57
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    invoke-interface {v3}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    .restart local v2    # "positiveRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/collect/Range<TC;>;>;"
    goto :goto_23

    .line 519
    .restart local v1    # "positiveItr":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<Lcom/google/common/collect/Range<TC;>;>;"
    :cond_5e
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 520
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    iget-object v0, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .restart local v0    # "firstComplementRangeLowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    goto :goto_4f

    .line 522
    .end local v0    # "firstComplementRangeLowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_6d
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    goto :goto_54
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/Range;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    const/4 v5, 0x0

    .line 618
    instance-of v4, p1, Lcom/google/common/collect/Cut;

    if-eqz v4, :cond_2a

    .line 621
    :try_start_5
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Cut;

    move-object v1, v0

    .line 623
    .local v1, "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->tailMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    .line 624
    .local v3, "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    if-eqz v3, :cond_2a

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 625
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Range;
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_26} :catch_27

    .line 631
    .end local v1    # "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .end local v3    # "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    :goto_26
    return-object v4

    .line 627
    :catch_27
    move-exception v2

    .local v2, "e":Ljava/lang/ClassCastException;
    move-object v4, v5

    .line 628
    goto :goto_26

    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_2a
    move-object v4, v5

    .line 631
    goto :goto_26
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 435
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->get(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TC;>;Z)",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "toKey":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 435
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    check-cast p1, Lcom/google/common/collect/Cut;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->headMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 612
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public subMap(Lcom/google/common/collect/Cut;ZLcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .registers 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TC;>;Z",
            "Lcom/google/common/collect/Cut",
            "<TC;>;Z)",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "fromKey":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .local p3, "toKey":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p4}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v1

    invoke-static {p1, v0, p3, v1}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 435
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    check-cast p1, Lcom/google/common/collect/Cut;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p3, Lcom/google/common/collect/Cut;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lcom/google/common/collect/Cut;ZLcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TC;>;Z)",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "fromKey":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 435
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    check-cast p1, Lcom/google/common/collect/Cut;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->tailMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
