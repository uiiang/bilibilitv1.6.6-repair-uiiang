.class public abstract Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.super Ljava/lang/Object;
.source "SimpleDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/Decoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
        "O:",
        "Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;",
        "E:",
        "Lcom/google/android/exoplayer2/decoder/DecoderException;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/decoder/Decoder<",
        "TI;TO;TE;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private availableInputBufferCount:I

.field private final availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private availableOutputBufferCount:I

.field private final availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private final decodeThread:Ljava/lang/Thread;

.field private dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private exception:Lcom/google/android/exoplayer2/decoder/DecoderException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private flushed:Z

.field private final lock:Ljava/lang/Object;

.field private final queuedInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final queuedOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field private released:Z

.field private skippedOutputBufferCount:I


# direct methods
.method protected constructor <init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffers":[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;, "[TI;"
    .local p2, "outputBuffers":[Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;, "[TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 64
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 66
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    if-ge v0, v1, :cond_2d

    .line 68
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 70
    .end local v0    # "i":I
    :cond_2d
    iput-object p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;

    .line 71
    array-length v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    .line 72
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_33
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    if-ge v0, v1, :cond_42

    .line 73
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->createOutputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 75
    .end local v0    # "i":I
    :cond_42
    new-instance v0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;

    const-string v1, "ExoPlayer:SimpleDecoder"

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;-><init>(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    .line 35
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->run()V

    return-void
.end method

.method private canDecodeBuffer()Z
    .registers 2

    .line 285
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private decode()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 223
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->released:Z

    if-nez v1, :cond_13

    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->canDecodeBuffer()Z

    move-result v1

    if-nez v1, :cond_13

    .line 225
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 227
    :cond_13
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->released:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 228
    monitor-exit v0

    return v2

    .line 230
    :cond_1a
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 231
    .local v1, "inputBuffer":Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;, "TI;"
    iget-object v3, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;

    iget v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    aget-object v3, v3, v4

    .line 232
    .local v3, "outputBuffer":Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;, "TO;"
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->flushed:Z

    .line 233
    .local v4, "resetDecoder":Z
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->flushed:Z

    .line 234
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_9d

    .line 236
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 237
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;->addFlag(I)V

    goto :goto_70

    .line 239
    :cond_3c
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 240
    const/high16 v0, -0x80000000

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;->addFlag(I)V

    .line 242
    :cond_47
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isFirstSample()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 243
    const/high16 v0, 0x8000000

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;->addFlag(I)V

    .line 247
    :cond_52
    :try_start_52
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;

    move-result-object v0
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_56} :catch_5e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_52 .. :try_end_56} :catch_57

    .line 257
    .local v0, "exception":Lcom/google/android/exoplayer2/decoder/DecoderException;, "TE;"
    :goto_56
    goto :goto_64

    .line 252
    .end local v0    # "exception":Lcom/google/android/exoplayer2/decoder/DecoderException;, "TE;"
    :catch_57
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;

    move-result-object v6

    move-object v0, v6

    .local v6, "exception":Lcom/google/android/exoplayer2/decoder/DecoderException;, "TE;"
    goto :goto_64

    .line 248
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v6    # "exception":Lcom/google/android/exoplayer2/decoder/DecoderException;, "TE;"
    :catch_5e
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;

    move-result-object v0

    .local v0, "exception":Lcom/google/android/exoplayer2/decoder/DecoderException;, "TE;"
    goto :goto_56

    .line 258
    :goto_64
    if-eqz v0, :cond_70

    .line 259
    iget-object v6, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 260
    :try_start_69
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->exception:Lcom/google/android/exoplayer2/decoder/DecoderException;

    .line 261
    monitor-exit v6

    .line 262
    return v2

    .line 261
    :catchall_6d
    move-exception v2

    monitor-exit v6
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_6d

    throw v2

    .line 266
    .end local v0    # "exception":Lcom/google/android/exoplayer2/decoder/DecoderException;, "TE;"
    :cond_70
    :goto_70
    iget-object v6, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 267
    :try_start_73
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->flushed:Z

    if-eqz v0, :cond_7b

    .line 268
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;->release()V

    goto :goto_95

    .line 269
    :cond_7b
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 270
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 271
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;->release()V

    goto :goto_95

    .line 273
    :cond_8a
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    iput v0, v3, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;->skippedOutputBufferCount:I

    .line 274
    iput v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 278
    :goto_95
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseInputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 279
    monitor-exit v6

    .line 281
    return v5

    .line 279
    :catchall_9a
    move-exception v0

    monitor-exit v6
    :try_end_9c
    .catchall {:try_start_73 .. :try_end_9c} :catchall_9a

    throw v0

    .line 234
    .end local v1    # "inputBuffer":Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;, "TI;"
    .end local v3    # "outputBuffer":Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;, "TO;"
    .end local v4    # "resetDecoder":Z
    :catchall_9d
    move-exception v1

    :try_start_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    goto :goto_a1

    :goto_a0
    throw v1

    :goto_a1
    goto :goto_a0
.end method

.method private maybeNotifyDecodeLoop()V
    .registers 2

    .line 201
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->canDecodeBuffer()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 204
    :cond_b
    return-void
.end method

.method private maybeThrowException()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 188
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->exception:Lcom/google/android/exoplayer2/decoder/DecoderException;

    .line 189
    .local v0, "exception":Lcom/google/android/exoplayer2/decoder/DecoderException;, "TE;"
    if-nez v0, :cond_5

    .line 192
    return-void

    .line 190
    :cond_5
    throw v0
.end method

.method private releaseInputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 289
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;, "TI;"
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    aput-object p1, v0, v1

    .line 291
    return-void
.end method

.method private releaseOutputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 294
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;, "TO;"
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;->clear()V

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    aput-object p1, v0, v1

    .line 296
    return-void
.end method

.method private run()V
    .registers 3

    .line 208
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->decode()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_4} :catch_9

    if-eqz v0, :cond_7

    goto :goto_0

    .line 214
    :cond_7
    nop

    .line 215
    return-void

    .line 211
    :catch_9
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_11

    :goto_10
    throw v1

    :goto_11
    goto :goto_10
