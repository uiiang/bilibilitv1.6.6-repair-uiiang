.class Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;
.super Lcom/google/common/util/concurrent/ImmediateFuture;
.source "ImmediateFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/CheckedFuture;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ImmediateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmediateFailedCheckedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/ImmediateFuture",
        "<TV;>;",
        "Lcom/google/common/util/concurrent/CheckedFuture",
        "<TV;TX;>;"
    }
.end annotation


# instance fields
.field private final thrown:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TX;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;, "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture<TV;TX;>;"
    .local p1, "thrown":Ljava/lang/Exception;, "TX;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ImmediateFuture;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    .line 137
    return-void
.end method


# virtual methods
.method public checkedGet()Ljava/lang/Object;
    .registers 2
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
    .line 146
    .local p0, "this":Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;, "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    throw v0
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;, "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture<TV;TX;>;"
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;, "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture<TV;TX;>;"
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
