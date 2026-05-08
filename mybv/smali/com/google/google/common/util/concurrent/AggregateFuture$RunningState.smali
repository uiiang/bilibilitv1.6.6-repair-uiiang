.class abstract Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
.super Lcom/google/common/util/concurrent/AggregateFutureState;
.source "AggregateFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AggregateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "RunningState"
.end annotation


# instance fields
.field private final allMustSucceed:Z

.field private final collectsValues:Z

.field private futures:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TInputT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/util/concurrent/AggregateFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;ZZ)V
    .registers 6
    .param p3, "allMustSucceed"    # Z
    .param p4, "collectsValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    .local p2, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;>;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    .line 87
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFutureState;-><init>(I)V

    .line 88
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 89
    iput-boolean p3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    .line 90
    iput-boolean p4, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->collectsValues:Z

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)Lcom/google/common/collect/ImmutableCollection;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;ILjava/util/concurrent/Future;)V
    .registers 3
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/concurrent/Future;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->handleOneInputDone(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->decrementCountAndMaybeComplete()V

    return-void
.end method

.method private decrementCountAndMaybeComplete()V
    .registers 4

    .prologue
    .line 229
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->decrementRemainingAndGet()I

    move-result v0

    .line 230
    .local v0, "newRemaining":I
    if-ltz v0, :cond_12

    const/4 v1, 0x1

    :goto_7
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 231
    if-nez v0, :cond_11

    .line 232
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->processCompleted()V

    .line 234
    :cond_11
    return-void

    .line 230
    :cond_12
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 157
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "completedWithFailure":Z
    const/4 v1, 0x1

    .line 161
    .local v1, "firstTimeSeeingThisException":Z
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    if-eqz v3, :cond_14

    .line 164
    iget-object v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v3, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    .line 165
    if-eqz v0, :cond_30

    .line 166
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->releaseResourcesAfterFailure()V

    .line 175
    :cond_14
    :goto_14
    instance-of v4, p1, Ljava/lang/Error;

    iget-boolean v5, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    if-nez v0, :cond_39

    const/4 v3, 0x1

    :goto_1b
    and-int/2addr v3, v5

    and-int/2addr v3, v1

    or-int/2addr v3, v4

    if-eqz v3, :cond_2f

    .line 177
    instance-of v3, p1, Ljava/lang/Error;

    if-eqz v3, :cond_3b

    const-string v2, "Input Future failed with Error"

    .line 181
    .local v2, "message":Ljava/lang/String;
    :goto_26
    # getter for: Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/common/util/concurrent/AggregateFuture;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .end local v2    # "message":Ljava/lang/String;
    :cond_2f
    return-void

    .line 170
    :cond_30
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->getOrInitSeenExceptions()Ljava/util/Set;

    move-result-object v3

    # invokes: Lcom/google/common/util/concurrent/AggregateFuture;->addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z
    invoke-static {v3, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->access$400(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v1

    goto :goto_14

    .line 175
    :cond_39
    const/4 v3, 0x0

    goto :goto_1b

    .line 177
    :cond_3b
    const-string v2, "Got more than one input Future failure. Logging failures after the first"

    goto :goto_26
.end method

.method private handleOneInputDone(ILjava/util/concurrent/Future;)V
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future",
            "<+TInputT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    .local p2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TInputT;>;"
    const/4 v3, 0x0

    .line 199
    iget-boolean v4, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    if-nez v4, :cond_15

    iget-object v4, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/AggregateFuture;->isDone()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    const/4 v3, 0x1

    :cond_16
    const-string v4, "Future was done before all dependencies completed"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 204
    :try_start_1b
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    const-string v4, "Tried to set value from future which is not done"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 205
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    if-eqz v3, :cond_52

    .line 206
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 209
    iget-object v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    const/4 v4, 0x0

    # setter for: Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/AggregateFuture;->access$602(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 210
    iget-object v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/AggregateFuture;->cancel(Z)Z

    .line 226
    :cond_3a
    :goto_3a
    return-void

    .line 213
    :cond_3b
    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 214
    .local v1, "result":Ljava/lang/Object;, "TInputT;"
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->collectsValues:Z

    if-eqz v3, :cond_3a

    .line 215
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    invoke-virtual {p0, v3, p1, v1}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->collectOneValue(ZILjava/lang/Object;)V
    :try_end_48
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1b .. :try_end_48} :catch_49
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_48} :catch_66

    goto :goto_3a

    .line 221
    .end local v1    # "result":Ljava/lang/Object;, "TInputT;"
    :catch_49
    move-exception v0

    .line 222
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->handleException(Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 218
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_52
    :try_start_52
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->collectsValues:Z

    if-eqz v3, :cond_3a

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 219
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, p1, v4}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->collectOneValue(ZILjava/lang/Object;)V
    :try_end_65
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_52 .. :try_end_65} :catch_49
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_65} :catch_66

    goto :goto_3a

    .line 223
    :catch_66
    move-exception v2

    .line 224
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->handleException(Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

.method private init()V
    .registers 8

    .prologue
    .line 107
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    iget-object v5, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 108
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->handleAllCompleted()V

    .line 148
    :cond_b
    return-void

    .line 115
    :cond_c
    iget-boolean v5, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    if-eqz v5, :cond_34

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "i":I
    iget-object v5, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 127
    .local v4, "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    move v3, v0

    .line 128
    .local v3, "index":I
    new-instance v5, Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;

    invoke-direct {v5, p0, v3, v4}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;-><init>(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;ILcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v0, v1

    .line 140
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_17

    .line 144
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    :cond_34
    iget-object v5, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 145
    .restart local v4    # "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_3a
.end method

.method private processCompleted()V
    .registers 7

    .prologue
    .line 239
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    iget-boolean v5, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->collectsValues:Z

    iget-boolean v4, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    if-nez v4, :cond_24

    const/4 v4, 0x1

    :goto_7
    and-int/2addr v4, v5

    if-eqz v4, :cond_26

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "i":I
    iget-object v4, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 242
    .local v3, "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-direct {p0, v0, v3}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->handleOneInputDone(ILjava/util/concurrent/Future;)V

    move v0, v1

    .line 243
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_11

    .line 239
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    :cond_24
    const/4 v4, 0x0

    goto :goto_7

    .line 245
    :cond_26
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->handleAllCompleted()V

    .line 246
    return-void
.end method


# virtual methods
.method final addInitialException(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    .local p1, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 189
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AggregateFuture;->trustedGetException()Ljava/lang/Throwable;

    move-result-object v0

    # invokes: Lcom/google/common/util/concurrent/AggregateFuture;->addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z
    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->access$400(Ljava/util/Set;Ljava/lang/Throwable;)Z

    .line 191
    :cond_11
    return-void
.end method

.method abstract collectOneValue(ZILjava/lang/Object;)V
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITInputT;)V"
        }
    .end annotation
.end method

.method abstract handleAllCompleted()V
.end method

.method interruptTask()V
    .registers 1

    .prologue
    .line 271
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    return-void
.end method

.method releaseResourcesAfterFailure()V
    .registers 2

    .prologue
    .line 258
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 259
    return-void
.end method

.method public final run()V
    .registers 1

    .prologue
    .line 96
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->decrementCountAndMaybeComplete()V

    .line 97
    return-void
.end method
