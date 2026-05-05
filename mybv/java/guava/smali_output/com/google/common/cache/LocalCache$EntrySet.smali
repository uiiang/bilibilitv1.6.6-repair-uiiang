.class final Lcom/google/common/cache/LocalCache$EntrySet;
.super Lcom/google/common/cache/LocalCache$AbstractCacheSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache",
        "<TK;TV;>.AbstractCacheSet<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 4668
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    .local p2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<**>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    .line 4669
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/LocalCache$AbstractCacheSet;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4670
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    const/4 v3, 0x0

    .line 4679
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_6

    .line 4689
    :cond_5
    :goto_5
    return v3

    :cond_6
    move-object v0, p1

    .line 4682
    check-cast v0, Ljava/util/Map$Entry;

    .line 4683
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4684
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_5

    .line 4687
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v4, v1}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4689
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    goto :goto_5
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
    .line 4674
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/common/cache/LocalCache$EntryIterator;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lcom/google/common/cache/LocalCache$EntryIterator;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    .line 4694
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_6

    .line 4699
    :cond_5
    :goto_5
    return v2

    :cond_6
    move-object v0, p1

    .line 4697
    check-cast v0, Ljava/util/Map$Entry;

    .line 4698
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4699
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto :goto_5
.end method
