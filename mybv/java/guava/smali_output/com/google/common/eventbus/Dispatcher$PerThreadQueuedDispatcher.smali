.class final Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;
.super Lcom/google/common/eventbus/Dispatcher;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PerThreadQueuedDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;
    }
.end annotation


# instance fields
.field private final dispatching:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/common/eventbus/Dispatcher;-><init>()V

    .line 84
    new-instance v0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$1;

    invoke-direct {v0, p0}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$1;-><init>(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;)V

    iput-object v0, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->queue:Ljava/lang/ThreadLocal;

    .line 95
    new-instance v0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$2;

    invoke-direct {v0, p0}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$2;-><init>(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;)V

    iput-object v0, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->dispatching:Ljava/lang/ThreadLocal;

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/eventbus/Dispatcher$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/eventbus/Dispatcher$1;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method dispatch(Ljava/lang/Object;Ljava/util/Iterator;)V
    .registers 7
    .param p1, "event"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "subscribers":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/eventbus/Subscriber;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v2, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->queue:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 108
    .local v1, "queueForThread":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;>;"
    new-instance v2, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;-><init>(Ljava/lang/Object;Ljava/util/Iterator;Lcom/google/common/eventbus/Dispatcher$1;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->dispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_69

    .line 111
    iget-object v2, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->dispatching:Ljava/lang/ThreadLocal;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 114
    :cond_2f
    :try_start_2f
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;

    .local v0, "nextEvent":Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;
    if-eqz v0, :cond_5f

    .line 115
    :goto_37
    # getter for: Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->subscribers:Ljava/util/Iterator;
    invoke-static {v0}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->access$400(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;)Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 116
    # getter for: Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->subscribers:Ljava/util/Iterator;
    invoke-static {v0}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->access$400(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;)Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/eventbus/Subscriber;

    # getter for: Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->event:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->access$500(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/eventbus/Subscriber;->dispatchEvent(Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_53

    goto :goto_37

    .line 120
    .end local v0    # "nextEvent":Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;
    :catchall_53
    move-exception v2

    iget-object v3, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->dispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 121
    iget-object v3, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->queue:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    throw v2

    .line 120
    .restart local v0    # "nextEvent":Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;
    :cond_5f
    iget-object v2, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->dispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 121
    iget-object v2, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->queue:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 124
    .end local v0    # "nextEvent":Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;
    :cond_69
    return-void
.end method
