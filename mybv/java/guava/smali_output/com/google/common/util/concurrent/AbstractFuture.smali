.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFuture$1;,
        Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;,
        Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;,
        Lcom/google/common/util/concurrent/AbstractFuture$Failure;,
        Lcom/google/common/util/concurrent/AbstractFuture$Listener;,
        Lcom/google/common/util/concurrent/AbstractFuture$Waiter;,
        Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

.field private static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

.field private volatile value:Ljava/lang/Object;

.field private volatile waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x0

    .line 64
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 109
    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    .line 121
    :try_start_1b
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_2d

    .line 144
    .local v0, "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    :goto_21
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 149
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    .line 244
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    return-void

    .line 122
    .end local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    :catch_2d
    move-exception v7

    .line 127
    .local v7, "unsafeFailure":Ljava/lang/Throwable;
    :try_start_2e
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;

    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "thread"

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const-class v2, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-string v4, "next"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v4, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-string v5, "waiters"

    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v4, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    const-string v8, "listeners"

    invoke-static {v4, v5, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v8, Ljava/lang/Object;

    const-string v9, "value"

    invoke-static {v5, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_65} :catch_66

    .restart local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    goto :goto_21

    .line 134
    .end local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    :catch_66
    move-exception v6

    .line 139
    .local v6, "atomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;

    invoke-direct {v0, v10}, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    .restart local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    goto :goto_21
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 323
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object p1
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1112
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1113
    .local v0, "exception":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1114
    return-object v0
.end method

.method private clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .registers 7
    .param p1, "onto"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .prologue
    .line 882
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 883
    .local v0, "head":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-virtual {v3, p0, v0, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 884
    move-object v1, p1

    .line 885
    .local v1, "reversedList":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :goto_d
    if-eqz v0, :cond_16

    .line 886
    move-object v2, v0

    .line 887
    .local v2, "tmp":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 888
    iput-object v1, v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 889
    move-object v1, v2

    .line 890
    goto :goto_d

    .line 891
    .end local v2    # "tmp":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_16
    return-object v1
.end method

.method private static complete(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "future":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    const/4 v1, 0x0

    .line 782
    .local v1, "next":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :goto_1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->releaseWaiters()V

    .line 787
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->afterDone()V

    .line 789
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object v1

    .line 790
    const/4 p0, 0x0

    .line 791
    :cond_c
    :goto_c
    if-eqz v1, :cond_35

    .line 792
    move-object v0, v1

    .line 793
    .local v0, "curr":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 794
    iget-object v3, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    .line 795
    .local v3, "task":Ljava/lang/Runnable;
    instance-of v5, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v5, :cond_2f

    move-object v2, v3

    .line 796
    check-cast v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 802
    .local v2, "setFuture":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$SetFuture<*>;"
    iget-object p0, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->owner:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 803
    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-ne v5, v2, :cond_c

    .line 804
    iget-object v5, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v5}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v4

    .line 805
    .local v4, "valueToSet":Ljava/lang/Object;
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_1

    .line 811
    .end local v2    # "setFuture":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$SetFuture<*>;"
    .end local v4    # "valueToSet":Ljava/lang/Object;
    :cond_2f
    iget-object v5, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v3, v5}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_c

    .line 816
    .end local v0    # "curr":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .end local v3    # "task":Ljava/lang/Runnable;
    :cond_35
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 900
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 910
    :goto_3
    return-void

    .line 901
    :catch_4
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

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

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    instance-of v1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v1, :cond_f

    .line 498
    const-string v1, "Task was cancelled."

    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    throw v1

    .line 499
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_f
    instance-of v1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    if-eqz v1, :cond_1d

    .line 500
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 501
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1d
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v1, :cond_23

    .line 502
    const/4 v0, 0x0

    .line 506
    :goto_22
    return-object v0

    .line 505
    :cond_23
    move-object v0, p1

    .line 506
    .local v0, "asV":Ljava/lang/Object;, "TV;"
    goto :goto_22
.end method

.method private static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 756
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v5, p0, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;

    if-eqz v5, :cond_9

    .line 761
    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture;

    .end local p0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 775
    .restart local p0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    :goto_8
    return-object v4

    .line 765
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    .line 766
    .local v3, "v":Ljava/lang/Object;
    if-nez v3, :cond_12

    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_11} :catch_14
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_11} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_11} :catch_27

    .local v4, "valueToSet":Ljava/lang/Object;
    :goto_11
    goto :goto_8

    .end local v4    # "valueToSet":Ljava/lang/Object;
    :cond_12
    move-object v4, v3

    goto :goto_11

    .line 767
    .end local v3    # "v":Ljava/lang/Object;
    :catch_14
    move-exception v1

    .line 768
    .local v1, "exception":Ljava/util/concurrent/ExecutionException;
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 773
    .local v4, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    goto :goto_8

    .line 769
    .end local v1    # "exception":Ljava/util/concurrent/ExecutionException;
    .end local v4    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    :catch_1f
    move-exception v0

    .line 770
    .local v0, "cancellation":Ljava/util/concurrent/CancellationException;
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 773
    .local v4, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    goto :goto_8

    .line 771
    .end local v0    # "cancellation":Ljava/util/concurrent/CancellationException;
    .end local v4    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :catch_27
    move-exception v2

    .line 772
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v4, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .local v4, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    goto :goto_8
.end method

