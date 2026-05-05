.class public final Lcom/google/android/exoplayer2/util/TimedValueQueue;
.super Ljava/lang/Object;
.source "TimedValueQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INITIAL_BUFFER_SIZE:I = 0xa


# instance fields
.field private first:I

.field private size:I

.field private timestamps:[J

.field private values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>(I)V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialBufferSize"    # I

    .line 45
    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    .line 47
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private addUnchecked(JLjava/lang/Object;)V
    .registers 8
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v3, v2

    rem-int/2addr v0, v3

    .line 175
    .local v0, "next":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    aput-wide p1, v3, v0

    .line 176
    aput-object p3, v2, v0

    .line 177
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    .line 178
    return-void
.end method

.method private clearBufferOnTimeDiscontinuity(J)V
    .registers 7
    .param p1, "timestamp"    # J

    .line 142
    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    if-lez v0, :cond_18

    .line 143
    iget v1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    .line 144
    .local v1, "last":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-gtz v0, :cond_18

    .line 145
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    .line 148
    .end local v1    # "last":I
    :cond_18
    return-void
.end method

.method private doubleCapacityIfFull()V
    .registers 9

    .line 151
    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v0, v0

    .line 152
    .local v0, "capacity":I
    iget v1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    if-ge v1, v0, :cond_8

    .line 153
    return-void

    .line 155
    :cond_8
    mul-int/lit8 v1, v0, 0x2

    .line 156
    .local v1, "newCapacity":I
    new-array v2, v1, [J

    .line 157
    .local v2, "newTimestamps":[J
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->newArray(I)[Ljava/lang/Object;

    move-result-object v3

    .line 160
    .local v3, "newValues":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    sub-int v5, v0, v4

    .line 161
    .local v5, "length":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    const/4 v7, 0x0

    invoke-static {v6, v4, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v6, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    invoke-static {v4, v6, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    if-lez v4, :cond_31

    .line 165
    iget-object v6, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    invoke-static {v6, v7, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v6, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    invoke-static {v4, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    :cond_31
    iput-object v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    .line 169
    iput-object v3, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    .line 170
    iput v7, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    .line 171
    return-void
.end method

.method private static newArray(I)[Ljava/lang/Object;
    .registers 2
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)[TV;"
        }
    .end annotation

    .line 182
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method private poll(JZ)Ljava/lang/Object;
    .registers 12
    .param p1, "timestamp"    # J
    .param p3, "onlyOlder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)TV;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    const/4 v0, 0x0

    .line 119
    .local v0, "value":Ljava/lang/Object;, "TV;"
    const-wide v1, 0x7fffffffffffffffL

    .line 120
    .local v1, "previousTimeDiff":J
    :goto_6
    iget v3, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    if-lez v3, :cond_26

    .line 121
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    iget v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    aget-wide v4, v3, v4

    sub-long v4, p1, v4

    .line 122
    .local v4, "timeDiff":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_20

    if-nez p3, :cond_26

    neg-long v6, v4

    cmp-long v3, v6, v1

    if-ltz v3, :cond_20

    .line 123
    goto :goto_26

    .line 125
    :cond_20
    move-wide v1, v4

    .line 126
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->popFirst()Ljava/lang/Object;

    move-result-object v0

    .line 127
    .end local v4    # "timeDiff":J
    goto :goto_6

    .line 128
    :cond_26
    :goto_26
    return-object v0
.end method

.method private popFirst()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    const/4 v1, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    aget-object v3, v0, v2

    .line 135
    .local v3, "value":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x0

    aput-object v4, v0, v2

    .line 136
    add-int/2addr v2, v1

    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    .line 138
    return-object v3
.end method


# virtual methods
.method public declared-synchronized add(JLjava/lang/Object;)V
    .registers 4
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 56
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clearBufferOnTimeDiscontinuity(J)V

    .line 57
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->doubleCapacityIfFull()V

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->addUnchecked(JLjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 59
    monitor-exit p0

    return-void

    .line 55
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    .end local p1    # "timestamp":J
    .end local p3    # "value":Ljava/lang/Object;, "TV;"
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 3

    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 63
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    .line 64
    iput v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 66
    monitor-exit p0

    return-void

    .line 62
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll(J)Ljava/lang/Object;
    .registers 4
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 103
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->poll(JZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 103
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    .end local p1    # "timestamp":J
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pollFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 76
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->popFirst()Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :goto_b
    monitor-exit p0

    return-object v0

    .line 76
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pollFloor(J)Ljava/lang/Object;
    .registers 4
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 90
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->poll(JZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 90
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    .end local p1    # "timestamp":J
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .registers 2

    .local p0, "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 70
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 70
    .end local p0    # "this":Lcom/google/android/exoplayer2/util/TimedValueQueue;, "Lcom/google/android/exoplayer2/util/TimedValueQueue<TV;>;"
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
