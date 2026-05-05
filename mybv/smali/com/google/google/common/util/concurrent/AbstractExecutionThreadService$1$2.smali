.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->startUp()V

    .line 61
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStarted()V

    .line 64
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->isRunning()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_36

    move-result v2

    if-eqz v2, :cond_1b

    .line 66
    :try_start_14
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->run()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1b} :catch_28

    .line 84
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V

    .line 85
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStopped()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_27} :catch_36

    .line 89
    :goto_27
    return-void

    .line 67
    :catch_28
    move-exception v1

    .line 69
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_29
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_30} :catch_36

    .line 79
    :goto_30
    :try_start_30
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_27

    .line 86
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_36
    move-exception v1

    .line 87
    .restart local v1    # "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyFailed(Ljava/lang/Throwable;)V

    goto :goto_27

    .line 70
    :catch_3d
    move-exception v0

    .line 74
    .local v0, "ignored":Ljava/lang/Exception;
    :try_start_3e
    # getter for: Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_49} :catch_36

    goto :goto_30
.end method
