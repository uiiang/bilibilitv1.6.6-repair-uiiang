.class Lcom/google/common/graph/MapRetrievalCache;
.super Lcom/google/common/graph/MapIteratorCache;
.source "MapRetrievalCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/MapRetrievalCache$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/MapIteratorCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MapRetrievalCache$CacheEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private transient cacheEntry2:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MapRetrievalCache$CacheEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/google/common/graph/MapRetrievalCache;, "Lcom/google/common/graph/MapRetrievalCache<TK;TV;>;"
    .local p1, "backingMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/MapIteratorCache;-><init>(Ljava/util/Map;)V

    .line 34
    return-void
.end method

.method private addToCache(Lcom/google/common/graph/MapRetrievalCache$CacheEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/MapRetrievalCache$CacheEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/google/common/graph/MapRetrievalCache;, "Lcom/google/common/graph/MapRetrievalCache<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/graph/MapRetrievalCache$CacheEntry;, "Lcom/google/common/graph/MapRetrievalCache$CacheEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    iput-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry2:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    .line 93
    iput-object p1, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    .line 94
    return-void
.end method

.method private addToCache(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/graph/MapRetrievalCache;, "Lcom/google/common/graph/MapRetrievalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    invoke-direct {v0, p1, p2}, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/common/graph/MapRetrievalCache;->addToCache(Lcom/google/common/graph/MapRetrievalCache$CacheEntry;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected clearCache()V
    .registers 2

    .prologue
    .local p0, "this":Lcom/google/common/graph/MapRetrievalCache;, "Lcom/google/common/graph/MapRetrievalCache<TK;TV;>;"
    const/4 v0, 0x0

    .line 81
    invoke-super {p0}, Lcom/google/common/graph/MapIteratorCache;->clearCache()V

    .line 82
    iput-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    .line 83
    iput-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry2:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    .line 84
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/graph/MapRetrievalCache;, "Lcom/google/common/graph/MapRetrievalCache<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/MapRetrievalCache;->getIfCached(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_9

    move-object v1, v0

    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v2, v0

    .line 48
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    .local v2, "value":Ljava/lang/Object;, "TV;"
    :goto_8
    return-object v2

    .line 44
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/common/graph/MapRetrievalCache;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_12

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/common/graph/MapRetrievalCache;->addToCache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    move-object v1, v0

    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    .restart local v1    # "value":Ljava/lang/Object;, "TV;"
    move-object v2, v0

    .line 48
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    .restart local v2    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_8
.end method

.method protected getIfCached(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/google/common/graph/MapRetrievalCache;, "Lcom/google/common/graph/MapRetrievalCache<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/MapIteratorCache;->getIfCached(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_7

    .line 76
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :goto_6
    return-object v1

    .line 65
    .restart local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_7
    iget-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    .line 66
    .local v0, "entry":Lcom/google/common/graph/MapRetrievalCache$CacheEntry;, "Lcom/google/common/graph/MapRetrievalCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_12

    iget-object v2, v0, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;->key:Ljava/lang/Object;

    if-ne v2, p1, :cond_12

    .line 67
    iget-object v1, v0, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;->value:Ljava/lang/Object;

    goto :goto_6

    .line 69
    :cond_12
    iget-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry2:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    .line 70
    if-eqz v0, :cond_20

    iget-object v2, v0, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;->key:Ljava/lang/Object;

    if-ne v2, p1, :cond_20

    .line 73
    invoke-direct {p0, v0}, Lcom/google/common/graph/MapRetrievalCache;->addToCache(Lcom/google/common/graph/MapRetrievalCache$CacheEntry;)V

    .line 74
    iget-object v1, v0, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;->value:Ljava/lang/Object;

    goto :goto_6

    .line 76
    :cond_20
    const/4 v1, 0x0

    goto :goto_6
.end method
