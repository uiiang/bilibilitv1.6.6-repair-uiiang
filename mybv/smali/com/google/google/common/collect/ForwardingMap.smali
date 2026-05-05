.class public abstract Lcom/google/common/collect/ForwardingMap;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ForwardingMap$StandardEntrySet;,
        Lcom/google/common/collect/ForwardingMap$StandardValues;,
        Lcom/google/common/collect/ForwardingMap$StandardKeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingObject;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 66
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 89
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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
    .line 99
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
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
    .line 130
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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
    .line 135
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

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
    .line 104
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 140
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

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
    .line 120
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
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
    .line 84
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 73
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected standardClear()V
    .registers 2

    .prologue
    .line 189
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->clear(Ljava/util/Iterator;)V

    .line 190
    return-void
.end method

.method protected standardContainsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->containsKeyImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardContainsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 251
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->containsValueImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardEquals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 294
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardHashCode()I
    .registers 2

    .prologue
    .line 305
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method protected standardIsEmpty()Z
    .registers 2

    .prologue
    .line 283
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected standardPutAll(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->putAllImpl(Ljava/util/Map;Ljava/util/Map;)V

    .line 153
    return-void
.end method

.method protected standardRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 170
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 174
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 178
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :goto_25
    return-object v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method

.method protected standardToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-static {p0}, Lcom/google/common/collect/Maps;->toStringImpl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 125
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
