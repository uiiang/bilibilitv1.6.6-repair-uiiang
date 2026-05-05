.class final Lcom/google/common/util/concurrent/Futures$4;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/common/util/concurrent/FutureCallback;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    .registers 3

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$4;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$4;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1121
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$4;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_17
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_1e

    move-result-object v1

    .line 1132
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$4;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v2, v1}, Lcom/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1133
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :goto_b
    return-void

    .line 1122
    :catch_c
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$4;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 1125
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_17
    move-exception v0

    .line 1126
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$4;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v2, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 1128
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1e
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/lang/Error;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$4;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v2, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_b
.end method
