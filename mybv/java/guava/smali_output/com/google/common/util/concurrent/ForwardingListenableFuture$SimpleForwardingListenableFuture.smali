.class public abstract Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;
.super Lcom/google/common/util/concurrent/ForwardingListenableFuture;
.source "ForwardingListenableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ForwardingListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingListenableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingListenableFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;, "Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture<TV;>;"
    .local p1, "delegate":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingListenableFuture;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 61
    return-void
.end method


# virtual methods
.method protected final delegate()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;, "Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 55
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;, "Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .registers 2

    .prologue
    .line 55
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;, "Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
