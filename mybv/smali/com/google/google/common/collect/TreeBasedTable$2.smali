.class Lcom/google/common/collect/TreeBasedTable$2;
.super Lcom/google/common/collect/AbstractIterator;
.source "TreeBasedTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeBasedTable;->createColumnKeyIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TC;>;"
    }
.end annotation


# instance fields
.field lastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeBasedTable;

.field final synthetic val$comparator:Ljava/util/Comparator;

.field final synthetic val$merged:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/util/Iterator;Ljava/util/Comparator;)V
    .registers 4

    .prologue
    .line 332
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable$2;, "Lcom/google/common/collect/TreeBasedTable.2;"
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$2;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iput-object p2, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$merged:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

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
    .line 337
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable$2;, "Lcom/google/common/collect/TreeBasedTable.2;"
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$merged:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 338
    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$merged:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 339
    .local v1, "next":Ljava/lang/Object;, "TC;"
    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_24

    const/4 v0, 0x1

    .line 342
    .local v0, "duplicate":Z
    :goto_1d
    if-nez v0, :cond_0

    .line 343
    iput-object v1, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    .line 344
    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    .line 349
    .end local v0    # "duplicate":Z
    .end local v1    # "next":Ljava/lang/Object;, "TC;"
    :goto_23
    return-object v2

    .line 339
    .restart local v1    # "next":Ljava/lang/Object;, "TC;"
    :cond_24
    const/4 v0, 0x0

    goto :goto_1d

    .line 348
    .end local v1    # "next":Ljava/lang/Object;, "TC;"
    :cond_26
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    .line 349
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$2;->endOfData()Ljava/lang/Object;

    move-result-object v2

    goto :goto_23
.end method
