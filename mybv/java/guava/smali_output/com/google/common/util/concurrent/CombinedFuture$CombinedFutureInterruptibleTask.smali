.class abstract Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;
.super Lcom/google/common/util/concurrent/InterruptibleTask;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CombinedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CombinedFutureInterruptibleTask"
.end annotation


# instance fields
.field private final listenerExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/google/common/util/concurrent/CombinedFuture;

.field volatile thrownByExecute:Z


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/CombinedFuture;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p2, "listenerExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureInterruptibleTask;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->thrownByExecute:Z

    .line 102
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->listenerExecutor:Ljava/util/concurrent/Executor;

    .line 103
    return-void
.end method


# virtual methods
.method final execute()V
    .registers 3

    .prologue
    .line 129
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureInterruptibleTask;"
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->listenerExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    .line 135
    :cond_5
    :goto_5
    return-void

    .line 130
    :catch_6
    move-exception v0

    .line 131
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->thrownByExecute:Z

    if-eqz v1, :cond_5

    .line 132
    iget-object v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/CombinedFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_5
.end method

.method final runInterruptibly()V
    .registers 4

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureInterruptibleTask;"
    const/4 v2, 0x0

    .line 107
    iput-boolean v2, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->thrownByExecute:Z

    .line 109
    iget-object v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/CombinedFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_e

    .line 111
    :try_start_b
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->setValue()V
    :try_end_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_e} :catch_1a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_21

    .line 120
    :cond_e
    :goto_e
    return-void

    .line 112
    :catch_f
    move-exception v0

    .line 113
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/CombinedFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_e

    .line 114
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1a
    move-exception v0

    .line 115
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/CombinedFuture;->cancel(Z)Z

    goto :goto_e

    .line 116
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_21
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/CombinedFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_e
.end method

.method abstract setValue()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method final wasInterrupted()Z
    .registers 2

    .prologue
    .line 124
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureInterruptibleTask;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CombinedFuture;->wasInterrupted()Z

    move-result v0

    return v0
.end method
