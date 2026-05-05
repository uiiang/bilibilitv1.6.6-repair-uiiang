.class public final Lcom/google/android/exoplayer2/PlayerMessage;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/PlayerMessage$Sender;,
        Lcom/google/android/exoplayer2/PlayerMessage$Target;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private deleteAfterDelivery:Z

.field private isCanceled:Z

.field private isDelivered:Z

.field private isProcessed:Z

.field private isSent:Z

.field private looper:Landroid/os/Looper;

.field private mediaItemIndex:I

.field private payload:Ljava/lang/Object;

.field private positionMs:J

.field private final sender:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

.field private final target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

.field private final timeline:Lcom/google/android/exoplayer2/Timeline;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/PlayerMessage$Sender;Lcom/google/android/exoplayer2/PlayerMessage$Target;Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;)V
    .registers 9
    .param p1, "sender"    # Lcom/google/android/exoplayer2/PlayerMessage$Sender;
    .param p2, "target"    # Lcom/google/android/exoplayer2/PlayerMessage$Target;
    .param p3, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p4, "defaultMediaItemIndex"    # I
    .param p5, "clock"    # Lcom/google/android/exoplayer2/util/Clock;
    .param p6, "defaultLooper"    # Landroid/os/Looper;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->sender:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

    .line 102
    iput-object p2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    .line 103
    iput-object p3, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 104
    iput-object p6, p0, Lcom/google/android/exoplayer2/PlayerMessage;->looper:Landroid/os/Looper;

    .line 105
    iput-object p5, p0, Lcom/google/android/exoplayer2/PlayerMessage;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 106
    iput p4, p0, Lcom/google/android/exoplayer2/PlayerMessage;->mediaItemIndex:I

    .line 107
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    .line 109
    return-void
.end method


# virtual methods
.method public declared-synchronized blockUntilDelivered()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 331
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 333
    :goto_18
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isProcessed:Z

    if-nez v0, :cond_20

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_18

    .line 336
    .end local p0    # "this":Lcom/google/android/exoplayer2/PlayerMessage;
    :cond_20
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return v0

    .line 330
    :catchall_24
    move-exception v0

    monitor-exit p0

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27
.end method

.method public declared-synchronized blockUntilDelivered(J)Z
    .registers 11
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 358
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 362
    .local v0, "deadlineMs":J
    move-wide v2, p1

    .line 363
    .local v2, "remainingMs":J
    :goto_20
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isProcessed:Z

    if-nez v4, :cond_3b

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_3b

    .line 364
    iget-object v4, p0, Lcom/google/android/exoplayer2/PlayerMessage;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/util/Clock;->onThreadBlocked()V

    .line 365
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 366
    iget-object v4, p0, Lcom/google/android/exoplayer2/PlayerMessage;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v0, v4

    goto :goto_20

    .line 368
    .end local p0    # "this":Lcom/google/android/exoplayer2/PlayerMessage;
    :cond_3b
    if-eqz v4, :cond_41

    .line 371
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_49

    monitor-exit p0

    return v4

    .line 369
    :cond_41
    :try_start_41
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    const-string v5, "Message delivery timed out."

    invoke-direct {v4, v5}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_49

    .line 357
    .end local v0    # "deadlineMs":J
    .end local v2    # "remainingMs":J
    .end local p1    # "timeoutMs":J
    :catchall_49
    move-exception p1

    monitor-exit p0

    goto :goto_4d

    :goto_4c
    throw p1

    :goto_4d
    goto :goto_4c
.end method

.method public declared-synchronized cancel()Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 2

    monitor-enter p0

    .line 291
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled:Z

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 294
    monitor-exit p0

    return-object p0

    .line 290
    .end local p0    # "this":Lcom/google/android/exoplayer2/PlayerMessage;
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeleteAfterDelivery()Z
    .registers 2

    .line 262
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->looper:Landroid/os/Looper;

    return-object v0
.end method

.method public getMediaItemIndex()I
    .registers 2

    .line 241
    iget v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->mediaItemIndex:I

    return v0
.end method

.method public getPayload()Ljava/lang/Object;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getPositionMs()J
    .registers 3

    .line 195
    iget-wide v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    return-wide v0
.end method

.method public getTarget()Lcom/google/android/exoplayer2/PlayerMessage$Target;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    return-object v0
.end method

.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->type:I

    return v0
.end method

.method public declared-synchronized isCanceled()Z
    .registers 2

    monitor-enter p0

    .line 299
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 299
    .end local p0    # "this":Lcom/google/android/exoplayer2/PlayerMessage;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markAsProcessed(Z)V
    .registers 3
    .param p1, "isDelivered"    # Z

    monitor-enter p0

    .line 311
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isProcessed:Z

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 314
    monitor-exit p0

    return-void

    .line 310
    .end local p0    # "this":Lcom/google/android/exoplayer2/PlayerMessage;
    .end local p1    # "isDelivered":Z
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send()Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 7

    .line 274
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 275
    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_17

    .line 276
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 278
    :cond_17
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->sender:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/PlayerMessage$Sender;->sendMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 280
    return-object p0
.end method

.method public setDeleteAfterDelivery(Z)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3
    .param p1, "deleteAfterDelivery"    # Z

    .line 255
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 256
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    .line 257
    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    return-object v0
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 178
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 179
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->looper:Landroid/os/Looper;

    .line 180
    return-object p0
.end method

.method public setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3
    .param p1, "payload"    # Ljava/lang/Object;

    .line 149
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 150
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->payload:Ljava/lang/Object;

    .line 151
    return-object p0
.end method

.method public setPosition(IJ)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 8
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J

    .line 228
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 229
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v2

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 230
    if-ltz p1, :cond_2c

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 231
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_2c

    .line 234
    :cond_27
    iput p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->mediaItemIndex:I

    .line 235
    iput-wide p2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    .line 236
    return-object p0

    .line 232
    :cond_2c
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v0
.end method

.method public setPosition(J)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 4
    .param p1, "positionMs"    # J

    .line 209
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 210
    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    .line 211
    return-object p0
.end method

.method public setType(I)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3
    .param p1, "messageType"    # I

    .line 130
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 131
    iput p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->type:I

    .line 132
    return-object p0
.end method
