.class final Lcom/google/common/collect/MapMakerInternalMap$EntrySet;
.super Lcom/google/common/collect/MapMakerInternalMap$SafeToArraySet;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MapMakerInternalMap$SafeToArraySet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .registers 3

    .prologue
    .line 2565
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$EntrySet;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$SafeToArraySet;-><init>(Lcom/google/common/collect/MapMakerInternalMap$1;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 2609
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$EntrySet;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->clear()V

    .line 2610
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$EntrySet;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntrySet;"
    const/4 v3, 0x0

    .line 2574
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_6

    .line 2584
    :cond_5
    :goto_5
    return v3

    :cond_6
    move-object v0, p1

    .line 2577
    check-cast v0, Ljava/util/Map$Entry;

    .line 2578
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2579
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_5

    .line 2582
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/MapMakerInternalMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2584
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v4}, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    goto :goto_5
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 2604
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$EntrySet;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2569
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$EntrySet;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntrySet;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryIterator;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryIterator;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$EntrySet;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntrySet;"
    const/4 v2, 0x0

    .line 2589
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_6

    .line 2594
    :cond_5
    :goto_5
    return v2

    :cond_6
    move-object v0, p1

    .line 2592
    check-cast v0, Ljava/util/Map$Entry;

    .line 2593
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2594
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 2599
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$EntrySet;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->size()I

    move-result v0

    return v0
.end method
