.class Lcom/google/common/collect/ConsumingQueueIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "ConsumingQueueIterator.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Queue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/ConsumingQueueIterator;, "Lcom/google/common/collect/ConsumingQueueIterator<TT;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    .line 39
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/google/common/collect/ConsumingQueueIterator;, "Lcom/google/common/collect/ConsumingQueueIterator<TT;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayDeque;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    .line 34
    iget-object v0, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 35
    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/collect/ConsumingQueueIterator;, "Lcom/google/common/collect/ConsumingQueueIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/common/collect/ConsumingQueueIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method
