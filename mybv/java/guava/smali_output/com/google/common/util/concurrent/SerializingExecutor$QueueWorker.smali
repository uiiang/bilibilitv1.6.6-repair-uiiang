.class final Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SerializingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/SerializingExecutor;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;Lcom/google/common/util/concurrent/SerializingExecutor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/util/concurrent/SerializingExecutor;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/SerializingExecutor$1;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V

    return-void
.end method

.method private workOnQueue()V
    .registers 8

    .prologue
    .line 175
    :goto_0
    const/4 v2, 0x0

    .line 176
    .local v2, "task":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 178
    :try_start_8
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->suspensions:I
    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$300(Lcom/google/common/util/concurrent/SerializingExecutor;)I

    move-result v3

    if-nez v3, :cond_1e

    .line 179
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;
    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$400(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0

    .line 181
    :cond_1e
    if-nez v2, :cond_28

    .line 182
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v5, 0x0

    # setter for: Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z
    invoke-static {v3, v5}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$202(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 183
    monitor-exit v4

    return-void

    .line 185
    :cond_28
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_4b

    .line 187
    :try_start_29
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_0

    .line 188
    :catch_2d
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/RuntimeException;
    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while executing runnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 185
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->workOnQueue()V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_4

    .line 171
    return-void

    .line 162
    :catch_4
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 164
    :try_start_c
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v3, 0x0

    # setter for: Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z
    invoke-static {v1, v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$202(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 165
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    .line 166
    throw v0

    .line 165
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method
