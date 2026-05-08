.class final Lcom/google/common/collect/EmptyContiguousSet;
.super Lcom/google/common/collect/ContiguousSet;
.source "EmptyContiguousSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/EmptyContiguousSet$1;,
        Lcom/google/common/collect/EmptyContiguousSet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/ContiguousSet",
        "<TC;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/DiscreteDomain;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    .local p1, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ContiguousSet;-><init>(Lcom/google/common/collect/DiscreteDomain;)V

    .line 33
    return-void
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 83
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, 0x0

    return v0
.end method

.method createDescendingSet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 28
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyContiguousSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_c

    move-object v0, p1

    .line 126
    check-cast v0, Ljava/util/Set;

    .line 127
    .local v0, "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    .line 129
    .end local v0    # "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public first()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 28
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 140
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, 0x0

    return v0
.end method

.method headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .registers 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/ContiguousSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    .local p1, "toElement":Ljava/lang/Comparable;, "TC;"
    return-object p0
.end method

.method bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 28
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyContiguousSet;->headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "target"    # Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public intersection(Lcom/google/common/collect/ContiguousSet;)Lcom/google/common/collect/ContiguousSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ContiguousSet",
            "<TC;>;)",
            "Lcom/google/common/collect/ContiguousSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/ContiguousSet;, "Lcom/google/common/collect/ContiguousSet<TC;>;"
    return-object p0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 110
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isHashCodeFast()Z
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 105
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, 0x0

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
    .line 94
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 28
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyContiguousSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 28
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyContiguousSet;->last()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public range()Lcom/google/common/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public range(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .registers 4
    .param p1, "lowerBoundType"    # Lcom/google/common/collect/BoundType;
    .param p2, "upperBoundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    const/4 v0, 0x0

    return v0
.end method

.method subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .registers 5
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/ContiguousSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    .local p3, "toElement":Ljava/lang/Comparable;, "TC;"
    return-object p0
.end method

.method bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 28
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p3, Ljava/lang/Comparable;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/EmptyContiguousSet;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .registers 3
    .param p2, "fromInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/ContiguousSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    return-object p0
.end method

.method bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 28
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyContiguousSet;->tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    const-string v0, "[]"

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/google/common/collect/EmptyContiguousSet;, "Lcom/google/common/collect/EmptyContiguousSet<TC;>;"
    new-instance v0, Lcom/google/common/collect/EmptyContiguousSet$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/EmptyContiguousSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/EmptyContiguousSet$SerializedForm;-><init>(Lcom/google/common/collect/DiscreteDomain;Lcom/google/common/collect/EmptyContiguousSet$1;)V

    return-object v0
.end method
