.class public final Lcom/google/common/util/concurrent/ExecutionList;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private executed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private runnables:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ExecutionList;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 141
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 151
    :goto_3
    return-void

    .line 142
    :catch_4
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/google/common/util/concurrent/ExecutionList;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with executor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 71
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    monitor-enter p0

    .line 78
    :try_start_b
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z

    if-nez v0, :cond_1a

    .line 79
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 80
    monitor-exit p0

    .line 88
    :goto_19
    return-void

    .line 82
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_1f

    .line 87
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/ExecutionList;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_19

    .line 82
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public execute()V
    .registers 6

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_1
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z

    if-eqz v3, :cond_7

    .line 107
    monitor-exit p0

    .line 133
    :cond_6
    return-void

    .line 109
    :cond_7
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z

    .line 110
    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 111
    .local v0, "list":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 112
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1a

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "reversedList":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    :goto_11
    if-eqz v0, :cond_1d

    .line 124
    move-object v2, v0

    .line 125
    .local v2, "tmp":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    iget-object v0, v0, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 126
    iput-object v1, v2, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 127
    move-object v1, v2

    .line 128
    goto :goto_11

    .line 112
    .end local v0    # "list":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    .end local v1    # "reversedList":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    .end local v2    # "tmp":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    :catchall_1a
    move-exception v3

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v3

    .line 129
    .restart local v0    # "list":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    .restart local v1    # "reversedList":Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    :cond_1d
    :goto_1d
    if-eqz v1, :cond_6

    .line 130
    iget-object v3, v1, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->runnable:Ljava/lang/Runnable;

    iget-object v4, v1, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/ExecutionList;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 131
    iget-object v1, v1, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    goto :goto_1d
.end method