.end method


# virtual methods
.method protected abstract createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract createOutputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method protected abstract createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method protected abstract decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public final dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->maybeThrowException()V

    .line 105
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 106
    nop

    .line 107
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    if-nez v1, :cond_18

    .line 108
    const/4 v1, 0x0

    goto :goto_1f

    .line 109
    :cond_18
    iget-object v3, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    aget-object v1, v3, v1

    :goto_1f
    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 110
    monitor-exit v0

    return-object v1

    .line 111
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->maybeThrowException()V

    .line 130
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 131
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;

    monitor-exit v0

    return-object v1

    .line 134
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .registers 3

    .line 152
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->flushed:Z

    .line 154
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 155
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-eqz v1, :cond_13

    .line 156
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseInputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 159
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 160
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseInputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    goto :goto_13

    .line 162
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;->release()V

    goto :goto_27

    .line 165
    :cond_3b
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    goto :goto_41

    :goto_40
    throw v1

    :goto_41
    goto :goto_40
.end method

.method public final queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;, "TI;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->maybeThrowException()V

    .line 118
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-ne p1, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 119
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 120
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    check-cast p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    return-void
.end method

.method public release()V
    .registers 3

    .line 171
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->released:Z

    .line 173
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 174
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1b

    .line 176
    :try_start_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12

    .line 179
    goto :goto_1a

    .line 177
    :catch_12
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 180
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1a
    return-void

    .line 174
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method protected releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;, "TO;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseOutputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    .line 146
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method protected final setInitialInputBufferSize(I)V
    .registers 6
    .param p1, "size"    # I

    .line 94
    .local p0, "this":Lcom/google/android/exoplayer2/decoder/SimpleDecoder;, "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v1, v0

    :goto_11
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 96
    .local v3, "inputBuffer":Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;, "TI;"
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 95
    .end local v3    # "inputBuffer":Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;, "TI;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 98
    :cond_1b
    return-void
.end method
