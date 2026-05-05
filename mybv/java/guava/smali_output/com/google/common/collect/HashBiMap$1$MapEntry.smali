.class Lcom/google/common/collect/HashBiMap$1$MapEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field delegate:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$1;Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lcom/google/common/collect/HashBiMap$1$MapEntry;, "Lcom/google/common/collect/HashBiMap.1.MapEntry;"
    .local p2, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 482
    iput-object p2, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 483
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "this":Lcom/google/common/collect/HashBiMap$1$MapEntry;, "Lcom/google/common/collect/HashBiMap.1.MapEntry;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

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
    .line 492
    .local p0, "this":Lcom/google/common/collect/HashBiMap$1$MapEntry;, "Lcom/google/common/collect/HashBiMap.1.MapEntry;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap$1$MapEntry;, "Lcom/google/common/collect/HashBiMap.1.MapEntry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 497
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v1, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    .line 498
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 499
    .local v2, "valueHash":I
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v3, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    if-ne v2, v3, :cond_16

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 514
    .end local p1    # "value":Ljava/lang/Object;, "TV;"
    :goto_15
    return-object p1

    .line 502
    .restart local p1    # "value":Ljava/lang/Object;, "TV;"
    :cond_16
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    # invokes: Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    invoke-static {v3, p1, v2}, Lcom/google/common/collect/HashBiMap;->access$400(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v3

    if-nez v3, :cond_69

    const/4 v3, 0x1

    :goto_21
    const-string v4, "value already present: %s"

    invoke-static {v3, v4, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 503
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    # invokes: Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V
    invoke-static {v3, v4}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 504
    new-instance v0, Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v4, v4, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    invoke-direct {v0, v3, v4, p1, v2}, Lcom/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 506
    .local v0, "newEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    # invokes: Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$BiEntry;Lcom/google/common/collect/HashBiMap$BiEntry;)V
    invoke-static {v3, v0, v4}, Lcom/google/common/collect/HashBiMap;->access$500(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 507
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iput-object v5, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 508
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iput-object v5, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 509
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iget-object v4, v4, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    # getter for: Lcom/google/common/collect/HashBiMap;->modCount:I
    invoke-static {v4}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    move-result v4

    iput v4, v3, Lcom/google/common/collect/HashBiMap$1;->expectedModCount:I

    .line 510
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$1;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    if-ne v3, v4, :cond_65

    .line 511
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iput-object v0, v3, Lcom/google/common/collect/HashBiMap$1;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 513
    :cond_65
    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    move-object p1, v1

    .line 514
    goto :goto_15

    .line 502
    .end local v0    # "newEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_69
    const/4 v3, 0x0

    goto :goto_21
.end method
