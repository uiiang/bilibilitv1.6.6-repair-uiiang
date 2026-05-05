.class Lcom/google/common/graph/MapIteratorCache;
.super Ljava/lang/Object;
.source "MapIteratorCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySetCache:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache;, "Lcom/google/common/graph/MapIteratorCache<TK;TV;>;"
    .local p1, "backingMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/MapIteratorCache;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/graph/MapIteratorCache;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/common/graph/MapIteratorCache;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/graph/MapIteratorCache;
    .param p1, "x1"    # Ljava/util/Map$Entry;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/common/graph/MapIteratorCache;->entrySetCache:Ljava/util/Map$Entry;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 69
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache;, "Lcom/google/common/graph/MapIteratorCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/MapIteratorCache;->clearCache()V

    .line 70
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 71
    return-void
.end method

.method protected clearCache()V
    .registers 2

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache;, "Lcom/google/common/graph/MapIteratorCache<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/graph/MapIteratorCache;->entrySetCache:Ljava/util/Map$Entry;

    .line 133
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache;, "Lcom/google/common/graph/MapIteratorCache<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/MapIteratorCache;->getIfCached(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
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
    .line 74
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache;, "Lcom/google/common/graph/MapIteratorCache<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/MapIteratorCache;->getIfCached(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_7

    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :goto_6
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/common/graph/MapIteratorCache;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method protected getIfCached(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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
    .line 122
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache;, "Lcom/google/common/graph/MapIteratorCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache;->entrySetCache:Ljava/util/Map$Entry;

    .line 125
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_f

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 128
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public final getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
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
    .line 79
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache;, "Lcom/google/common/graph/MapIteratorCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache;, "Lcom/google/common/graph/MapIteratorCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/graph/MapIteratorCache;->clearCache()V

    .line 59
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache;, "Lcom/google/common/graph/MapIteratorCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/MapIteratorCache;->clearCache()V

    .line 65
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final unmodifiableKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/graph/MapIteratorCache;, "Lcom/google/common/graph/MapIteratorCache<TK;TV;>;"
    new-instance v0, Lcom/google/common/graph/MapIteratorCache$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/MapIteratorCache$1;-><init>(Lcom/google/common/graph/MapIteratorCache;)V

    return-object v0
.end method
