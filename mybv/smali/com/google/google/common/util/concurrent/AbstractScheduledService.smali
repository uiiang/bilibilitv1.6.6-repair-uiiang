.class public abstract Lcom/google/common/util/concurrent/AbstractScheduledService;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;,
        Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;,
        Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final delegate:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    const-class v0, Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractScheduledService;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService;Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    .line 277
    return-void
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/google/common/util/concurrent/AbstractScheduledService;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/util/concurrent/AbstractScheduledService;)Lcom/google/common/util/concurrent/AbstractService;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractScheduledService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    return-object v0
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/common/util/concurrent/Service$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/AbstractService;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 383
    return-void
.end method

.method public final awaitRunning()V
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->awaitRunning()V

    .line 419
    return-void
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractService;->awaitRunning(JLjava/util/concurrent/TimeUnit;)V

    .line 427
    return-void
.end method

.method public final awaitTerminated()V
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->awaitTerminated()V

    .line 435
    return-void
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractService;->awaitTerminated(JLjava/util/concurrent/TimeUnit;)V

    .line 443
    return-void
.end method

.method protected executor()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 4

    .prologue
    .line 329
    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$1ThreadFactoryImpl;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1ThreadFactoryImpl;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 336
    .local v0, "executor":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/util/concurrent/AbstractScheduledService;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 349
    return-object v0
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->failureCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final isRunning()Z
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected abstract runOneIteration()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract scheduler()Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
.end method

.method protected serviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected shutDown()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    return-void
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/Service;
    .registers 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 400
    return-object p0
.end method

.method protected startUp()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 291
    return-void
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/Service;
    .registers 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 410
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->serviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
