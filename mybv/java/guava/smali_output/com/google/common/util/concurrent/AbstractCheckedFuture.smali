.class public abstract Lcom/google/common/util/concurrent/AbstractCheckedFuture;
.super Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;
.source "AbstractCheckedFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/CheckedFuture;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture",
        "<TV;>;",
        "Lcom/google/common/util/concurrent/CheckedFuture",
        "<TV;TX;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCheckedFuture;, "Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TX;>;"
    .local p1, "delegate":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 42
    return-void
.end method


# virtual methods
.method public checkedGet()Ljava/lang/Object;
    .registers 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCheckedFuture;, "Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TX;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_3} :catch_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_18

    move-result-object v1

    return-object v1

    .line 77
    :catch_5
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 80
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_12
    move-exception v0

    .line 81
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 82
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_18
    move-exception v0

    .line 83
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^",
            "Ljava/util/concurrent/TimeoutException;",
            "^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCheckedFuture;, "Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TX;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_3} :catch_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_18

    move-result-object v1

    return-object v1

    .line 105
    :catch_5
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 107
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 108
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_12
    move-exception v0

    .line 109
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 110
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_18
    move-exception v0

    .line 111
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method

.method protected abstract mapException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TX;"
        }
    .end annotation
.end method
