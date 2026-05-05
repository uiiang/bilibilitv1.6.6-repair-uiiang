.class public abstract Lcom/google/common/collect/ForwardingMapEntry;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingMapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


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
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/ForwardingMapEntry;, "Lcom/google/common/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/ForwardingMapEntry;, "Lcom/google/common/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/ForwardingMapEntry;, "Lcom/google/common/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/google/common/collect/ForwardingMapEntry;, "Lcom/google/common/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/google/common/collect/ForwardingMapEntry;, "Lcom/google/common/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/collect/ForwardingMapEntry;, "Lcom/google/common/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/google/common/collect/ForwardingMapEntry;, "Lcom/google/common/collect/ForwardingMapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected standardEquals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/ForwardingMapEntry;, "Lcom/google/common/collect/ForwardingMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 96
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_25

    move-object v0, p1

    .line 97
    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    .local v0, "that":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v1, 0x1

    .line 101
    .end local v0    # "that":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_25
    return v1
.end method

.method protected standardHashCode()I
    .registers 5

    .prologue
    .local p0, "this":Lcom/google/common/collect/ForwardingMapEntry;, "Lcom/google/common/collect/ForwardingMapEntry<TK;TV;>;"
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_10

    move v3, v2

    :goto_c
    if-nez v1, :cond_15

    :goto_e
    xor-int/2addr v2, v3

    return v2

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_c

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e
.end method

.method protected standardToString()Ljava/lang/String;
    .registers 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/google/common/collect/ForwardingMapEntry;, "Lcom/google/common/collect/ForwardingMapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
