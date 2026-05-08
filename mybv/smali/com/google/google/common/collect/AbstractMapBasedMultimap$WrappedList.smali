.class Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;
.super Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapBasedMultimap",
        "<TK;TV;>.WrappedCollection;",
        "Ljava/util/List",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .registers 5
    .param p1    # Lcom/google/common/collect/AbstractMapBasedMultimap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "Lcom/google/common/collect/AbstractMapBasedMultimap",
            "<TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .prologue
    .line 774
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p4, "ancestor":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 775
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 776
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 813
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    .local p2, "element":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 814
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getDelegate()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 815
    .local v0, "wasEmpty":Z
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 816
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    # operator++ for: Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$208(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 817
    if-eqz v0, :cond_1c

    .line 818
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->addToMap()V

    .line 820
    :cond_1c
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 784
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 785
    const/4 v0, 0x0

    .line 796
    :cond_7
    :goto_7
    return v0

    .line 787
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->size()I

    move-result v2

    .line 788
    .local v2, "oldSize":I
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 789
    .local v0, "changed":Z
    if-eqz v0, :cond_7

    .line 790
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getDelegate()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 791
    .local v1, "newSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    sub-int v4, v1, v2

    # += operator for: Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 792
    if-nez v2, :cond_7

    .line 793
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->addToMap()V

    goto :goto_7
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 801
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 802
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getListDelegate()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 779
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 833
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 834
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 839
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 840
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 845
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 846
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 851
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 852
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 824
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 825
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 826
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    # operator-- for: Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 827
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->removeIfEmpty()V

    .line 828
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 807
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    .local p2, "element":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 808
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 857
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 858
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v3

    if-nez v3, :cond_1c

    .end local p0    # "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    :goto_17
    # invokes: Lcom/google/common/collect/AbstractMapBasedMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;
    invoke-static {v0, v1, v2, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$300(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .restart local p0    # "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList;"
    :cond_1c
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object p0

    goto :goto_17
.end method
