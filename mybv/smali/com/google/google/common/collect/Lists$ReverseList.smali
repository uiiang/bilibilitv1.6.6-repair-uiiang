.class Lcom/google/common/collect/Lists$ReverseList;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final forwardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 835
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    .local p1, "forwardList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 836
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    .line 837
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/Lists$ReverseList;I)I
    .registers 3
    .param p0, "x0"    # Lcom/google/common/collect/Lists$ReverseList;
    .param p1, "x1"    # I

    .prologue
    .line 832
    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v0

    return v0
.end method

.method private reverseIndex(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 844
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->size()I

    move-result v0

    .line 845
    .local v0, "size":I
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 846
    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, p1

    return v1
.end method

.method private reversePosition(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 850
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->size()I

    move-result v0

    .line 851
    .local v0, "size":I
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 852
    sub-int v1, v0, p1

    return v1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 857
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 858
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 862
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 863
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 882
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reverseIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getForwardList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 840
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 898
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 903
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v1

    .line 904
    .local v1, "start":I
    iget-object v2, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 905
    .local v0, "forwardIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    new-instance v2, Lcom/google/common/collect/Lists$ReverseList$1;

    invoke-direct {v2, p0, v0}, Lcom/google/common/collect/Lists$ReverseList$1;-><init>(Lcom/google/common/collect/Lists$ReverseList;Ljava/util/ListIterator;)V

    return-object v2
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 867
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reverseIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected removeRange(II)V
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 872
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Lists$ReverseList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 873
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 877
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reverseIndex(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 887
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 892
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList;, "Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 893
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
