.class abstract Lcom/google/common/util/concurrent/AggregateFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "AggregateFuture.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture",
        "<TOutputT;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/AggregateFuture",
            "<TInputT;TOutputT;>.RunningState;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 78
    return-void
.end method

.method static synthetic access$400(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .registers 3
    .param p0, "x0"    # Ljava/util/Set;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    return-object p1
.end method

.method private static addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :goto_0
    if-eqz p1, :cond_f

    .line 277
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 278
    .local v0, "firstTimeSeen":Z
    if-nez v0, :cond_a

    .line 285
    const/4 v1, 0x0

    .line 288
    .end local v0    # "firstTimeSeen":Z
    :goto_9
    return v1

    .line 276
    .restart local v0    # "firstTimeSeen":Z
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 288
    .end local v0    # "firstTimeSeen":Z
    :cond_f
    const/4 v1, 0x1

    goto :goto_9
.end method


# virtual methods
.method protected final afterDone()V
    .registers 8

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->afterDone()V

    .line 50
    iget-object v3, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 51
    .local v3, "localRunningState":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    if-eqz v3, :cond_3b

    .line 53
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 54
    # getter for: Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;
    invoke-static {v3}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->access$000(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    .line 56
    .local v1, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->wasInterrupted()Z

    move-result v4

    .line 58
    .local v4, "wasInterrupted":Z
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->wasInterrupted()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 59
    invoke-virtual {v3}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->interruptTask()V

    .line 62
    :cond_1b
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v6

    if-eqz v1, :cond_39

    const/4 v5, 0x1

    :goto_22
    and-int/2addr v5, v6

    if-eqz v5, :cond_3b

    .line 63
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 64
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    invoke-interface {v0, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_29

    .line 62
    .end local v0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_39
    const/4 v5, 0x0

    goto :goto_22

    .line 68
    .end local v1    # "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;>;"
    .end local v4    # "wasInterrupted":Z
    :cond_3b
    return-void
.end method

.method final init(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AggregateFuture",
            "<TInputT;TOutputT;>.RunningState;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p1, "runningState":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 75
    # invokes: Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->init()V
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->access$100(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 76
    return-void
.end method
