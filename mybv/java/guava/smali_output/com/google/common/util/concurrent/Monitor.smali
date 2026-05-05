.class public final Lcom/google/common/util/concurrent/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Monitor$Guard;
    }
.end annotation


# instance fields
.field private activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final fair:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;-><init>(Z)V

    .line 349
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "fair"    # Z

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 358
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    .line 359
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 360
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Monitor;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "signalBeforeWaiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1076
    if-eqz p2, :cond_5

    .line 1077
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1079
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1082
    :cond_8
    :try_start_8
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 1083
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    move-result v0

    if-eqz v0, :cond_8

    .line 1085
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1087
    return-void

    .line 1085
    :catchall_17
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v0
.end method

.method private awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    .registers 9
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "nanos"    # J
    .param p4, "signalBeforeWaiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1110
    const/4 v0, 0x1

    .line 1113
    .local v0, "firstTime":Z
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_e

    .line 1114
    const/4 v1, 0x0

    .line 1127
    if-nez v0, :cond_d

    .line 1128
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    :cond_d
    :goto_d
    return v1

    .line 1116
    :cond_e
    if-eqz v0, :cond_19

    .line 1117
    if-eqz p4, :cond_15

    .line 1118
    :try_start_12
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1120
    :cond_15
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1121
    const/4 v0, 0x0

    .line 1123
    :cond_19
    iget-object v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    .line 1124
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_2c

    move-result v1

    if-eqz v1, :cond_1

    .line 1125
    const/4 v1, 0x1

    .line 1127
    if-nez v0, :cond_d

    .line 1128
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    goto :goto_d

    .line 1127
    :catchall_2c
    move-exception v1

    if-nez v0, :cond_32

    .line 1128
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    :cond_32
    throw v1
.end method

.method private awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "signalBeforeWaiting"    # Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1091
    if-eqz p2, :cond_5

    .line 1092
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1094
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1097
    :cond_8
    :try_start_8
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 1098
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    move-result v0

    if-eqz v0, :cond_8

    .line 1100
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1102
    return-void

    .line 1100
    :catchall_17
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v0
.end method

.method private beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1038
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 1039
    .local v0, "waiters":I
    if-nez v0, :cond_e

    .line 1041
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1042
    iput-object p1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1044
    :cond_e
    return-void
.end method

.method private endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 6
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1051
    iget v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v2, v3, -0x1

    iput v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 1052
    .local v2, "waiters":I
    if-nez v2, :cond_16

    .line 1054
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .local v0, "p":Lcom/google/common/util/concurrent/Monitor$Guard;
    const/4 v1, 0x0

    .line 1055
    .local v1, "pred":Lcom/google/common/util/concurrent/Monitor$Guard;
    :goto_b
    if-ne v0, p1, :cond_1c

    .line 1056
    if-nez v1, :cond_17

    .line 1057
    iget-object v3, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v3, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1061
    :goto_13
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1066
    .end local v0    # "p":Lcom/google/common/util/concurrent/Monitor$Guard;
    .end local v1    # "pred":Lcom/google/common/util/concurrent/Monitor$Guard;
    :cond_16
    return-void

    .line 1059
    .restart local v0    # "p":Lcom/google/common/util/concurrent/Monitor$Guard;
    .restart local v1    # "pred":Lcom/google/common/util/concurrent/Monitor$Guard;
    :cond_17
    iget-object v3, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v3, v1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_13

    .line 1054
    :cond_1c
    move-object v1, v0

    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_b
.end method

.method private static initNanoTime(J)J
    .registers 8
    .param p0, "timeoutNanos"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 934
    cmp-long v4, p0, v2

    if-gtz v4, :cond_8

    move-wide v0, v2

    .line 938
    :cond_7
    :goto_7
    return-wide v0

    .line 937
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 938
    .local v0, "startTime":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_7

    const-wide/16 v0, 0x1

    goto :goto_7
.end method

