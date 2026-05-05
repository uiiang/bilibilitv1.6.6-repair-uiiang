.class public abstract Lcom/google/common/collect/BinaryTreeTraverser;
.super Lcom/google/common/collect/TreeTraverser;
.source "BinaryTreeTraverser.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;,
        Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;,
        Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/TreeTraverser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeTraverser;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic access$000(Ljava/util/Deque;Lcom/google/common/base/Optional;)V
    .registers 2
    .param p0, "x0"    # Ljava/util/Deque;
    .param p1, "x1"    # Lcom/google/common/base/Optional;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser;->pushIfPresent(Ljava/util/Deque;Lcom/google/common/base/Optional;)V

    return-void
.end method

.method private static pushIfPresent(Ljava/util/Deque;Lcom/google/common/base/Optional;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TT;>;",
            "Lcom/google/common/base/Optional",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    .local p1, "node":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 207
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 209
    :cond_d
    return-void
.end method


# virtual methods
.method public final children(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser$1;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final inOrderTraversal(Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser$2;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation
.end method

.method postOrderIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method preOrderIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation
.end method
