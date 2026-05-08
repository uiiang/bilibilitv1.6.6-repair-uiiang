.class final Lcom/google/common/cache/LocalCache$Values;
.super Ljava/util/AbstractCollection;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<**>;"
        }
    .end annotation
.end field

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
    .line 4622
    .local p0, "this":Lcom/google/common/cache/LocalCache$Values;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    .local p2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<**>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Values;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4623
    iput-object p2, p0, Lcom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 4624
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 4638
    .local p0, "this":Lcom/google/common/cache/LocalCache$Values;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 4639
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 4648
    .local p0, "this":Lcom/google/common/cache/LocalCache$Values;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 4633
    .local p0, "this":Lcom/google/common/cache/LocalCache$Values;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 4643
    .local p0, "this":Lcom/google/common/cache/LocalCache$Values;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    new-instance v0, Lcom/google/common/cache/LocalCache$ValueIterator;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Values;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lcom/google/common/cache/LocalCache$ValueIterator;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 4628
    .local p0, "this":Lcom/google/common/cache/LocalCache$Values;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4656
    .local p0, "this":Lcom/google/common/cache/LocalCache$Values;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    # invokes: Lcom/google/common/cache/LocalCache;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/google/common/cache/LocalCache;->access$200(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 4661
    .local p0, "this":Lcom/google/common/cache/LocalCache$Values;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Values;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    # invokes: Lcom/google/common/cache/LocalCache;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/google/common/cache/LocalCache;->access$200(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
