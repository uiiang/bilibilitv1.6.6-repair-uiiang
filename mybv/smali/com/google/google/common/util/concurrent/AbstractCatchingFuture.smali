.class abstract Lcom/google/common/util/concurrent/AbstractCatchingFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "AbstractCatchingFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;,
        Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture",
        "<TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field exceptionType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TX;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field fallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;TF;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture<TV;TX;TF;TT;>;"
    .local p1, "inputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p2, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p3, "fallback":Ljava/lang/Object;, "TF;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 87
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 88
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/common/base/Function",
            "<-TX;+TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TX;+TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;)V

    .line 41
    .local v0, "future":Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture<TV;TX;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 42
    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/common/base/Function",
            "<-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TX;+TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;)V

    .line 51
    .local v0, "future":Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture<TV;TX;>;"
    invoke-static {p3, v0}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 52
    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TX;+TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 61
    .local v0, "future":Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 62
    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 72
    .local v0, "future":Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    invoke-static {p3, v0}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 73
    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .registers 3

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture<TV;TX;TF;TT;>;"
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->maybePropagateCancellation(Ljava/util/concurrent/Future;)V

    .line 153
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 154
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 155
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 156
    return-void
.end method

.method abstract doFallback(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TX;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public final run()V
    .registers 15

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture<TV;TX;TF;TT;>;"
    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 93
    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 94
    .local v5, "localInputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 95
    .local v3, "localExceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 96
    .local v4, "localFallback":Ljava/lang/Object;, "TF;"
    if-nez v5, :cond_1b

    move v12, v9

    :goto_c
    if-nez v3, :cond_1d

    move v11, v9

    :goto_f
    or-int/2addr v11, v12

    if-nez v4, :cond_1f

    :goto_12
    or-int/2addr v9, v11

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->isCancelled()Z

    move-result v10

    or-int/2addr v9, v10

    if-eqz v9, :cond_21

    .line 139
    :goto_1a
    return-void

    :cond_1b
    move v12, v10

    .line 96
    goto :goto_c

    :cond_1d
    move v11, v10

    goto :goto_f

    :cond_1f
    move v9, v10

    goto :goto_12

    .line 102
    :cond_21
    iput-object v13, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 103
    iput-object v13, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 104
    iput-object v13, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 107
    const/4 v6, 0x0

    .line 108
    .local v6, "sourceResult":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 110
    .local v8, "throwable":Ljava/lang/Throwable;
    :try_start_29
    invoke-static {v5}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_29 .. :try_end_2c} :catch_33
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_3f

    move-result-object v6

    .line 117
    .end local v6    # "sourceResult":Ljava/lang/Object;, "TV;"
    :goto_2d
    if-nez v8, :cond_42

    .line 118
    invoke-virtual {p0, v6}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 111
    .restart local v6    # "sourceResult":Ljava/lang/Object;, "TV;"
    :catch_33
    move-exception v1

    .line 112
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "throwable":Ljava/lang/Throwable;
    check-cast v8, Ljava/lang/Throwable;

    .line 115
    .restart local v8    # "throwable":Ljava/lang/Throwable;
    goto :goto_2d

    .line 113
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_3f
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Throwable;
    move-object v8, v1

    goto :goto_2d

    .line 122
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v6    # "sourceResult":Ljava/lang/Object;, "TV;"
    :cond_42
    invoke-static {v8, v3}, Lcom/google/common/util/concurrent/Platform;->isInstanceOfThrowableClass(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_4c

    .line 123
    invoke-virtual {p0, v8}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_1a

    .line 129
    :cond_4c
    move-object v0, v8

    .line 132
    .local v0, "castThrowable":Ljava/lang/Throwable;, "TX;"
    :try_start_4d
    invoke-virtual {p0, v4, v0}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->doFallback(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_50} :catch_55

    move-result-object v2

    .line 138
    .local v2, "fallbackResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->setResult(Ljava/lang/Object;)V

    goto :goto_1a

    .line 133
    .end local v2    # "fallbackResult":Ljava/lang/Object;, "TT;"
    :catch_55
    move-exception v7

    .line 134
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v7}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_1a
.end method

.method abstract setResult(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
