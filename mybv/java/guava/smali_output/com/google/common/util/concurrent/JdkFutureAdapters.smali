.class public final Lcom/google/common/util/concurrent/JdkFutureAdapters;
.super Ljava/lang/Object;
.source "JdkFutureAdapters.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listenInPoolThread(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_7

    .line 54
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 56
    .end local p0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    :goto_6
    return-object p0

    .restart local p0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    :cond_7
    new-instance v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;-><init>(Ljava/util/concurrent/Future;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static listenInPoolThread(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_a

    .line 82
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 84
    .end local p0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    :goto_9
    return-object p0

    .restart local p0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    :cond_a
    new-instance v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    move-object p0, v0

    goto :goto_9
.end method
