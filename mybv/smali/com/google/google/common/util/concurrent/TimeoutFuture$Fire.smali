.class final Lcom/google/common/util/concurrent/TimeoutFuture$Fire;
.super Ljava/lang/Object;
.source "TimeoutFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/TimeoutFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Fire"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field timeoutFutureRef:Lcom/google/common/util/concurrent/TimeoutFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/TimeoutFuture",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/TimeoutFuture;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/TimeoutFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/util/concurrent/TimeoutFuture$Fire;, "Lcom/google/common/util/concurrent/TimeoutFuture$Fire<TV;>;"
    .local p1, "timeoutFuture":Lcom/google/common/util/concurrent/TimeoutFuture;, "Lcom/google/common/util/concurrent/TimeoutFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;->timeoutFutureRef:Lcom/google/common/util/concurrent/TimeoutFuture;

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/TimeoutFuture$Fire;, "Lcom/google/common/util/concurrent/TimeoutFuture$Fire<TV;>;"
    const/4 v5, 0x1

    .line 92
    iget-object v1, p0, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;->timeoutFutureRef:Lcom/google/common/util/concurrent/TimeoutFuture;

    .line 93
    .local v1, "timeoutFuture":Lcom/google/common/util/concurrent/TimeoutFuture;, "Lcom/google/common/util/concurrent/TimeoutFuture<TV;>;"
    if-nez v1, :cond_6

    .line 125
    :cond_5
    :goto_5
    return-void

    .line 96
    :cond_6
    # getter for: Lcom/google/common/util/concurrent/TimeoutFuture;->delegateRef:Lcom/google/common/util/concurrent/ListenableFuture;
    invoke-static {v1}, Lcom/google/common/util/concurrent/TimeoutFuture;->access$000(Lcom/google/common/util/concurrent/TimeoutFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 97
    .local v0, "delegate":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    if-eqz v0, :cond_5

    .line 113
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;->timeoutFutureRef:Lcom/google/common/util/concurrent/TimeoutFuture;

    .line 114
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 115
    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/TimeoutFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    goto :goto_5

    .line 120
    :cond_19
    :try_start_19
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Future timed out: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/TimeoutFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_38

    .line 122
    invoke-interface {v0, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_5

    :catchall_38
    move-exception v2

    invoke-interface {v0, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    throw v2
.end method
