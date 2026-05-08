.class final Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;
.super Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsMapOfRanges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$IteratorBasedAbstractMap",
        "<",
        "Lcom/google/common/collect/Range",
        "<TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final entryIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeRangeMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap;Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.AsMapOfRanges;"
    .local p2, "entryIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->entryIterable:Ljava/lang/Iterable;

    .line 226
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 230
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.AsMapOfRanges;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.AsMapOfRanges;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->entryIterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
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
    .line 235
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.AsMapOfRanges;"
    instance-of v2, p1, Lcom/google/common/collect/Range;

    if-eqz v2, :cond_26

    move-object v0, p1

    .line 236
    check-cast v0, Lcom/google/common/collect/Range;

    .line 237
    .local v0, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<*>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->this$0:Lcom/google/common/collect/TreeRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;
    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    .line 238
    .local v1, "rangeMapEntry":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 239
    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 242
    .end local v0    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<*>;"
    .end local v1    # "rangeMapEntry":Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    :goto_25
    return-object v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public size()I
    .registers 2

    .prologue
    .line 247
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.AsMapOfRanges;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->this$0:Lcom/google/common/collect/TreeRangeMap;

    # getter for: Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;
    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0

    return v0
.end method
