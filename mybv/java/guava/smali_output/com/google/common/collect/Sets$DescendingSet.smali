.class Lcom/google/common/collect/Sets$DescendingSet;
.super Lcom/google/common/collect/ForwardingNavigableSet;
.source "Sets.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DescendingSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingNavigableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final forward:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1620
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "forward":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingNavigableSet;-><init>()V

    .line 1621
    iput-object p1, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 1622
    return-void
.end method

.method private static reverse(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/google/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1698
    .local p0, "forward":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1641
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 1688
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 1689
    .local v0, "forwardComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v0, :cond_11

    .line 1690
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    .line 1692
    :goto_10
    return-object v1

    :cond_11
    invoke-static {v0}, Lcom/google/common/collect/Sets$DescendingSet;->reverse(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    goto :goto_10
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1616
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$DescendingSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1616
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$DescendingSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1626
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1616
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$DescendingSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 1616
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$DescendingSet;->delegate()Ljava/util/NavigableSet;

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
    .line 1666
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1661
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1703
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1636
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1677
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1708
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$DescendingSet;->standardHeadSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1646
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1728
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1713
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1631
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 1651
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

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
    .line 1656
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 6
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
    .line 1672
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p3, p4, p1, p2}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1718
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Sets$DescendingSet;->standardSubSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1682
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1723
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$DescendingSet;->standardTailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1733
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$DescendingSet;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1738
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$DescendingSet;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1743
    .local p0, "this":Lcom/google/common/collect/Sets$DescendingSet;, "Lcom/google/common/collect/Sets$DescendingSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$DescendingSet;->standardToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
