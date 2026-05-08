.class public final Lcom/google/android/exoplayer2/util/TimestampAdjuster;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_PTS_PLUS_ONE:J = 0x200000000L

.field public static final MODE_NO_OFFSET:J = 0x7fffffffffffffffL

.field public static final MODE_SHARED:J = 0x7ffffffffffffffeL


# instance fields
.field private firstSampleTimestampUs:J

.field private lastUnadjustedTimestampUs:J

.field private final nextSampleTimestampUs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "firstSampleTimestampUs"    # J

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->reset(J)V

    .line 93
    return-void
.end method

.method public static ptsToUs(J)J
    .registers 6
    .param p0, "pts"    # J

    .line 252
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p0

    const-wide/32 v2, 0x15f90

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static usToNonWrappedPts(J)J
    .registers 6
    .param p0, "us"    # J

    .line 276
    const-wide/32 v0, 0x15f90

    mul-long v0, v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static usToWrappedPts(J)J
    .registers 6
    .param p0, "us"    # J

    .line 263
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide v0

    const-wide v2, 0x200000000L

    rem-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized adjustSampleTimestamp(J)J
    .registers 8
    .param p1, "timeUs"    # J

    monitor-enter p0

    .line 224
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 225
    monitor-exit p0

    return-wide v0

    .line 227
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_39

    .line 229
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v4, v0, v2

    if-nez v4, :cond_30

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_31

    .line 231
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    :cond_30
    nop

    :goto_31
    nop

    .line 232
    .local v0, "desiredSampleTimestampUs":J
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 236
    .end local v0    # "desiredSampleTimestampUs":J
    :cond_39
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    .line 237
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_3d
    .catchall {:try_start_c .. :try_end_3d} :catchall_40

    add-long/2addr v0, p1

    monitor-exit p0

    return-wide v0

    .line 223
    .end local p1    # "timeUs":J
    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized adjustTsTimestamp(J)J
    .registers 16
    .param p1, "pts90Khz"    # J

    monitor-enter p0

    .line 199
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 200
    monitor-exit p0

    return-wide v0

    .line 202
    :cond_c
    :try_start_c
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_40

    .line 205
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide v0

    .line 206
    .local v0, "lastPts":J
    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    div-long/2addr v2, v4

    .line 207
    .local v2, "closestWrapCount":J
    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long v6, v6, v4

    add-long/2addr v6, p1

    .line 208
    .local v6, "ptsWrapBelow":J
    mul-long v4, v4, v2

    add-long/2addr v4, p1

    .line 210
    .local v4, "ptsWrapAbove":J
    sub-long v8, v6, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v10, v4, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_3e

    .line 211
    move-wide v8, v6

    goto :goto_3f

    .line 212
    :cond_3e
    move-wide v8, v4

    :goto_3f
    move-wide p1, v8

    .line 214
    .end local v0    # "lastPts":J
    .end local v2    # "closestWrapCount":J
    .end local v4    # "ptsWrapAbove":J
    .end local v6    # "ptsWrapBelow":J
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    :cond_40
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v0
    :try_end_48
    .catchall {:try_start_c .. :try_end_48} :catchall_4a

    monitor-exit p0

    return-wide v0

    .line 198
    .end local p1    # "pts90Khz":J
    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFirstSampleTimestampUs()J
    .registers 6

    monitor-enter p0

    .line 156
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_17

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    goto :goto_17

    .line 158
    :cond_16
    goto :goto_1c

    .line 157
    :cond_17
    :goto_17
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 156
    :goto_1c
    monitor-exit p0

    return-wide v0

    .line 155
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastAdjustedTimestampUs()J
    .registers 6

    monitor-enter p0

    .line 166
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    .line 167
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v0, v2

    goto :goto_14

    .line 168
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 166
    :goto_14
    monitor-exit p0

    return-wide v0

    .line 165
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimestampOffsetUs()J
    .registers 3

    monitor-enter p0

    .line 176
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 176
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .registers 6

    monitor-enter p0

    .line 242
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    monitor-exit p0

    return v0

    .line 242
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset(J)V
    .registers 8
    .param p1, "firstSampleTimestampUs"    # J

    monitor-enter p0

    .line 187
    :try_start_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    .line 188
    const-wide v0, 0x7fffffffffffffffL

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v0

    if-nez v4, :cond_14

    const-wide/16 v0, 0x0

    goto :goto_15

    :cond_14
    move-wide v0, v2

    :goto_15
    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 189
    iput-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 190
    monitor-exit p0

    return-void

    .line 186
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .end local p1    # "firstSampleTimestampUs":J
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sharedInitializeOrWait(ZJJ)V
    .registers 16
    .param p1, "canInitialize"    # Z
    .param p2, "nextSampleTimestampUs"    # J
    .param p4, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->isInitialized()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_81

    if-eqz v0, :cond_1c

    .line 125
    monitor-exit p0

    return-void

    .line 126
    :cond_1c
    if-eqz p1, :cond_28

    .line 127
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_7f

    .line 130
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    :cond_28
    const-wide/16 v0, 0x0

    .line 131
    .local v0, "totalWaitDurationMs":J
    move-wide v2, p4

    .line 132
    .local v2, "remainingTimeoutMs":J
    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_7f

    .line 133
    const-wide/16 v6, 0x0

    cmp-long v8, p4, v6

    if-nez v8, :cond_3b

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2b

    .line 136
    :cond_3b
    cmp-long v8, v2, v6

    if-lez v8, :cond_41

    const/4 v6, 0x1

    goto :goto_42

    :cond_41
    const/4 v6, 0x0

    :goto_42
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 138
    .local v6, "waitStartingTimeMs":J
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    add-long/2addr v0, v8

    .line 140
    cmp-long v8, v0, p4

    if-ltz v8, :cond_7c

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_5d

    goto :goto_7c

    .line 141
    :cond_5d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimestampAdjuster failed to initialize in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " milliseconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "message":Ljava/lang/String;
    new-instance v5, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v5, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7c
    .catchall {:try_start_1e .. :try_end_7c} :catchall_81

    .line 145
    .end local v4    # "message":Ljava/lang/String;
    :cond_7c
    :goto_7c
    sub-long v2, p4, v0

    .line 146
    .end local v6    # "waitStartingTimeMs":J
    goto :goto_2b

    .line 149
    .end local v0    # "totalWaitDurationMs":J
    .end local v2    # "remainingTimeoutMs":J
    :cond_7f
    :goto_7f
    monitor-exit p0

    return-void

    .line 122
    .end local p1    # "canInitialize":Z
    .end local p2    # "nextSampleTimestampUs":J
    .end local p4    # "timeoutMs":J
    :catchall_81
    move-exception p1

    monitor-exit p0

    goto :goto_85

    :goto_84
    throw p1

    :goto_85
    goto :goto_84
.end method
