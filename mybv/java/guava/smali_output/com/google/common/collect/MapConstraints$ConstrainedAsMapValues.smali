.class Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;
.super Lcom/google/common/collect/ForwardingCollection;
.source "MapConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstrainedAsMapValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues<TK;TV;>;"
    .local p1, "delegate":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Collection<TV;>;>;"
    .local p2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 382
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->delegate:Ljava/util/Collection;

    .line 383
    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->entrySet:Ljava/util/Set;

    .line 384
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 424
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardContains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 372
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->delegate:Ljava/util/Collection;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->entrySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 394
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v1, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;-><init>(Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 434
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 414
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardToArray()[Ljava/lang/Object;

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
    .line 419
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