.method private releaseWaiters()V
    .registers 5

    .prologue
    .line 860
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 861
    .local v1, "head":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-virtual {v2, p0, v1, v3}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    move-object v0, v1

    .line 863
    .local v0, "currentWaiter":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :goto_d
    if-eqz v0, :cond_15

    .line 865
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->unpark()V

    .line 864
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    goto :goto_d

    .line 867
    :cond_15
    return-void
.end method

.method private removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .registers 6
    .param p1, "node"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .prologue
    .line 201
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 204
    :goto_3
    const/4 v1, 0x0

    .line 205
    .local v1, "pred":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 206
    .local v0, "curr":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v0, v3, :cond_b

    .line 226
    :cond_a
    return-void

    .line 210
    :cond_b
    :goto_b
    if-eqz v0, :cond_a

    .line 211
    iget-object v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 212
    .local v2, "succ":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    iget-object v3, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_16

    .line 213
    move-object v1, v0

    .line 222
    :cond_14
    move-object v0, v2

    goto :goto_b

    .line 214
    :cond_16
    if-eqz v1, :cond_1f

    .line 215
    iput-object v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 216
    iget-object v3, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_14

    goto :goto_3

    .line 219
    :cond_1f
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_3
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 619
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const-string v2, "Runnable was null."

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v2, "Executor was null."

    invoke-static {p2, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 622
    .local v1, "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-eq v1, v2, :cond_26

    .line 623
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-direct {v0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 625
    .local v0, "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_15
    iput-object v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 626
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v2, p0, v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 635
    .end local v0    # "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :goto_1f
    return-void

    .line 629
    .restart local v0    # "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_20
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 630
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-ne v1, v2, :cond_15

    .line 634
    .end local v0    # "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_26
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1f
.end method

.method protected afterDone()V
    .registers 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 831
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    return-void
.end method

.method public cancel(Z)Z
    .registers 13
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 532
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 533
    .local v3, "localValue":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 534
    .local v4, "rValue":Z
    if-nez v3, :cond_4b

    move v7, v8

    :goto_8
    instance-of v10, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v7, v10

    if-eqz v7, :cond_54

    .line 537
    sget-boolean v7, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v7, :cond_4d

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v7, "Future.cancel() was called."

    invoke-direct {v1, v7}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 541
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_18
    new-instance v6, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    invoke-direct {v6, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 542
    .local v6, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    move-object v0, p0

    .line 544
    .local v0, "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    :cond_1e
    :goto_1e
    sget-object v7, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v7, v0, v3, v6}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 545
    const/4 v4, 0x1

    .line 548
    if-eqz p1, :cond_2c

    .line 549
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->interruptTask()V

    .line 551
    :cond_2c
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 552
    instance-of v7, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v7, :cond_54

    move-object v7, v3

    .line 555
    check-cast v7, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    iget-object v2, v7, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 557
    .local v2, "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v7, v2, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;

    if-eqz v7, :cond_51

    move-object v5, v2

    .line 565
    check-cast v5, Lcom/google/common/util/concurrent/AbstractFuture;

    .line 566
    .local v5, "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    iget-object v3, v5, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 567
    if-nez v3, :cond_4f

    move v7, v8

    :goto_44
    instance-of v10, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v7, v10

    if-eqz v7, :cond_54

    .line 568
    move-object v0, v5

    .line 569
    goto :goto_1e

    .end local v0    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v2    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .end local v5    # "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .end local v6    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_4b
    move v7, v9

    .line 534
    goto :goto_8

    .line 537
    :cond_4d
    const/4 v1, 0x0

    goto :goto_18

    .restart local v0    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .restart local v1    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .restart local v5    # "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .restart local v6    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_4f
    move v7, v9

    .line 567
    goto :goto_44

    .line 573
    .end local v5    # "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    :cond_51
    invoke-interface {v2, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 588
    .end local v0    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v2    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .end local v6    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_54
    :goto_54
    return v4

    .line 579
    .restart local v0    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .restart local v1    # "cause":Ljava/lang/Throwable;
    .restart local v6    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_55
    iget-object v3, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 580
    instance-of v7, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v7, :cond_1e

    goto :goto_54
.end method

.method public get()Ljava/lang/Object;
    .registers 8
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 454
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 455
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 457
    :cond_e
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 458
    .local v0, "localValue":Ljava/lang/Object;
    if-eqz v0, :cond_20

    move v3, v4

    :goto_13
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v6, :cond_22

    move v6, v4

    :goto_18
    and-int/2addr v3, v6

    if-eqz v3, :cond_24

    .line 459
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 488
    :goto_1f
    return-object v3

    :cond_20
    move v3, v5

    .line 458
    goto :goto_13

    :cond_22
    move v6, v5

    goto :goto_18

    .line 461
    :cond_24
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 462
    .local v2, "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v2, v3, :cond_68

    .line 463
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 465
    .local v1, "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_2f
    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 466
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, v2, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 469
    :cond_3a
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 471
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 472
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 473
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 477
    :cond_4c
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 478
    if-eqz v0, :cond_5e

    move v3, v4

    :goto_51
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v6, :cond_60

    move v6, v4

    :goto_56
    and-int/2addr v3, v6

    if-eqz v3, :cond_3a

    .line 479
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1f

    :cond_5e
    move v3, v5

    .line 478
    goto :goto_51

    :cond_60
    move v6, v5

    goto :goto_56

    .line 483
    :cond_62
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 484
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v2, v3, :cond_2f

    .line 488
    .end local v1    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_68
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1f
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 15
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 372
    .local v6, "remainingNanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 373
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 375
    :cond_10
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 376
    .local v2, "localValue":Ljava/lang/Object;
    if-eqz v2, :cond_22

    const/4 v5, 0x1

    :goto_15
    instance-of v8, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v8, :cond_24

    const/4 v8, 0x1

    :goto_1a
    and-int/2addr v5, v8

    if-eqz v5, :cond_26

    .line 377
    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 425
    :goto_21
    return-object v5

    .line 376
    :cond_22
    const/4 v5, 0x0

    goto :goto_15

    :cond_24
    const/4 v8, 0x0

    goto :goto_1a

    .line 380
    :cond_26
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_60

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long v0, v8, v6

    .line 382
    .local v0, "endNanos":J
    :goto_32
    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_88

    .line 383
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 384
    .local v4, "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v4, v5, :cond_a6

    .line 385
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v3}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 387
    .local v3, "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_43
    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 388
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v4, v3}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 390
    :cond_4e
    invoke-static {p0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 392
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 393
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 394
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 380
    .end local v0    # "endNanos":J
    .end local v3    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .end local v4    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_60
    const-wide/16 v0, 0x0

    goto :goto_32

    .line 399
    .restart local v0    # "endNanos":J
    .restart local v3    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .restart local v4    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_63
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 400
    if-eqz v2, :cond_75

    const/4 v5, 0x1

    :goto_68
    instance-of v8, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v8, :cond_77

    const/4 v8, 0x1

    :goto_6d
    and-int/2addr v5, v8

    if-eqz v5, :cond_79

    .line 401
    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_21

    .line 400
    :cond_75
    const/4 v5, 0x0

    goto :goto_68

    :cond_77
    const/4 v8, 0x0

    goto :goto_6d

    .line 405
    :cond_79
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v6, v0, v8

    .line 406
    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gez v5, :cond_4e

    .line 408
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 422
    .end local v3    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .end local v4    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_88
    :goto_88
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_c5

    .line 423
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 424
    if-eqz v2, :cond_ae

    const/4 v5, 0x1

    :goto_93
    instance-of v8, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v8, :cond_b0

    const/4 v8, 0x1

    :goto_98
    and-int/2addr v5, v8

    if-eqz v5, :cond_b2

    .line 425
    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_21

    .line 413
    .restart local v3    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .restart local v4    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_a0
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 414
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v4, v5, :cond_43

    .line 418
    .end local v3    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_a6
    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_21

    .line 424
    .end local v4    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_ae
    const/4 v5, 0x0

    goto :goto_93

    :cond_b0
    const/4 v8, 0x0

    goto :goto_98

    .line 427
    :cond_b2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_be

    .line 428
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 430
    :cond_be
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v6, v0, v8

    goto :goto_88

    .line 432
    :cond_c5
    new-instance v5, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v5}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v5
.end method

.method protected interruptTask()V
    .registers 1

    .prologue
    .line 599
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    return-void
.end method

.method public isCancelled()Z
    .registers 3

    .prologue
    .line 518
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 519
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    return v1
.end method

.method public isDone()Z
    .registers 6

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 512
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 513
    .local v0, "localValue":Ljava/lang/Object;
    if-eqz v0, :cond_d

    move v1, v2

    :goto_7
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v4, :cond_f

    :goto_b
    and-int/2addr v1, v2

    return v1

    :cond_d
    move v1, v3

    goto :goto_7

    :cond_f
    move v2, v3

    goto :goto_b
.end method

.method final maybePropagateCancellation(Ljava/util/concurrent/Future;)V
    .registers 4
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 851
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, "related":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 852
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 854
    :cond_11
    return-void

    .line 851
    :cond_12
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected set(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_12

    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    .line 652
    .local v0, "valueToSet":Ljava/lang/Object;
    :goto_4
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 653
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 654
    const/4 v1, 0x1

    .line 656
    :goto_11
    return v1

    .end local v0    # "valueToSet":Ljava/lang/Object;
    :cond_12
    move-object v0, p1

    .line 651
    goto :goto_4

    .line 656
    .restart local v0    # "valueToSet":Ljava/lang/Object;
    :cond_14
    const/4 v1, 0x0

    goto :goto_11
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .registers 5
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 673
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 674
    .local v0, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 675
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 676
    const/4 v1, 0x1

    .line 678
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .registers 12
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 705
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 707
    .local v1, "localValue":Ljava/lang/Object;
    if-nez v1, :cond_49

    .line 708
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 709
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v4

    .line 710
    .local v4, "value":Ljava/lang/Object;
    sget-object v8, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v8, p0, v9, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 711
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 745
    .end local v4    # "value":Ljava/lang/Object;
    :goto_1f
    return v6

    .restart local v4    # "value":Ljava/lang/Object;
    :cond_20
    move v6, v7

    .line 714
    goto :goto_1f

    .line 716
    .end local v4    # "value":Ljava/lang/Object;
    :cond_22
    new-instance v5, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    invoke-direct {v5, p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;-><init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 717
    .local v5, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;
    sget-object v8, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v8, p0, v9, v5}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 721
    :try_start_2f
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    invoke-interface {p1, v5, v7}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_36} :catch_37

    goto :goto_1f

    .line 722
    :catch_37
    move-exception v3

    .line 728
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_38
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v0, v3}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3d} :catch_43

    .line 733
    .local v0, "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    :goto_3d
    sget-object v7, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v7, p0, v5, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1f

    .line 729
    .end local v0    # "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    :catch_43
    move-exception v2

    .line 730
    .local v2, "oomMostLikely":Ljava/lang/Throwable;
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->FALLBACK_INSTANCE:Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .restart local v0    # "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    goto :goto_3d

    .line 737
    .end local v0    # "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    .end local v2    # "oomMostLikely":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_47
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 741
    .end local v5    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;
    :cond_49
    instance-of v6, v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v6, :cond_55

    move-object v6, v1

    .line 743
    check-cast v6, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-boolean v6, v6, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {p1, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    :cond_55
    move v6, v7

    .line 745
    goto :goto_1f
.end method

.method final trustedGetException()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 840
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method protected final wasInterrupted()Z
    .registers 3

    .prologue
    .line 608
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 609
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .end local v0    # "localValue":Ljava/lang/Object;
    iget-boolean v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method
