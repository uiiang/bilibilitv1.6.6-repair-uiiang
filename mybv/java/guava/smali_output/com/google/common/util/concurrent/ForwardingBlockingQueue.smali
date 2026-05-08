.class public abstract Lcom/google/common/util/concurrent/ForwardingBlockingQueue;
.super Lcom/google/common/collect/ForwardingQueue;
.source "ForwardingBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 45
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingBlockingQueue;, "Lcom/google/common/util/concurrent/ForwardingBlockingQueue<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingQueue;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingBlockingQueue;, "Lcom/google/common/util/concurrent/ForwardingBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingBlockingQueue;, "Lcom/google/common/util/concurrent/ForwardingBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Queue;
    .registers 2

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingBlockingQueue;, "Lcom/google/common/util/concurrent/ForwardingBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;"
        }
    .end annotation
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingBlockingQueue;, "Lcom/google/common/util/concurrent/ForwardingBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 4
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingBlockingQueue;, "Lcom/google/common/util/concurrent/ForwardingBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 7
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingBlockingQueue;, "Lcom/google/common/util/concurrent/ForwardingBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingBlockingQueue;, "Lcom/google/common/util/concurrent/ForwardingBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingBlockingQueue;, "Lcom/google/common/util/concurrent/ForwardingBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public remainingCapacity()I
    .registers 2

    .prologue
    .line 77
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingBlockingQueue;, "Lcom/google/common/util/concurrent/ForwardingBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingBlockingQueue;, "Lcom/google/common/util/concurrent/ForwardingBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingQueue;->delegate()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
