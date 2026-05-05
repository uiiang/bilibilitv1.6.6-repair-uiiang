.class public final Lcom/google/common/util/concurrent/Uninterruptibles;
.super Ljava/lang/Object;
.source "Uninterruptibles.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V
    .registers 5
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 57
    .local v1, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_e
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    .line 64
    if-eqz v1, :cond_d

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    .line 59
    :catch_e
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 61
    goto :goto_1

    .line 64
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_11
    move-exception v2

    if-eqz v1, :cond_1b

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1b
    throw v2
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z
    .registers 13
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "interrupted":Z
    :try_start_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 80
    .local v4, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_24

    move-result-wide v6

    add-long v2, v6, v4

    .line 85
    .local v2, "end":J
    :goto_b
    :try_start_b
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_1b
    .catchall {:try_start_b .. :try_end_10} :catchall_24

    move-result v6

    .line 92
    if-eqz v1, :cond_1a

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_1a
    return v6

    .line 86
    :catch_1b
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 88
    :try_start_1d
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    move-result-wide v6

    sub-long v4, v2, v6

    .line 89
    goto :goto_b

    .line 92
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "end":J
    .end local v4    # "remainingNanos":J
    :catchall_24
    move-exception v6

    if-eqz v1, :cond_2e

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_2e
    throw v6
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    const/4 v1, 0x0

    .line 142
    .local v1, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_f
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    move-result-object v2

    .line 148
    if-eqz v1, :cond_e

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object v2

    .line 143
    :catch_f
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 145
    goto :goto_1

    .line 148
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v2

    if-eqz v1, :cond_1c

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1c
    throw v2
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 13
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    const/4 v1, 0x0

    .line 177
    .local v1, "interrupted":Z
    :try_start_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 178
    .local v4, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_24

    move-result-wide v6

    add-long v2, v6, v4

    .line 183
    .local v2, "end":J
    :goto_b
    :try_start_b
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_1b
    .catchall {:try_start_b .. :try_end_10} :catchall_24

    move-result-object v6

    .line 190
    if-eqz v1, :cond_1a

    .line 191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_1a
    return-object v6

    .line 184
    :catch_1b
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 186
    :try_start_1d
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    move-result-wide v6

    sub-long v4, v2, v6

    .line 187
    goto :goto_b

    .line 190
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "end":J
    .end local v4    # "remainingNanos":J
    :catchall_24
    move-exception v6

    if-eqz v1, :cond_2e

    .line 191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_2e
    throw v6
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;)V
    .registers 5
    .param p0, "toJoin"    # Ljava/lang/Thread;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 107
    .local v1, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_e
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    .line 114
    if-eqz v1, :cond_d

    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    .line 109
    :catch_e
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 111
    goto :goto_1

    .line 114
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_11
    move-exception v2

    if-eqz v1, :cond_1b

    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1b
    throw v2
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .param p0, "toJoin"    # Ljava/lang/Thread;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 202
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/4 v1, 0x0

    .line 205
    .local v1, "interrupted":Z
    :try_start_4
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 206
    .local v4, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_26

    move-result-wide v6

    add-long v2, v6, v4

    .line 210
    .local v2, "end":J
    :goto_e
    :try_start_e
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p0, v4, v5}, Ljava/util/concurrent/TimeUnit;->timedJoin(Ljava/lang/Thread;J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_13} :catch_1d
    .catchall {:try_start_e .. :try_end_13} :catchall_26

    .line 218
    if-eqz v1, :cond_1c

    .line 219
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    :cond_1c
    return-void

    .line 212
    :catch_1d
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 214
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_26

    move-result-wide v6

    sub-long v4, v2, v6

    .line 215
    goto :goto_e

    .line 218
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "end":J
    .end local v4    # "remainingNanos":J
    :catchall_26
    move-exception v6

    if-eqz v1, :cond_30

    .line 219
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_30
    throw v6
.end method

.method public static putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    .registers 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;TE;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .line 259
    .local v1, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_e
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    .line 266
    if-eqz v1, :cond_d

    .line 267
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    .line 261
    :catch_e
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 263
    goto :goto_1

    .line 266
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_11
    move-exception v2

    if-eqz v1, :cond_1b

    .line 267
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1b
    throw v2
.end method

.method public static sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V
    .registers 11
    .param p0, "sleepFor"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 280
    .local v1, "interrupted":Z
    :try_start_1
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 281
    .local v4, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_23

    move-result-wide v6

    add-long v2, v6, v4

    .line 285
    .local v2, "end":J
    :goto_b
    :try_start_b
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_1a
    .catchall {:try_start_b .. :try_end_10} :catchall_23

    .line 293
    if-eqz v1, :cond_19

    .line 294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    return-void

    .line 287
    :catch_1a
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 289
    :try_start_1c
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_23

    move-result-wide v6

    sub-long v4, v2, v6

    .line 290
    goto :goto_b

    .line 293
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "end":J
    .end local v4    # "remainingNanos":J
    :catchall_23
    move-exception v6

    if-eqz v1, :cond_2d

    .line 294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_2d
    throw v6
.end method

.method public static takeUninterruptibly(Ljava/util/concurrent/BlockingQueue;)Ljava/lang/Object;
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    const/4 v1, 0x0

    .line 233
    .local v1, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_f
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    move-result-object v2

    .line 239
    if-eqz v1, :cond_e

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object v2

    .line 234
    :catch_f
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 236
    goto :goto_1

    .line 239
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v2

    if-eqz v1, :cond_1c

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1c
    throw v2
.end method

.method public static tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;IJLjava/util/concurrent/TimeUnit;)Z
    .registers 13
    .param p0, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p1, "permits"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 320
    const/4 v1, 0x0

    .line 322
    .local v1, "interrupted":Z
    :try_start_1
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 323
    .local v4, "remainingNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_24

    move-result-wide v6

    add-long v2, v6, v4

    .line 328
    .local v2, "end":J
    :goto_b
    :try_start_b
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_1b
    .catchall {:try_start_b .. :try_end_10} :catchall_24

    move-result v6

    .line 335
    if-eqz v1, :cond_1a

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_1a
    return v6

    .line 329
    :catch_1b
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 331
    :try_start_1d
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    move-result-wide v6

    sub-long v4, v2, v6

    .line 332
    goto :goto_b

    .line 335
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "end":J
    .end local v4    # "remainingNanos":J
    :catchall_24
    move-exception v6

    if-eqz v1, :cond_2e

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_2e
    throw v6
.end method

.method public static tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p0, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/common/util/concurrent/Uninterruptibles;->tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
