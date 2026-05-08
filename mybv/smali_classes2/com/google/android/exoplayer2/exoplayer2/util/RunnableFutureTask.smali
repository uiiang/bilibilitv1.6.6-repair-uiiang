.class public abstract Lcom/google/android/exoplayer2/util/RunnableFutureTask;
.super Ljava/lang/Object;
.source "RunnableFutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TR;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cancelLock:Ljava/lang/Object;

.field private canceled:Z

.field private exception:Ljava/lang/Exception;

.field private final finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final started:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private workThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 51
    .local p0, "this":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->started:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method private getResult()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TR;TE;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    if-nez v0, :cond_13

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_b

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->result:Ljava/lang/Object;

    return-object v0

    .line 175
    :cond_b
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 173
    :cond_13
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final blockUntilFinished()V
    .registers 2

    .line 64
    .local p0, "this":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    .line 65
    return-void
.end method

.method public final blockUntilStarted()V
    .registers 2

    .line 59
    .local p0, "this":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->started:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    .line 60
    return-void
.end method

.method public final cancel(Z)Z
    .registers 6
    .param p1, "interruptIfRunning"    # Z

    .line 89
    .local p0, "this":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_2c

    .line 93
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelWork()V

    .line 95
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 96
    .local v2, "workThread":Ljava/lang/Thread;
    if-eqz v2, :cond_20

    .line 97
    if-eqz p1, :cond_2a

    .line 98
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2a

    .line 101
    :cond_20
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->started:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 102
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 104
    :cond_2a
    :goto_2a
    monitor-exit v0

    return v1

    .line 91
    .end local v2    # "workThread":Ljava/lang/Thread;
    :cond_2c
    :goto_2c
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 105
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method protected cancelWork()V
    .registers 1

    .line 165
    .local p0, "this":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TR;TE;>;"
    return-void
.end method

.method protected abstract doWork()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V

    .line 73
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TR;TE;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 81
    .local v0, "timeoutMs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block(J)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 84
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->getResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 82
    :cond_13
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2
.end method

.method public final isCancelled()Z
    .registers 2

    .line 115
    .local p0, "this":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TR;TE;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    return v0
.end method

.method public final isDone()Z
    .registers 2

    .line 110
    .local p0, "this":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .registers 5

    .line 122
    .local p0, "this":Lcom/google/android/exoplayer2/util/RunnableFutureTask;, "Lcom/google/android/exoplayer2/util/RunnableFutureTask<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    if-eqz v1, :cond_9

    .line 124
    monitor-exit v0

    return-void

    .line 126
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 127
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_58

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->started:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 130
    const/4 v0, 0x0

    :try_start_16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->doWork()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->result:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_30
    .catchall {:try_start_16 .. :try_end_1c} :catchall_2e

    .line 135
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_1f
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 137
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 140
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 141
    monitor-exit v1

    .line 142
    :goto_2a
    goto :goto_42

    .line 141
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw v0

    .line 135
    :catchall_2e
    move-exception v1

    goto :goto_46

    .line 131
    :catch_30
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    :try_start_31
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->exception:Ljava/lang/Exception;
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_2e

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_36
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 137
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 140
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 141
    monitor-exit v1

    goto :goto_2a

    .line 143
    :goto_42
    return-void

    .line 141
    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_43

    throw v0

    .line 135
    :goto_46
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_49
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 137
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 140
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 141
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_55

    .line 142
    throw v1

    .line 141
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0

    .line 127
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    goto :goto_5c

    :goto_5b
    throw v1

    :goto_5c
    goto :goto_5b
.end method
