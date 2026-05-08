.class Lcom/google/common/collect/ImmutableList$ReverseImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient forwardList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    .local p1, "backingList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 505
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    .line 506
    return-void
.end method

.method private reverseIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 509
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private reversePosition(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 513
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 523
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 547
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 528
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 529
    .local v0, "index":I
    if-ltz v0, :cond_d

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    :goto_c
    return v1

    :cond_d
    const/4 v1, -0x1

    goto :goto_c
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 557
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 501
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 534
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 535
    .local v0, "index":I
    if-ltz v0, :cond_d

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    :goto_c
    return v1

    :cond_d
    const/4 v1, -0x1

    goto :goto_c
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 501
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->listIterator()Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 501
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 552
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 540
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 541
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 501
    .local p0, "this":Lcom/google/common/collect/ImmutableList$ReverseImmutableList;, "Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
