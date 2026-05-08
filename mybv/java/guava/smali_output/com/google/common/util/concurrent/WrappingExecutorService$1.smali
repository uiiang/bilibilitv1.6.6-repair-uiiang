.class Lcom/google/common/util/concurrent/WrappingExecutorService$1;
.super Ljava/lang/Object;
.source "WrappingExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/WrappingExecutorService;->wrapTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/WrappingExecutorService;

.field final synthetic val$wrapped:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/WrappingExecutorService;Ljava/util/concurrent/Callable;)V
    .registers 3

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/common/util/concurrent/WrappingExecutorService$1;->this$0:Lcom/google/common/util/concurrent/WrappingExecutorService;

    iput-object p2, p0, Lcom/google/common/util/concurrent/WrappingExecutorService$1;->val$wrapped:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/WrappingExecutorService$1;->val$wrapped:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 73
    return-void

    .line 69
    :catch_6
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
