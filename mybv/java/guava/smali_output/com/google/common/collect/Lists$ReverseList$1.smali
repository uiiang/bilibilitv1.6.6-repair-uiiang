.class Lcom/google/common/collect/Lists$ReverseList$1;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$ReverseList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field canRemoveOrSet:Z

.field final synthetic this$0:Lcom/google/common/collect/Lists$ReverseList;

.field final synthetic val$forwardIterator:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$ReverseList;Ljava/util/ListIterator;)V
    .registers 3

    .prologue
    .line 905
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    iput-object p1, p0, Lcom/google/common/collect/Lists$ReverseList$1;->this$0:Lcom/google/common/collect/Lists$ReverseList;

    iput-object p2, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 912
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 914
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 918
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 923
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 929
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 931
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 932
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .registers 3

    .prologue
    .line 937
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->this$0:Lcom/google/common/collect/Lists$ReverseList;

    iget-object v1, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    # invokes: Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I
    invoke-static {v0, v1}, Lcom/google/common/collect/Lists$ReverseList;->access$000(Lcom/google/common/collect/Lists$ReverseList;I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 942
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_c

    .line 943
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 945
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 946
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 951
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 956
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 957
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 959
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 963
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 964
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 965
    return-void
.end method
