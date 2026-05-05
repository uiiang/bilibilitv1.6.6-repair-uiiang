.class Lcom/google/common/collect/BinaryTreeTraverser$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "BinaryTreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/BinaryTreeTraverser$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field doneLeft:Z

.field doneRight:Z

.field final synthetic this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser$1;)V
    .registers 2

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$1$1;, "Lcom/google/common/collect/BinaryTreeTraverser$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$1$1;, "Lcom/google/common/collect/BinaryTreeTraverser$1.1;"
    const/4 v4, 0x1

    .line 67
    iget-boolean v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneLeft:Z

    if-nez v2, :cond_1e

    .line 68
    iput-boolean v4, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneLeft:Z

    .line 69
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v2, v2, Lcom/google/common/collect/BinaryTreeTraverser$1;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v3, v3, Lcom/google/common/collect/BinaryTreeTraverser$1;->val$root:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/BinaryTreeTraverser;->leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 70
    .local v0, "left":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 71
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    .line 81
    .end local v0    # "left":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    :goto_1d
    return-object v2

    .line 74
    :cond_1e
    iget-boolean v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneRight:Z

    if-nez v2, :cond_3b

    .line 75
    iput-boolean v4, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneRight:Z

    .line 76
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v2, v2, Lcom/google/common/collect/BinaryTreeTraverser$1;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v3, v3, Lcom/google/common/collect/BinaryTreeTraverser$1;->val$root:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/BinaryTreeTraverser;->rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    .line 77
    .local v1, "right":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 78
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1d

    .line 81
    .end local v1    # "right":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    :cond_3b
    invoke-virtual {p0}, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1d
.end method
