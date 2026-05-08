.class final Lcom/google/common/cache/LocalCache$WriteThroughEntry;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
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

.field final synthetic this$0:Lcom/google/common/cache/LocalCache;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 4500
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteThroughEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4501
    iput-object p2, p0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->key:Ljava/lang/Object;

    .line 4502
    iput-object p3, p0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->value:Ljava/lang/Object;

    .line 4503
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
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteThroughEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    const/4 v1, 0x0

    .line 4518
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_21

    move-object v0, p1

    .line 4519
    check-cast v0, Ljava/util/Map$Entry;

    .line 4520
    .local v0, "that":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    .line 4522
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
    .line 4507
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteThroughEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->key:Ljava/lang/Object;

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
    .line 4512
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteThroughEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 4528
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteThroughEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->value:Ljava/lang/Object;

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
    .line 4533
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteThroughEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4534
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->value:Ljava/lang/Object;

    .line 4535
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4540
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteThroughEntry;, "Lcom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
