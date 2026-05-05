.class Lcom/google/common/collect/StandardTable$Column;
.super Lcom/google/common/collect/Maps$ViewCachingAbstractMap;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/StandardTable$Column$Values;,
        Lcom/google/common/collect/StandardTable$Column$KeySet;,
        Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;,
        Lcom/google/common/collect/StandardTable$Column$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ViewCachingAbstractMap",
        "<TR;TV;>;"
    }
.end annotation


# instance fields
.field final columnKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;-><init>()V

    .line 405
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    .line 406
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 420
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createEntrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Column$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$Column$EntrySet;-><init>(Lcom/google/common/collect/StandardTable$Column;Lcom/google/common/collect/StandardTable$1;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 542
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Column$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$Column$KeySet;-><init>(Lcom/google/common/collect/StandardTable$Column;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Column$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$Column$Values;-><init>(Lcom/google/common/collect/StandardTable$Column;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    .local p1, "key":Ljava/lang/Object;, "TR;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method removeFromColumnIf(Lcom/google/common/base/Predicate;)Z
    .registers 8
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TR;TV;>;>;"
    const/4 v0, 0x0

    .line 435
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v5, v5, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 436
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;>;"
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 437
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 438
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 439
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    iget-object v5, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 440
    .local v4, "value":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 441
    iget-object v5, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const/4 v0, 0x1

    .line 443
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 444
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 448
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_45
    return v0
.end method
