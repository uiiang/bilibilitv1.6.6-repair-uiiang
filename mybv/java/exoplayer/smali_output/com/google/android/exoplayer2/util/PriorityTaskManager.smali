.class public final Lcom/google/android/exoplayer2/util/PriorityTaskManager;
.super Ljava/lang/Object;
.source "PriorityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private highestPriority:I

.field private final lock:Ljava/lang/Object;

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    .line 56
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    .line 57
    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 5
    .param p1, "priority"    # I

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 67
    iget v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public proceed(I)V
    .registers 4
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :goto_3
    :try_start_3
    iget v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    if-eq v1, p1, :cond_d

    .line 80
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 82
    :cond_d
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    goto :goto_13

    :goto_12
    throw v1

    :goto_13
    goto :goto_12
.end method

.method public proceedNonBlocking(I)Z
    .registers 4
    .param p1, "priority"    # I

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    iget v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    if-ne v1, p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 94
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public proceedOrThrow(I)V
    .registers 5
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    iget v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    if-ne v1, p1, :cond_9

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 106
    :cond_9
    new-instance v1, Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;

    iget v2, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    invoke-direct {v1, p1, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;-><init>(II)V

    .end local p1    # "priority":I
    throw v1

    .line 108
    .restart local p1    # "priority":I
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public remove(I)V
    .registers 5
    .param p1, "priority"    # I

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const/high16 v1, -0x80000000

    goto :goto_29

    :cond_17
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_29
    iput v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method
