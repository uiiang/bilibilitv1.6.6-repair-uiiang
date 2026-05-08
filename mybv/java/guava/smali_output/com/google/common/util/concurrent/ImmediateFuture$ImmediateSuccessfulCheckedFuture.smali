.class Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;
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
    name = "ImmediateSuccessfulCheckedFuture"
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
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;, "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ImmediateFuture;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    .line 99
    return-void
.end method


# virtual methods
.method public checkedGet()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;, "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;, "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;, "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    return-object v0
.end method
