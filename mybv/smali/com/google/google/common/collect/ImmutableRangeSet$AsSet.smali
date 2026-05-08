.class final Lcom/google/common/collect/ImmutableRangeSet$AsSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSortedSet",
        "<TC;>;"
    }
.end annotation


# instance fields
.field private final domain:Lcom/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;"
        }
    .end annotation
.end field

.field private transient size:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/google/common/collect/ImmutableRangeSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeSet;Lcom/google/common/collect/DiscreteDomain;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p2, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    .line 445
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 446
    iput-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    .line 447
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/ImmutableRangeSet$AsSet;)Lcom/google/common/collect/DiscreteDomain;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    const/4 v3, 0x0

    .line 537
    if-nez p1, :cond_4

    .line 545
    :goto_3
    return v3

    .line 542
    :cond_4
    :try_start_4
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v1, v0

    .line 543
    .local v1, "c":Ljava/lang/Comparable;, "TC;"
    iget-object v4, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableRangeSet;->contains(Ljava/lang/Comparable;)Z
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v3

    goto :goto_3

    .line 544
    .end local v1    # "c":Ljava/lang/Comparable;, "TC;"
    :catch_f
    move-exception v2

    .line 545
    .local v2, "e":Ljava/lang/ClassCastException;
    goto :goto_3
.end method

.method public descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;-><init>(Lcom/google/common/collect/ImmutableRangeSet$AsSet;)V

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 441
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p1, "toElement":Ljava/lang/Comparable;, "TC;"
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->subSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 441
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;)I
    .registers 10
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 551
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    move-object v0, p1

    .line 553
    check-cast v0, Ljava/lang/Comparable;

    .line 554
    .local v0, "c":Ljava/lang/Comparable;, "TC;"
    const-wide/16 v4, 0x0

    .line 555
    .local v4, "total":J
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {v3}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 556
    .local v2, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {v2, v0}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 557
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-static {v2, v3}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ContiguousSet;->indexOf(Ljava/lang/Object;)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v3

    .line 564
    .end local v0    # "c":Ljava/lang/Comparable;, "TC;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .end local v4    # "total":J
    :goto_37
    return v3

    .line 559
    .restart local v0    # "c":Ljava/lang/Comparable;, "TC;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .restart local v4    # "total":J
    :cond_38
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-static {v2, v3}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ContiguousSet;->size()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 561
    goto :goto_15

    .line 562
    .end local v2    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_45
    new-instance v3, Ljava/lang/AssertionError;

    const-string v6, "impossible"

    invoke-direct {v3, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 564
    .end local v0    # "c":Ljava/lang/Comparable;, "TC;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "total":J
    :cond_4d
    const/4 v3, -0x1

    goto :goto_37
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 569
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet$1;-><init>(Lcom/google/common/collect/ImmutableRangeSet$AsSet;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 441
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 9

    .prologue
    .line 454
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->size:Ljava/lang/Integer;

    .line 455
    .local v2, "result":Ljava/lang/Integer;
    if-nez v2, :cond_39

    .line 456
    const-wide/16 v4, 0x0

    .line 457
    .local v4, "total":J
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {v3}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 458
    .local v1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-static {v1, v3}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ContiguousSet;->size()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 459
    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v4, v6

    if-ltz v3, :cond_10

    .line 463
    .end local v1    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_2f
    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2    # "result":Ljava/lang/Integer;
    iput-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->size:Ljava/lang/Integer;

    .line 465
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "total":J
    .restart local v2    # "result":Ljava/lang/Integer;
    :cond_39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3
.end method

.method subSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;->asSet(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    .local p3, "toElement":Ljava/lang/Comparable;, "TC;"
    if-nez p2, :cond_f

    if-nez p4, :cond_f

    invoke-static {p1, p3}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_f

    .line 522
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->of()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 524
    :goto_e
    return-object v0

    :cond_f
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p4}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v1

    invoke-static {p1, v0, p3, v1}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->subSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_e
.end method

.method bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 441
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p3, Ljava/lang/Comparable;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->subSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 441
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 574
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 579
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$AsSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {v1}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/DiscreteDomain;)V

    return-object v0
.end method
