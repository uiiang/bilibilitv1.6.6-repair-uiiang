.class final Lcom/google/common/collect/FilteredMultimapValues;
.super Ljava/util/AbstractCollection;
.source "FilteredMultimapValues.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final multimap:Lcom/google/common/collect/FilteredMultimap;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/FilteredMultimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredMultimap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/FilteredMultimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/google/common/collect/FilteredMultimapValues;, "Lcom/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/FilteredMultimap;, "Lcom/google/common/collect/FilteredMultimap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/FilteredMultimap;

    iput-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    .line 42
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 95
    .local p0, "this":Lcom/google/common/collect/FilteredMultimapValues;, "Lcom/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/FilteredMultimap;->clear()V

    .line 96
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    .local p0, "this":Lcom/google/common/collect/FilteredMultimapValues;, "Lcom/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/FilteredMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/collect/FilteredMultimapValues;, "Lcom/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/FilteredMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/FilteredMultimapValues;, "Lcom/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v3}, Lcom/google/common/collect/FilteredMultimap;->entryPredicate()Lcom/google/common/base/Predicate;

    move-result-object v1

    .line 62
    .local v1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v3, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v3}, Lcom/google/common/collect/FilteredMultimap;->unfiltered()Lcom/google/common/collect/Multimap;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 63
    .local v2, "unfilteredItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 68
    const/4 v3, 0x1

    .line 71
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_34
    return v3

    :cond_35
    const/4 v3, 0x0

    goto :goto_34
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/collect/FilteredMultimapValues;, "Lcom/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/FilteredMultimap;->unfiltered()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v1}, Lcom/google/common/collect/FilteredMultimap;->entryPredicate()Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/google/common/collect/FilteredMultimapValues;, "Lcom/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/FilteredMultimap;->unfiltered()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v1}, Lcom/google/common/collect/FilteredMultimap;->entryPredicate()Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 56
    .local p0, "this":Lcom/google/common/collect/FilteredMultimapValues;, "Lcom/google/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/FilteredMultimap;->size()I

    move-result v0

    return v0
.end method
