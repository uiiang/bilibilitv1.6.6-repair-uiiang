.class public Lcom/google/android/exoplayer2/util/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private isOpen:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/Clock;)V
    .registers 2
    .param p1, "clock"    # Lcom/google/android/exoplayer2/util/Clock;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 56
    return-void
.end method


# virtual methods
.method public declared-synchronized block()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    nop

    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    if-nez v0, :cond_a

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_c

    goto :goto_2

    .line 92
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/ConditionVariable;
    :cond_a
    monitor-exit p0

    return-void

    .line 88
    :catchall_c
    move-exception v0

    monitor-exit p0

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method public declared-synchronized block(J)Z
    .registers 9
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 103
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_b

    .line 104
    :try_start_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_34

    monitor-exit p0

    return v0

    .line 106
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/ConditionVariable;
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 107
    .local v0, "nowMs":J
    add-long v2, v0, p1

    .line 108
    .local v2, "endMs":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_1b

    .line 110
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V

    goto :goto_30

    .line 112
    :cond_1b
    :goto_1b
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    if-nez v4, :cond_30

    cmp-long v4, v0, v2

    if-gez v4, :cond_30

    .line 113
    sub-long v4, v2, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 114
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_1b

    .line 117
    :cond_30
    :goto_30
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_34

    monitor-exit p0

    return v4

    .line 102
    .end local v0    # "nowMs":J
    .end local v2    # "endMs":J
    .end local p1    # "timeoutMs":J
    :catchall_34
    move-exception p1

    monitor-exit p0

    goto :goto_38

    :goto_37
    throw p1

    :goto_38
    goto :goto_37
.end method

.method public declared-synchronized blockUninterruptible()V
    .registers 3

    monitor-enter p0

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "wasInterrupted":Z
    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_18

    if-nez v1, :cond_d

    .line 129
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a
    .catchall {:try_start_6 .. :try_end_9} :catchall_18

    .line 132
    goto :goto_2

    .line 130
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/ConditionVariable;
    :catch_a
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 132
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 134
    :cond_d
    if-eqz v0, :cond_16

    .line 136
    :try_start_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_18

    .line 138
    :cond_16
    monitor-exit p0

    return-void

    .line 125
    .end local v0    # "wasInterrupted":Z
    :catchall_18
    move-exception v0

    monitor-exit p0

    goto :goto_1c

    :goto_1b
    throw v0

    :goto_1c
    goto :goto_1b
.end method

.method public declared-synchronized close()Z
    .registers 3

    monitor-enter p0

    .line 78
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    .line 79
    .local v0, "wasOpen":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 80
    monitor-exit p0

    return v0

    .line 77
    .end local v0    # "wasOpen":Z
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/ConditionVariable;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .registers 2

    monitor-enter p0

    .line 142
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 142
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/ConditionVariable;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open()Z
    .registers 2

    monitor-enter p0

    .line 64
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_8

    .line 65
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 67
    :cond_8
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 69
    monitor-exit p0

    return v0

    .line 63
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/ConditionVariable;
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