.method private isSatisfied(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1016
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 1017
    :catch_5
    move-exception v0

    .line 1018
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalAllWaiters()V

    .line 1019
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static remainingNanos(JJ)J
    .registers 8
    .param p0, "startTime"    # J
    .param p2, "timeoutNanos"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 954
    cmp-long v2, p2, v0

    if-gtz v2, :cond_7

    :goto_6
    return-wide v0

    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sub-long v0, p2, v0

    goto :goto_6
.end method

.method private signalAllWaiters()V
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .local v0, "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    :goto_2
    if-eqz v0, :cond_c

    .line 1029
    iget-object v1, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1028
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_2

    .line 1031
    :cond_c
    return-void
.end method

.method private signalNextWaiter()V
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .local v0, "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    :goto_2
    if-eqz v0, :cond_f

    .line 984
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;->isSatisfied(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 985
    iget-object v1, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 989
    :cond_f
    return-void

    .line 983
    :cond_10
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_2
.end method

.method private static toSafeNanos(JLjava/util/concurrent/TimeUnit;)J
    .registers 11
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide v4, 0x5ffffffffffffffdL    # 2.6815615859885185E154

    const-wide/16 v2, 0x0

    .line 923
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 924
    .local v0, "timeoutNanos":J
    cmp-long v6, v0, v2

    if-gtz v6, :cond_11

    move-wide v0, v2

    .end local v0    # "timeoutNanos":J
    :cond_10
    :goto_10
    return-wide v0

    .restart local v0    # "timeoutNanos":J
    :cond_11
    cmp-long v2, v0, v4

    if-lez v2, :cond_10

    move-wide v0, v4

    goto :goto_10
.end method


# virtual methods
.method public enter()V
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 367
    return-void
.end method

.method public enter(JLjava/util/concurrent/TimeUnit;)Z
    .registers 15
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 384
    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 385
    .local v8, "timeoutNanos":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 386
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v3, :cond_12

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 387
    const/4 v3, 0x1

    .line 402
    :cond_11
    :goto_11
    return v3

    .line 389
    :cond_12
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    .line 391
    .local v1, "interrupted":Z
    :try_start_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_32

    move-result-wide v6

    .line 392
    .local v6, "startTime":J
    move-wide v4, v8

    .line 394
    .local v4, "remainingNanos":J
    :goto_1b
    :try_start_1b
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_2b
    .catchall {:try_start_1b .. :try_end_20} :catchall_32

    move-result v3

    .line 401
    if-eqz v1, :cond_11

    .line 402
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    goto :goto_11

    .line 395
    :catch_2b
    move-exception v0

    .line 396
    .local v0, "interrupt":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 397
    :try_start_2d
    invoke-static {v6, v7, v8, v9}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_32

    move-result-wide v4

    .line 398
    goto :goto_1b

    .line 401
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    .end local v4    # "remainingNanos":J
    .end local v6    # "startTime":J
    :catchall_32
    move-exception v3

    if-eqz v1, :cond_3c

    .line 402
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    :cond_3c
    throw v3
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 610
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_a

    .line 611
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 613
    :cond_a
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 614
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 616
    const/4 v1, 0x0

    .line 618
    .local v1, "satisfied":Z
    :try_start_10
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1a

    move-result v1

    .line 620
    if-nez v1, :cond_19

    .line 621
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_19
    return v1

    .line 620
    :catchall_1a
    move-exception v2

    if-nez v1, :cond_20

    .line 621
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_20
    throw v2
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 9
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 657
    iget-object v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v1, p0, :cond_a

    .line 658
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 660
    :cond_a
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->enter(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 661
    const/4 v0, 0x0

    .line 669
    :cond_11
    :goto_11
    return v0

    .line 664
    :cond_12
    const/4 v0, 0x0

    .line 666
    .local v0, "satisfied":Z
    :try_start_13
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1f

    move-result v0

    .line 668
    if-nez v0, :cond_11

    .line 669
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_11

    .line 668
    :catchall_1f
    move-exception v1

    if-nez v0, :cond_27

    .line 669
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_27
    throw v1
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 634
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_a

    .line 635
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 637
    :cond_a
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 638
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 640
    const/4 v1, 0x0

    .line 642
    .local v1, "satisfied":Z
    :try_start_10
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1a

    move-result v1

    .line 644
    if-nez v1, :cond_19

    .line 645
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_19
    return v1

    .line 644
    :catchall_1a
    move-exception v2

    if-nez v1, :cond_20

    .line 645
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_20
    throw v2
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 9
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 682
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_a

    .line 683
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 685
    :cond_a
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 686
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 687
    const/4 v1, 0x0

    .line 695
    :cond_13
    :goto_13
    return v1

    .line 690
    :cond_14
    const/4 v1, 0x0

    .line 692
    .local v1, "satisfied":Z
    :try_start_15
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1f

    move-result v1

    .line 694
    if-nez v1, :cond_13

    .line 695
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_13

    .line 694
    :catchall_1f
    move-exception v2

    if-nez v1, :cond_25

    .line 695
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_25
    throw v2
.end method

.method public enterInterruptibly()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 376
    return-void
.end method

.method public enterInterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 6
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v3, p0, :cond_a

    .line 435
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 437
    :cond_a
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 438
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    .line 439
    .local v2, "signalBeforeWaiting":Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 441
    const/4 v1, 0x0

    .line 443
    .local v1, "satisfied":Z
    :try_start_14
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 444
    invoke-direct {p0, p1, v2}, Lcom/google/common/util/concurrent/Monitor;->await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_24

    .line 446
    :cond_1d
    const/4 v1, 0x1

    .line 448
    if-nez v1, :cond_23

    .line 449
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 452
    :cond_23
    return-void

    .line 448
    :catchall_24
    move-exception v3

    if-nez v1, :cond_2a

    .line 449
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    :cond_2a
    throw v3
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 15
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 488
    .local v6, "timeoutNanos":J
    iget-object v8, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v8, p0, :cond_e

    .line 489
    new-instance v8, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v8}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v8

    .line 491
    :cond_e
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 492
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 493
    .local v1, "reentrant":Z
    const-wide/16 v4, 0x0

    .line 497
    .local v4, "startTime":J
    iget-boolean v8, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v8, :cond_4f

    .line 499
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_26

    .line 500
    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 502
    :cond_26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 512
    :cond_2c
    const/4 v2, 0x0

    .line 513
    .local v2, "satisfied":Z
    const/4 v3, 0x1

    .line 515
    .local v3, "threw":Z
    :try_start_2e
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v8

    if-nez v8, :cond_40

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_5b

    .end local v6    # "timeoutNanos":J
    :goto_3a
    invoke-direct {p0, p1, v6, v7, v1}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_67

    move-result v8

    if-eqz v8, :cond_60

    :cond_40
    const/4 v2, 0x1

    .line 521
    :goto_41
    const/4 v3, 0x0

    .line 524
    if-nez v2, :cond_4e

    .line 527
    if-eqz v3, :cond_4b

    if-nez v1, :cond_4b

    .line 528
    :try_start_48
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_62

    .line 531
    :cond_4b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v2    # "satisfied":Z
    .end local v3    # "threw":Z
    :cond_4e
    :goto_4e
    return v2

    .line 506
    .restart local v6    # "timeoutNanos":J
    :cond_4f
    invoke-static {v6, v7}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v4

    .line 507
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 508
    const/4 v2, 0x0

    goto :goto_4e

    .line 515
    .restart local v2    # "satisfied":Z
    .restart local v3    # "threw":Z
    :cond_5b
    :try_start_5b
    invoke-static {v4, v5, v6, v7}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_67

    move-result-wide v6

    goto :goto_3a

    .end local v6    # "timeoutNanos":J
    :cond_60
    const/4 v2, 0x0

    goto :goto_41

    .line 531
    :catchall_62
    move-exception v8

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .line 524
    :catchall_67
    move-exception v8

    if-nez v2, :cond_74

    .line 527
    if-eqz v3, :cond_71

    if-nez v1, :cond_71

    .line 528
    :try_start_6e
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_75

    .line 531
    :cond_71
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_74
    throw v8

    :catchall_75
    move-exception v8

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 6
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 458
    iget-object v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v3, p0, :cond_a

    .line 459
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 461
    :cond_a
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 462
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    .line 463
    .local v2, "signalBeforeWaiting":Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 465
    const/4 v1, 0x0

    .line 467
    .local v1, "satisfied":Z
    :try_start_14
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 468
    invoke-direct {p0, p1, v2}, Lcom/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_24

    .line 470
    :cond_1d
    const/4 v1, 0x1

    .line 472
    if-nez v1, :cond_23

    .line 473
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 476
    :cond_23
    return-void

    .line 472
    :catchall_24
    move-exception v3

    if-nez v1, :cond_2a

    .line 473
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    :cond_2a
    throw v3
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 19
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 544
    invoke-static/range {p2 .. p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    .line 545
    .local v10, "timeoutNanos":J
    iget-object v7, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v7, p0, :cond_e

    .line 546
    new-instance v7, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v7}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v7

    .line 548
    :cond_e
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 549
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const-wide/16 v8, 0x0

    .line 550
    .local v8, "startTime":J
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v6

    .line 551
    .local v6, "signalBeforeWaiting":Z
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    .line 553
    .local v1, "interrupted":Z
    :try_start_1a
    iget-boolean v7, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v7, :cond_24

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v7

    if-nez v7, :cond_31

    .line 554
    :cond_24
    invoke-static {v10, v11}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_7a

    move-result-wide v8

    .line 555
    move-wide v4, v10

    .line 557
    .local v4, "remainingNanos":J
    :goto_29
    :try_start_29
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2e} :catch_53
    .catchall {:try_start_29 .. :try_end_2e} :catchall_7a

    move-result v7

    if-eqz v7, :cond_48

    .line 569
    .end local v4    # "remainingNanos":J
    :cond_31
    const/4 v3, 0x0

    .line 573
    .local v3, "satisfied":Z
    :goto_32
    :try_start_32
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_6f
    .catchall {:try_start_32 .. :try_end_35} :catchall_73

    move-result v7

    if-eqz v7, :cond_5a

    .line 574
    const/4 v3, 0x1

    .line 592
    :goto_39
    if-nez v3, :cond_3e

    .line 593
    :try_start_3b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_7a

    .line 597
    :cond_3e
    if-eqz v1, :cond_47

    .line 598
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .end local v3    # "satisfied":Z
    :cond_47
    :goto_47
    return v3

    .line 560
    .restart local v4    # "remainingNanos":J
    :cond_48
    const/4 v3, 0x0

    .line 597
    if-eqz v1, :cond_47

    .line 598
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_47

    .line 562
    :catch_53
    move-exception v0

    .line 563
    .local v0, "interrupt":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 564
    :try_start_55
    invoke-static {v8, v9, v10, v11}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_7a

    move-result-wide v4

    .line 565
    goto :goto_29

    .line 577
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    .end local v4    # "remainingNanos":J
    .restart local v3    # "satisfied":Z
    :cond_5a
    const-wide/16 v12, 0x0

    cmp-long v7, v8, v12

    if-nez v7, :cond_6a

    .line 578
    :try_start_60
    invoke-static {v10, v11}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v8

    .line 579
    move-wide v4, v10

    .line 583
    .restart local v4    # "remainingNanos":J
    :goto_65
    invoke-direct {p0, p1, v4, v5, v6}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v3

    goto :goto_39

    .line 581
    .end local v4    # "remainingNanos":J
    :cond_6a
    invoke-static {v8, v9, v10, v11}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_6d} :catch_6f
    .catchall {:try_start_60 .. :try_end_6d} :catchall_73

    move-result-wide v4

    .restart local v4    # "remainingNanos":J
    goto :goto_65

    .line 586
    .end local v4    # "remainingNanos":J
    :catch_6f
    move-exception v0

    .line 587
    .restart local v0    # "interrupt":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 588
    const/4 v6, 0x0

    .line 589
    goto :goto_32

    .line 592
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    :catchall_73
    move-exception v7

    if-nez v3, :cond_79

    .line 593
    :try_start_76
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_79
    throw v7
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_7a

    .line 597
    .end local v3    # "satisfied":Z
    :catchall_7a
    move-exception v7

    if-eqz v1, :cond_84

    .line 598
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    :cond_84
    throw v7
