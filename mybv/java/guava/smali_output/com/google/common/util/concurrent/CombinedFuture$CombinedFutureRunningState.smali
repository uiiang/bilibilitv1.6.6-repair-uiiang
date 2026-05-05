.class final Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;
.super Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CombinedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CombinedFutureRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/AggregateFuture",
        "<",
        "Ljava/lang/Object;",
        "TV;>.RunningState;"
    }
.end annotation


# instance fields
.field private task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/CombinedFuture",
            "<TV;>.CombinedFutureInterruptibleTask;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/util/concurrent/CombinedFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/CombinedFuture;Lcom/google/common/collect/ImmutableCollection;ZLcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;)V
    .registers 6
    .param p3, "allMustSucceed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+",
            "Ljava/lang/Object;",
            ">;>;Z",
            "Lcom/google/common/util/concurrent/CombinedFuture",
            "<TV;>.CombinedFutureInterruptibleTask;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureRunningState;"
    .local p2, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+Ljava/lang/Object;>;>;"
    .local p4, "task":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureInterruptibleTask;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;ZZ)V

    .line 65
    iput-object p4, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 66
    return-void
.end method


# virtual methods
.method collectOneValue(ZILjava/lang/Object;)V
    .registers 4
    .param p1, "allMustSucceed"    # Z
    .param p2, "index"    # I
    .param p3, "returnValue"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureRunningState;"
    return-void
.end method

.method handleAllCompleted()V
    .registers 3

    .prologue
    .line 73
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureRunningState;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 74
    .local v0, "localTask":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureInterruptibleTask;"
    if-eqz v0, :cond_8

    .line 75
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->execute()V

    .line 79
    :goto_7
    return-void

    .line 77
    :cond_8
    iget-object v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/CombinedFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_7
.end method

.method interruptTask()V
    .registers 2

    .prologue
    .line 89
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureRunningState;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 90
    .local v0, "localTask":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureInterruptibleTask;"
    if-eqz v0, :cond_7

    .line 91
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->interruptTask()V

    .line 93
    :cond_7
    return-void
.end method

.method releaseResourcesAfterFailure()V
    .registers 2

    .prologue
    .line 83
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureRunningState;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->releaseResourcesAfterFailure()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;->task:Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;

    .line 85
    return-void
.end method
