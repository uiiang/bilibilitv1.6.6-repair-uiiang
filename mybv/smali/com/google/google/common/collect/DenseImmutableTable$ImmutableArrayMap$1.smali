.class Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->entryIterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private index:I

.field private final maxIndex:I

.field final synthetic this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;)V
    .registers 3

    .prologue
    .line 119
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;, "Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap.1;"
    iput-object p1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    .line 121
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    invoke-virtual {v0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->maxIndex:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 119
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;, "Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;, "Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap.1;"
    iget v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    :goto_6
    iget v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    iget v2, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->maxIndex:I

    if-ge v1, v2, :cond_2a

    .line 126
    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    iget v2, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_23

    .line 128
    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    iget v2, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 131
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :goto_22
    return-object v1

    .line 125
    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_23
    iget v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    goto :goto_6

    .line 131
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_2a
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_22
.end method
