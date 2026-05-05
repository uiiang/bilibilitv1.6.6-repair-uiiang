.class final Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 2441
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.WriteThroughEntry;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 2442
    iput-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    .line 2443
    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    .line 2444
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.WriteThroughEntry;"
    const/4 v1, 0x0

    .line 2459
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_21

    move-object v0, p1

    .line 2460
    check-cast v0, Ljava/util/Map$Entry;

    .line 2461
    .local v0, "that":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    .line 2463
    .end local v0    # "that":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_21
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2448
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.WriteThroughEntry;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

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
    .line 2453
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.WriteThroughEntry;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 2469
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.WriteThroughEntry;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2474
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.WriteThroughEntry;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2475
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    .line 2476
    return-object v0
.end method
