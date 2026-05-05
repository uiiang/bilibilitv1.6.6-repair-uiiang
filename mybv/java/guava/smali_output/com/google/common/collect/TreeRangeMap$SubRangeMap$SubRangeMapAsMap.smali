.class Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;
.super Ljava/util/AbstractMap;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap$SubRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubRangeMapAsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Lcom/google/common/collect/Range",
        "<TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)V
    .registers 2

    .prologue
    .line 482
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Lcom/google/common/base/Predicate;)Z
    .registers 3
    .param p0, "x0"    # Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;
    .param p1, "x1"    # Lcom/google/common/base/Predicate;

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->removeEntryIf(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method private removeEntryIf(Lcom/google/common/base/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 540
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<Lcom/google/common/collect/Range<TK;>;TV;>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 541
    .local v3, "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/Range<TK;>;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 542
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Range<TK;>;TV;>;"
    invoke-interface {p1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 543
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 546
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Range<TK;>;TV;>;"
    :cond_26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 547
    .local v2, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    iget-object v4, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v4, v4, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v4, v2}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    goto :goto_2a

    .line 549
    .end local v2    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    :cond_3e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_46

    const/4 v4, 0x1

    :goto_45
    return v4

    :cond_46
    const/4 v4, 0x0

    goto :goto_45
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 536
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->clear()V

    .line 537
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 486
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;
    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$200(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 599
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    .line 606
    :goto_10
    return-object v2

    .line 601
    :cond_11
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;
    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;
    invoke-static {v3}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$200(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v3

    iget-object v3, v3, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;
    invoke-static {v3}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$200(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v3

    iget-object v3, v3, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Cut;

    .line 604
    .local v1, "cutToStart":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;
    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 606
    .local v0, "backingItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    new-instance v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;

    invoke-direct {v2, p0, v0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Ljava/util/Iterator;)V

    goto :goto_10
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    const/4 v5, 0x0

    .line 492
    :try_start_1
    instance-of v6, p1, Lcom/google/common/collect/Range;

    if-eqz v6, :cond_1b

    .line 494
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Range;

    move-object v4, v0

    .line 495
    .local v4, "r":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;
    invoke-static {v6}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$200(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {v4}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 519
    .end local v4    # "r":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    :cond_1b
    :goto_1b
    return-object v5

    .line 498
    .restart local v4    # "r":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    :cond_1c
    const/4 v1, 0x0

    .line 499
    .local v1, "candidate":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    iget-object v6, v4, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v7, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;
    invoke-static {v7}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$200(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v7

    iget-object v7, v7, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v6, v7}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v6

    if-nez v6, :cond_6e

    .line 501
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v6, v6, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;
    invoke-static {v6}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v6

    iget-object v7, v4, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v6, v7}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 503
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TK;>;Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    if-eqz v3, :cond_43

    .line 504
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "candidate":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    check-cast v1, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    .line 510
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TK;>;Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    .restart local v1    # "candidate":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    :cond_43
    :goto_43
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v6

    iget-object v7, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;
    invoke-static {v7}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$200(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v6

    iget-object v7, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;
    invoke-static {v7}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$200(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 513
    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1b

    .line 507
    :cond_6e
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v6, v6, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;
    invoke-static {v6}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v6

    iget-object v7, v4, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v6, v7}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "candidate":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    check-cast v1, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;
    :try_end_7e
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_7e} :catch_7f

    .restart local v1    # "candidate":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    goto :goto_43

    .line 516
    .end local v1    # "candidate":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    .end local v4    # "r":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    :catch_7f
    move-exception v2

    .line 517
    .local v2, "e":Ljava/lang/ClassCastException;
    goto :goto_1b
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Ljava/util/Map;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 525
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_11

    move-object v0, p1

    .line 527
    check-cast v0, Lcom/google/common/collect/Range;

    .line 528
    .local v0, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    .line 531
    .end local v0    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :goto_10
    return-object v1

    .restart local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 626
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$4;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$4;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Ljava/util/Map;)V

    return-object v0
.end method
