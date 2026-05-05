.class Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
.super Ljava/lang/Object;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockGraphNode"
.end annotation


# instance fields
.field final allowedPriorLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;",
            ">;"
        }
    .end annotation
.end field

.field final disallowedPriorLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;",
            ">;"
        }
    .end annotation
.end field

.field final lockName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "lockName"    # Ljava/lang/String;

    .prologue
    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    .line 598
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->disallowedPriorLocks:Ljava/util/Map;

    .line 604
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->lockName:Ljava/lang/String;

    .line 605
    return-void
.end method

.method private findPathTo(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    .registers 9
    .param p1, "node"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;)",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p2, "seen":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    const/4 v3, 0x0

    .line 689
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    move-object v1, v3

    .line 710
    :cond_8
    :goto_8
    return-object v1

    .line 692
    :cond_9
    iget-object v5, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    .line 693
    .local v1, "found":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    if-nez v1, :cond_8

    .line 697
    iget-object v5, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 698
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    .line 699
    .local v4, "preAcquiredLock":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    invoke-direct {v4, p1, p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->findPathTo(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    move-result-object v1

    .line 700
    if-eqz v1, :cond_1d

    .line 704
    new-instance v3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    invoke-direct {v3, v4, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V

    .line 705
    .local v3, "path":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    invoke-virtual {v5}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 706
    invoke-virtual {v3, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object v1, v3

    .line 707
    goto :goto_8

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;>;"
    .end local v3    # "path":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    .end local v4    # "preAcquiredLock":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    :cond_4c
    move-object v1, v3

    .line 710
    goto :goto_8
.end method


# virtual methods
.method checkAcquiredLock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V
    .registers 11
    .param p1, "policy"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    .param p2, "acquiredLock"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    .prologue
    const/4 v7, 0x0

    .line 633
    if-eq p0, p2, :cond_16

    const/4 v4, 0x1

    :goto_4
    const-string v5, "Attempted to acquire multiple locks with the same rank %s"

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->getLockName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 638
    iget-object v4, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 678
    :goto_15
    return-void

    .line 633
    :cond_16
    const/4 v4, 0x0

    goto :goto_4

    .line 644
    :cond_18
    iget-object v4, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->disallowedPriorLocks:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    .line 645
    .local v2, "previousDeadlockException":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;
    if-eqz v2, :cond_2f

    .line 649
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->getConflictingStackTrace()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    move-result-object v4

    invoke-direct {v0, p2, p0, v4, v7}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    .line 652
    .local v0, "exception":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;
    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;->handlePotentialDeadlock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V

    goto :goto_15

    .line 657
    .end local v0    # "exception":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;
    :cond_2f
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object v3

    .line 658
    .local v3, "seen":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    invoke-direct {p2, p0, v3}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->findPathTo(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    move-result-object v1

    .line 660
    .local v1, "path":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    if-nez v1, :cond_44

    .line 669
    iget-object v4, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    new-instance v5, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    invoke-direct {v5, p2, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V

    invoke-interface {v4, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 673
    :cond_44
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    invoke-direct {v0, p2, p0, v1, v7}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    .line 675
    .restart local v0    # "exception":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;
    iget-object v4, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->disallowedPriorLocks:Ljava/util/Map;

    invoke-interface {v4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;->handlePotentialDeadlock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V

    goto :goto_15
.end method

.method checkAcquiredLocks(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V
    .registers 6
    .param p1, "policy"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 612
    .local p2, "acquiredLocks":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5
    if-ge v0, v1, :cond_13

    .line 613
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    invoke-virtual {p0, p1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->checkAcquiredLock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 615
    :cond_13
    return-void
.end method

.method getLockName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->lockName:Ljava/lang/String;

    return-object v0
.end method
