.class final Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;
.super Lcom/google/common/util/concurrent/InterruptibleTask;
.source "TrustedListenableFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/TrustedListenableFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrustedFutureInterruptibleTask"
.end annotation


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/TrustedListenableFutureTask;Ljava/util/concurrent/Callable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleTask;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;-><init>()V

    .line 103
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    iput-object v0, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->callable:Ljava/util/concurrent/Callable;

    .line 104
    return-void
.end method


# virtual methods
.method runInterruptibly()V
    .registers 4

    .prologue
    .line 109
    .local p0, "this":Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleTask;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_13

    .line 111
    :try_start_8
    iget-object v1, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    iget-object v2, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->set(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_13} :catch_14

    .line 116
    :cond_13
    :goto_13
    return-void

    .line 112
    :catch_14
    move-exception v0

    .line 113
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->setException(Ljava/lang/Throwable;)Z

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    .local p0, "this":Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleTask;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->callable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method wasInterrupted()Z
    .registers 2

    .prologue
    .line 120
    .local p0, "this":Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleTask;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->wasInterrupted()Z

    move-result v0

    return v0
.end method
