.class Lcom/google/common/collect/Multisets$3$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$3;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multisets$3;

.field final synthetic val$iterator1:Ljava/util/Iterator;

.field final synthetic val$iterator2:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$3;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .registers 4

    .prologue
    .line 560
    iput-object p1, p0, Lcom/google/common/collect/Multisets$3$1;->this$0:Lcom/google/common/collect/Multisets$3;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$3$1;->val$iterator1:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/Multisets$3$1;->val$iterator2:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Lcom/google/common/collect/Multiset$Entry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v4, p0, Lcom/google/common/collect/Multisets$3$1;->val$iterator1:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 564
    iget-object v4, p0, Lcom/google/common/collect/Multisets$3$1;->val$iterator1:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Multiset$Entry;

    .line 565
    .local v2, "entry1":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 566
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/google/common/collect/Multisets$3$1;->this$0:Lcom/google/common/collect/Multisets$3;

    iget-object v5, v5, Lcom/google/common/collect/Multisets$3;->val$multiset2:Lcom/google/common/collect/Multiset;

    invoke-interface {v5, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v5

    add-int v0, v4, v5

    .line 567
    .local v0, "count":I
    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v4

    .line 576
    .end local v0    # "count":I
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    .end local v2    # "entry1":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    :goto_26
    return-object v4

    .line 569
    :cond_27
    iget-object v4, p0, Lcom/google/common/collect/Multisets$3$1;->val$iterator2:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 570
    iget-object v4, p0, Lcom/google/common/collect/Multisets$3$1;->val$iterator2:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Multiset$Entry;

    .line 571
    .local v3, "entry2":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v3}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 572
    .restart local v1    # "element":Ljava/lang/Object;, "TE;"
    iget-object v4, p0, Lcom/google/common/collect/Multisets$3$1;->this$0:Lcom/google/common/collect/Multisets$3;

    iget-object v4, v4, Lcom/google/common/collect/Multisets$3;->val$multiset1:Lcom/google/common/collect/Multiset;

    invoke-interface {v4, v1}, Lcom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 573
    invoke-interface {v3}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    invoke-static {v1, v4}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v4

    goto :goto_26

    .line 576
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    .end local v3    # "entry2":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    :cond_4e
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$3$1;->endOfData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Multiset$Entry;

    goto :goto_26
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$3$1;->computeNext()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
