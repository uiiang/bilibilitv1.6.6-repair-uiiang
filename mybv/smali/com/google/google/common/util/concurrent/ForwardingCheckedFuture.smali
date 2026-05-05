.class public abstract Lcom/google/common/util/concurrent/ForwardingCheckedFuture;
.super Lcom/google/common/util/concurrent/ForwardingListenableFuture;
.source "ForwardingCheckedFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/CheckedFuture;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingListenableFuture",
        "<TV;>;",
        "Lcom/google/common/util/concurrent/CheckedFuture",
        "<TV;TX;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingCheckedFuture;, "Lcom/google/common/util/concurrent/ForwardingCheckedFuture<TV;TX;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingListenableFuture;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public checkedGet()Ljava/lang/Object;
    .registers 2
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
    .line 45
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingCheckedFuture;, "Lcom/google/common/util/concurrent/ForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/CheckedFuture;->checkedGet()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
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
    .line 51
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingCheckedFuture;, "Lcom/google/common/util/concurrent/ForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/CheckedFuture;->checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lcom/google/common/util/concurrent/CheckedFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TV;TX;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingCheckedFuture;, "Lcom/google/common/util/concurrent/ForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingCheckedFuture;, "Lcom/google/common/util/concurrent/ForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .registers 2

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingCheckedFuture;, "Lcom/google/common/util/concurrent/ForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method