.end method

.method public getOccupiedDepth()I
    .registers 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    return v0
.end method

.method public getQueueLength()I
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 906
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_a

    .line 907
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 909
    :cond_a
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 911
    :try_start_f
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_17

    .line 913
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public hasQueuedThread(Ljava/lang/Thread;)Z
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public hasQueuedThreads()Z
    .registers 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFair()Z
    .registers 2

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    return v0
.end method

.method public isOccupied()Z
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isOccupiedByCurrentThread()Z
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public leave()V
    .registers 4

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 820
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 821
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_10

    .line 824
    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 826
    return-void

    .line 824
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public tryEnter()Z
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public tryEnterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 709
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_a

    .line 710
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 712
    :cond_a
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 713
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-nez v2, :cond_14

    .line 714
    const/4 v1, 0x0

    .line 722
    :cond_13
    :goto_13
    return v1

    .line 717
    :cond_14
    const/4 v1, 0x0

    .line 719
    .local v1, "satisfied":Z
    :try_start_15
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1f

    move-result v1

    .line 721
    if-nez v1, :cond_13

    .line 722
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_13

    .line 721
    :catchall_1f
    move-exception v2

    if-nez v1, :cond_25

    .line 722
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_25
    throw v2
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 734
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_15

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_17

    .line 735
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 734
    :cond_15
    const/4 v0, 0x0

    goto :goto_6

    .line 737
    :cond_17
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_20

    .line 738
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 740
    :cond_20
    return-void
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 763
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 764
    .local v0, "timeoutNanos":J
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v2, p0, :cond_19

    move v2, v3

    :goto_a
    iget-object v4, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    and-int/2addr v2, v4

    if-nez v2, :cond_1b

    .line 765
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 764
    :cond_19
    const/4 v2, 0x0

    goto :goto_a

    .line 767
    :cond_1b
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 773
    :goto_21
    return v3

    .line 770
    :cond_22
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 771
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 773
    :cond_2e
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v3

    goto :goto_21
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    const/4 v1, 0x1

    .line 747
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_15

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_17

    .line 748
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 747
    :cond_15
    const/4 v0, 0x0

    goto :goto_6

    .line 750
    :cond_17
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_20

    .line 751
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 753
    :cond_20
    return-void
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 17
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 783
    invoke-static/range {p2 .. p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 784
    .local v8, "timeoutNanos":J
    iget-object v5, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v5, p0, :cond_18

    const/4 v5, 0x1

    :goto_9
    iget-object v10, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v10

    and-int/2addr v5, v10

    if-nez v5, :cond_1a

    .line 785
    new-instance v5, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v5}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v5

    .line 784
    :cond_18
    const/4 v5, 0x0

    goto :goto_9

    .line 787
    :cond_1a
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 788
    const/4 v5, 0x1

    .line 808
    :cond_21
    :goto_21
    return v5

    .line 790
    :cond_22
    const/4 v4, 0x1

    .line 791
    .local v4, "signalBeforeWaiting":Z
    invoke-static {v8, v9}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v6

    .line 792
    .local v6, "startTime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    .line 794
    .local v1, "interrupted":Z
    move-wide v2, v8

    .line 796
    .local v2, "remainingNanos":J
    :goto_2c
    :try_start_2c
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_3a
    .catchall {:try_start_2c .. :try_end_2f} :catchall_53

    move-result v5

    .line 807
    if-eqz v1, :cond_21

    .line 808
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    goto :goto_21

    .line 797
    :catch_3a
    move-exception v0

    .line 798
    .local v0, "interrupt":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 799
    :try_start_3c
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_53

    move-result v5

    if-eqz v5, :cond_4d

    .line 800
    const/4 v5, 0x1

    .line 807
    if-eqz v1, :cond_21

    .line 808
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    goto :goto_21

    .line 802
    :cond_4d
    const/4 v4, 0x0

    .line 803
    :try_start_4e
    invoke-static {v6, v7, v8, v9}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_53

    move-result-wide v2

    .line 804
    goto :goto_2c

    .line 807
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    :catchall_53
    move-exception v5

    if-eqz v1, :cond_5d

    .line 808
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    :cond_5d
    throw v5
.end method
