.class final Lcom/google/common/util/concurrent/TimeoutFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "TimeoutFuture.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/TimeoutFuture$Fire;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private delegateRef:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private timer:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/util/concurrent/TimeoutFuture;, "Lcom/google/common/util/concurrent/TimeoutFuture<TV;>;"
    .local p1, "delegate":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->delegateRef:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/TimeoutFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/TimeoutFuture;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->delegateRef:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 8
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduledExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "delegate":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    new-instance v1, Lcom/google/common/util/concurrent/TimeoutFuture;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/TimeoutFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 43
    .local v1, "result":Lcom/google/common/util/concurrent/TimeoutFuture;, "Lcom/google/common/util/concurrent/TimeoutFuture<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;-><init>(Lcom/google/common/util/concurrent/TimeoutFuture;)V

    .line 44
    .local v0, "fire":Lcom/google/common/util/concurrent/TimeoutFuture$Fire;, "Lcom/google/common/util/concurrent/TimeoutFuture$Fire<TV;>;"
    invoke-interface {p4, v0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/util/concurrent/TimeoutFuture;->timer:Ljava/util/concurrent/Future;

    .line 45
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 46
    return-object v1
.end method


# virtual methods
.method protected afterDone()V
    .registers 4

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/TimeoutFuture;, "Lcom/google/common/util/concurrent/TimeoutFuture<TV;>;"
    const/4 v2, 0x0

    .line 130
    iget-object v1, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->delegateRef:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/TimeoutFuture;->maybePropagateCancellation(Ljava/util/concurrent/Future;)V

    .line 132
    iget-object v0, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->timer:Ljava/util/concurrent/Future;

    .line 136
    .local v0, "localTimer":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_e

    .line 137
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 140
    :cond_e
    iput-object v2, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->delegateRef:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 141
    iput-object v2, p0, Lcom/google/common/util/concurrent/TimeoutFuture;->timer:Ljava/util/concurrent/Future;

    .line 142
    return-void
.end method
