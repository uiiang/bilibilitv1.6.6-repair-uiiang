.class public abstract Lcom/google/common/collect/ForwardingMultimap;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingMultimap.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;


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
        "Lcom/google/common/collect/ForwardingObject;",
        "Lcom/google/common/collect/Multimap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 40
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 53
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 143
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 148
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 82
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/google/common/collect/Multiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Z
    .registers 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result v0

    return v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
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
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 133
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/google/common/collect/ForwardingMultimap;, "Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
