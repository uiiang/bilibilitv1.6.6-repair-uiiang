.class public final Lcom/google/android/exoplayer2/util/ListenerSet;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;,
        Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;,
        Lcom/google/android/exoplayer2/util/ListenerSet$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MSG_ITERATION_FINISHED:I


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final flushingEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private final iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final queuedEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field private final releasedLock:Ljava/lang/Object;

.field private throwsWhenUsingWrongThread:Z


# direct methods
.method public static synthetic $r8$lambda$eEvjP-IE0x3J2lRvKfFbbjRFRvc(Lcom/google/android/exoplayer2/util/ListenerSet;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V
    .registers 10
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "clock"    # Lcom/google/android/exoplayer2/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/Clock;",
            "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    .local p3, "iterationFinishedEvent":Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;, "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<TT;>;"
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;Z)V

    .line 111
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;Z)V
    .registers 7
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "clock"    # Lcom/google/android/exoplayer2/util/Clock;
    .param p5, "throwsWhenUsingWrongThread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/Clock;",
            "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    .local p1, "listeners":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;>;"
    .local p4, "iterationFinishedEvent":Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;, "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p3, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 121
    iput-object p4, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    .line 124
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    .line 127
    new-instance v0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/util/ListenerSet;)V

    invoke-interface {p3, p2, v0}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    .line 128
    .local v0, "handler":Lcom/google/android/exoplayer2/util/HandlerWrapper;
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 129
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    .line 130
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 296
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    .line 297
    .local v1, "holder":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->iterationFinished(Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    .line 298
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 302
    goto :goto_22

    .line 304
    .end local v1    # "holder":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    :cond_21
    goto :goto_6

    .line 305
    :cond_22
    :goto_22
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$queueEvent$0(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .registers 5
    .param p0, "listenerSnapshot"    # Ljava/util/concurrent/CopyOnWriteArraySet;
    .param p1, "eventFlag"    # I
    .param p2, "event"    # Lcom/google/android/exoplayer2/util/ListenerSet$Event;

    .line 225
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    .line 226
    .local v1, "holder":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->invoke(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 227
    .end local v1    # "holder":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    goto :goto_4

    .line 228
    :cond_14
    return-void
.end method

.method private verifyCurrentThread()V
    .registers 3

    .line 309
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    if-nez v0, :cond_5

    .line 310
    return-void

    .line 312
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 313
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->released:Z

    if-eqz v1, :cond_c

    .line 178
    monitor-exit v0

    return-void

    .line 180
    :cond_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public clear()V
    .registers 2

    .line 203
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->verifyCurrentThread()V

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 205
    return-void
.end method

.method public copy(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)Lcom/google/android/exoplayer2/util/ListenerSet;
    .registers 11
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "clock"    # Lcom/google/android/exoplayer2/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/Clock;",
            "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)",
            "Lcom/google/android/exoplayer2/util/ListenerSet<",
            "TT;>;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    .local p3, "iterationFinishedEvent":Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;, "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<TT;>;"
    new-instance v6, Lcom/google/android/exoplayer2/util/ListenerSet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;Z)V

    return-object v6
.end method

.method public copy(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)Lcom/google/android/exoplayer2/util/ListenerSet;
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)",
            "Lcom/google/android/exoplayer2/util/ListenerSet<",
            "TT;>;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    .local p2, "iterationFinishedEvent":Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;, "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->copy(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    return-object v0
.end method

.method public flushEvents()V
    .registers 4

    .line 233
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->verifyCurrentThread()V

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 235
    return-void

    .line 237
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendMessageAtFrontOfQueue(Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;)Z

    .line 240
    :cond_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 241
    .local v0, "recursiveFlushInProgress":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 243
    if-eqz v0, :cond_35

    .line 245
    return-void

    .line 247
    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 248
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 249
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_35

    .line 251
    :cond_4e
    return-void
.end method

.method public queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .registers 6
    .param p1, "eventFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 221
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    .local p2, "event":Lcom/google/android/exoplayer2/util/ListenerSet$Event;, "Lcom/google/android/exoplayer2/util/ListenerSet$Event<TT;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->verifyCurrentThread()V

    .line 222
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 223
    .local v0, "listenerSnapshot":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public release()V
    .registers 4

    .line 272
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->verifyCurrentThread()V

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->released:Z

    .line 275
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_28

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    .line 277
    .local v1, "listenerHolder":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->release(Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    .line 278
    .end local v1    # "listenerHolder":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    goto :goto_10

    .line 279
    :cond_22
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 280
    return-void

    .line 275
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    goto :goto_2c

    :goto_2b
    throw v1

    :goto_2c
    goto :goto_2b
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->verifyCurrentThread()V

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    .line 194
    .local v1, "listenerHolder":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 195
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->release(Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    .line 196
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 198
    .end local v1    # "listenerHolder":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    :cond_27
    goto :goto_9

    .line 199
    :cond_28
    return-void
.end method

.method public sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .registers 3
    .param p1, "eventFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 262
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    .local p2, "event":Lcom/google/android/exoplayer2/util/ListenerSet$Event;, "Lcom/google/android/exoplayer2/util/ListenerSet$Event<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 263
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    .line 264
    return-void
.end method

.method public setThrowsWhenUsingWrongThread(Z)V
    .registers 2
    .param p1, "throwsWhenUsingWrongThread"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    .line 293
    return-void
.end method

.method public size()I
    .registers 2

    .line 209
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet;, "Lcom/google/android/exoplayer2/util/ListenerSet<TT;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->verifyCurrentThread()V

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    return v0
.end method
