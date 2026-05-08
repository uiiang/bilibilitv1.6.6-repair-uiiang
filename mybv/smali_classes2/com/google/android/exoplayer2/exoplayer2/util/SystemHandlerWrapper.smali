.class final Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/HandlerWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x32

.field private static final messagePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    .line 37
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->recycleMessage(Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;)V

    return-void
.end method

.method private static obtainSystemMessage()Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;
    .registers 3

    .line 128
    sget-object v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    monitor-enter v0

    .line 129
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 130
    new-instance v1, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;-><init>(Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$1;)V

    goto :goto_1c

    .line 131
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    :goto_1c
    monitor-exit v0

    .line 129
    return-object v1

    .line 132
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private static recycleMessage(Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;)V
    .registers 4
    .param p0, "message"    # Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    .line 136
    sget-object v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    monitor-enter v0

    .line 137
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_e

    .line 138
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_e
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public hasMessages(I)Z
    .registers 3
    .param p1, "what"    # I

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .registers 4
    .param p1, "what"    # I

    .line 62
    invoke-static {}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->obtainSystemMessage()Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->setMessage(Landroid/os/Message;Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;)Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 72
    invoke-static {}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->obtainSystemMessage()Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 73
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->setMessage(Landroid/os/Message;Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;)Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method public obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->obtainSystemMessage()Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 79
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->setMessage(Landroid/os/Message;Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;)Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method public obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 67
    invoke-static {}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->obtainSystemMessage()Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->setMessage(Landroid/os/Message;Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;)Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMs"    # J

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .registers 3
    .param p1, "token"    # Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public removeMessages(I)V
    .registers 3
    .param p1, "what"    # I

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    return-void
.end method

.method public sendEmptyMessage(I)Z
    .registers 3
    .param p1, "what"    # I

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public sendEmptyMessageAtTime(IJ)Z
    .registers 5
    .param p1, "what"    # I
    .param p2, "uptimeMs"    # J

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result v0

    return v0
.end method

.method public sendEmptyMessageDelayed(II)Z
    .registers 6
    .param p1, "what"    # I
    .param p2, "delayMs"    # I

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method public sendMessageAtFrontOfQueue(Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;)Z
    .registers 4
    .param p1, "message"    # Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->sendAtFrontOfQueue(Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method
