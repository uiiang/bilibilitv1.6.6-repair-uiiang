.class final Lcom/google/common/util/concurrent/MoreExecutors$5;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field volatile thrownFromDelegate:Z

.field final synthetic val$delegate:Ljava/util/concurrent/Executor;

.field final synthetic val$future:Lcom/google/common/util/concurrent/AbstractFuture;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)V
    .registers 4

    .prologue
    .line 977
    iput-object p1, p0, Lcom/google/common/util/concurrent/MoreExecutors$5;->val$delegate:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$5;->val$future:Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$5;->thrownFromDelegate:Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 983
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$5;->val$delegate:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/common/util/concurrent/MoreExecutors$5$1;

    invoke-direct {v2, p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$5$1;-><init>(Lcom/google/common/util/concurrent/MoreExecutors$5;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    .line 999
    :cond_a
    :goto_a
    return-void

    .line 991
    :catch_b
    move-exception v0

    .line 992
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$5;->thrownFromDelegate:Z

    if-eqz v1, :cond_a

    .line 994
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$5;->val$future:Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_a
.end method
