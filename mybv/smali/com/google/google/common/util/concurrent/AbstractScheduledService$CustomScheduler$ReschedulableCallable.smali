.class Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;
.super Lcom/google/common/util/concurrent/ForwardingFuture;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReschedulableCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/ForwardingFuture",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private currentFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final service:Lcom/google/common/util/concurrent/AbstractService;

.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;

.field private final wrappedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;Lcom/google/common/util/concurrent/AbstractService;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V
    .registers 6
    .param p2, "service"    # Lcom/google/common/util/concurrent/AbstractService;
    .param p3, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;-><init>()V

    .line 478
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 486
    iput-object p4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->wrappedRunnable:Ljava/lang/Runnable;

    .line 487
    iput-object p3, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 488
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->service:Lcom/google/common/util/concurrent/AbstractService;

    .line 489
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->wrappedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 494
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->reschedule()V

    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel(Z)Z
    .registers 4
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 546
    :try_start_5
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->currentFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    move-result v0

    .line 548
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only cancel and isCancelled is supported by this future"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCancelled()Z
    .registers 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 556
    :try_start_5
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->currentFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public reschedule()V
    .registers 9

    .prologue
    .line 505
    :try_start_0
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;->getNextSchedule()Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_35

    move-result-object v1

    .line 514
    .local v1, "schedule":Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;
    const/4 v2, 0x0

    .line 515
    .local v2, "scheduleFailure":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 517
    :try_start_c
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->currentFuture:Ljava/util/concurrent/Future;

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->currentFuture:Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_28

    .line 518
    :cond_18
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->delay:J
    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->access$800(Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;)J

    move-result-wide v6

    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->unit:Ljava/util/concurrent/TimeUnit;
    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->access$900(Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;)Ljava/util/concurrent/TimeUnit;

    move-result-object v5

    invoke-interface {v4, p0, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->currentFuture:Ljava/util/concurrent/Future;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_28} :catch_3c
    .catchall {:try_start_c .. :try_end_28} :catchall_44

    .line 531
    :cond_28
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 534
    :goto_2d
    if-eqz v2, :cond_34

    .line 535
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->service:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v4, v2}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 537
    .end local v1    # "schedule":Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;
    .end local v2    # "scheduleFailure":Ljava/lang/Throwable;
    :cond_34
    :goto_34
    return-void

    .line 506
    :catch_35
    move-exception v3

    .line 507
    .local v3, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->service:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v4, v3}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    goto :goto_34

    .line 520
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v1    # "schedule":Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;
    .restart local v2    # "scheduleFailure":Ljava/lang/Throwable;
    :catch_3c
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Throwable;
    move-object v2, v0

    .line 531
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2d

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_44
    move-exception v4

    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$ReschedulableCallable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method
