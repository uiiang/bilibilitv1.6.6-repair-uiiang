.class final Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemMessage"
.end annotation


# instance fields
.field private handler:Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;

.field private message:Landroid/os/Message;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$1;

    .line 143
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;-><init>()V

    return-void
.end method

.method private recycle()V
    .registers 2

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    .line 174
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->handler:Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;

    .line 175
    # invokes: Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->recycleMessage(Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;)V
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->access$100(Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;)V

    .line 176
    return-void
.end method


# virtual methods
.method public getTarget()Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->handler:Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-object v0
.end method

.method public sendAtFrontOfQueue(Landroid/os/Handler;)Z
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    .line 157
    .local v0, "success":Z
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->recycle()V

    .line 158
    return v0
.end method

.method public sendToTarget()V
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->recycle()V

    .line 165
    return-void
.end method

.method public setMessage(Landroid/os/Message;Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;)Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;
    .registers 3
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "handler"    # Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;

    .line 150
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    .line 151
    iput-object p2, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->handler:Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;

    .line 152
    return-object p0
.end method
