.class Lcom/google/common/collect/AbstractBiMap$BiMapEntry;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BiMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractBiMap;Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$BiMapEntry;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.BiMapEntry;"
    .local p2, "delegate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$BiMapEntry;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    .line 294
    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap$BiMapEntry;->delegate:Ljava/util/Map$Entry;

    .line 295
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 290
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$BiMapEntry;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.BiMapEntry;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$BiMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$BiMapEntry;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.BiMapEntry;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$BiMapEntry;->delegate:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$BiMapEntry;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>.BiMapEntry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x1

    .line 305
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$BiMapEntry;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "entry no longer in map"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 307
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$BiMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 314
    .end local p1    # "value":Ljava/lang/Object;, "TV;"
    :goto_1a
    return-object p1

    .line 310
    .restart local p1    # "value":Ljava/lang/Object;, "TV;"
    :cond_1b
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$BiMapEntry;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    move v1, v2

    :goto_24
    const-string v3, "value already present: %s"

    invoke-static {v1, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 311
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$BiMapEntry;->delegate:Ljava/util/Map$Entry;

    invoke-interface {v1, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 312
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$BiMapEntry;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$BiMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/AbstractBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "entry no longer in map"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 313
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$BiMapEntry;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$BiMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    # invokes: Lcom/google/common/collect/AbstractBiMap;->updateInverseMap(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v1, v3, v2, v0, p1}, Lcom/google/common/collect/AbstractBiMap;->access$500(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    .line 314
    goto :goto_1a

    .line 310
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4d
    const/4 v1, 0x0

    goto :goto_24
.end method
