.class Lcom/google/common/collect/Multimaps$Keys;
.super Lcom/google/common/collect/AbstractMultiset;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final multimap:Lcom/google/common/collect/Multimap;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1557
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 1558
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$Keys;->multimap:Lcom/google/common/collect/Multimap;

    .line 1559
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1682
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 1683
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1640
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1650
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$Keys;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1651
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_10

    const/4 v1, 0x0

    :goto_f
    return v1

    :cond_10
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_f
.end method

.method createEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 1589
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;-><init>(Lcom/google/common/collect/Multimaps$Keys;)V

    return-object v0
.end method

.method distinctElements()I
    .registers 2

    .prologue
    .line 1584
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1687
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 1563
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$Keys$1;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$Keys;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multimaps$Keys$1;-><init>(Lcom/google/common/collect/Multimaps$Keys;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1645
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 8
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .prologue
    .line 1656
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    const-string v4, "occurrences"

    invoke-static {p2, v4}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 1657
    if-nez p2, :cond_c

    .line 1658
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$Keys;->count(Ljava/lang/Object;)I

    move-result v2

    .line 1677
    :cond_b
    :goto_b
    return v2

    .line 1661
    :cond_c
    iget-object v4, p0, Lcom/google/common/collect/Multimaps$Keys;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v4}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1663
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v3, :cond_1c

    .line 1664
    const/4 v2, 0x0

    goto :goto_b

    .line 1667
    :cond_1c
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v2

    .line 1668
    .local v2, "oldCount":I
    if-lt p2, v2, :cond_26

    .line 1669
    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    goto :goto_b

    .line 1671
    :cond_26
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1672
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    if-ge v0, p2, :cond_b

    .line 1673
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1674
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1672
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b
.end method
