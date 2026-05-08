.class final Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "BinaryTreeTraverser.java"

# interfaces
.implements Lcom/google/common/collect/PeekingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/BinaryTreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;",
        "Lcom/google/common/collect/PeekingIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/BinaryTreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PreOrderIterator;"
    .local p2, "root":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    .line 102
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 103
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 107
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PreOrderIterator;"
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PreOrderIterator;"
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    # invokes: Lcom/google/common/collect/BinaryTreeTraverser;->pushIfPresent(Ljava/util/Deque;Lcom/google/common/base/Optional;)V
    invoke-static {v1, v2}, Lcom/google/common/collect/BinaryTreeTraverser;->access$000(Ljava/util/Deque;Lcom/google/common/base/Optional;)V

    .line 114
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    # invokes: Lcom/google/common/collect/BinaryTreeTraverser;->pushIfPresent(Ljava/util/Deque;Lcom/google/common/base/Optional;)V
    invoke-static {v1, v2}, Lcom/google/common/collect/BinaryTreeTraverser;->access$000(Ljava/util/Deque;Lcom/google/common/base/Optional;)V

    .line 115
    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PreOrderIterator;"
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
