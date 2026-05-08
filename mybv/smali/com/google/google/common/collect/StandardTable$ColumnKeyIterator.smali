.class Lcom/google/common/collect/StandardTable$ColumnKeyIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TC;>;"
    }
.end annotation


# instance fields
.field entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field final mapIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field final seen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .registers 3

    .prologue
    .line 698
    .local p0, "this":Lcom/google/common/collect/StandardTable$ColumnKeyIterator;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeyIterator;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 701
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->seen:Ljava/util/Map;

    .line 702
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->mapIterator:Ljava/util/Iterator;

    .line 703
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->entryIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/StandardTable;
    .param p2, "x1"    # Lcom/google/common/collect/StandardTable$1;

    .prologue
    .line 698
    .local p0, "this":Lcom/google/common/collect/StandardTable$ColumnKeyIterator;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeyIterator;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 708
    .local p0, "this":Lcom/google/common/collect/StandardTable$ColumnKeyIterator;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeyIterator;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 709
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 710
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->seen:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->seen:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 717
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TC;TV;>;"
    :goto_2d
    return-object v1

    .line 714
    :cond_2e
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->mapIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 715
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->mapIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->entryIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 717
    :cond_49
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;->endOfData()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2d
.end method
