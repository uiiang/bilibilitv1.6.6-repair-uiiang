.class public abstract Lcom/google/common/collect/ForwardingSetMultimap;
.super Lcom/google/common/collect/ForwardingMultimap;
.source "ForwardingSetMultimap.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


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
        "Lcom/google/common/collect/ForwardingMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    .local p0, "this":Lcom/google/common/collect/ForwardingSetMultimap;, "Lcom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMultimap;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Lcom/google/common/collect/Multimap;
    .registers 2

    .prologue
    .line 34
    .local p0, "this":Lcom/google/common/collect/ForwardingSetMultimap;, "Lcom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34
    .local p0, "this":Lcom/google/common/collect/ForwardingSetMultimap;, "Lcom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 34
    .local p0, "this":Lcom/google/common/collect/ForwardingSetMultimap;, "Lcom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/collect/ForwardingSetMultimap;, "Lcom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lcom/google/common/collect/ForwardingSetMultimap;, "Lcom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/collect/ForwardingSetMultimap;, "Lcom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lcom/google/common/collect/ForwardingSetMultimap;, "Lcom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
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
            ")",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/google/common/collect/ForwardingSetMultimap;, "Lcom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/SetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 34
    .local p0, "this":Lcom/google/common/collect/ForwardingSetMultimap;, "Lcom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ForwardingSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/google/common/collect/ForwardingSetMultimap;, "Lcom/google/common/collect/ForwardingSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/SetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
