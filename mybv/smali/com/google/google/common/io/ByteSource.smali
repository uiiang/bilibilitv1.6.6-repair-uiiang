.class public abstract Lcom/google/common/io/ByteSource;
.super Ljava/lang/Object;
.source "ByteSource.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteSource$ConcatenatedByteSource;,
        Lcom/google/common/io/ByteSource$EmptyByteSource;,
        Lcom/google/common/io/ByteSource$ByteArrayByteSource;,
        Lcom/google/common/io/ByteSource$SlicedByteSource;,
        Lcom/google/common/io/ByteSource$AsCharSource;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Lcom/google/common/io/ByteSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/ByteSource;",
            ">;)",
            "Lcom/google/common/io/ByteSource;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/io/ByteSource;>;"
    new-instance v0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;)Lcom/google/common/io/ByteSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/ByteSource;",
            ">;)",
            "Lcom/google/common/io/ByteSource;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "sources":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/google/common/io/ByteSource;>;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lcom/google/common/io/ByteSource;)Lcom/google/common/io/ByteSource;
    .registers 2
    .param p0, "sources"    # [Lcom/google/common/io/ByteSource;

    .prologue
    .line 413
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method private countBySkipping(Ljava/io/InputStream;)J
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const-wide/16 v0, 0x0

    .line 225
    .local v0, "count":J
    :goto_2
    const-wide/32 v4, 0x7fffffff

    invoke-static {p1, v4, v5}, Lcom/google/common/io/ByteStreams;->skipUpTo(Ljava/io/InputStream;J)J

    move-result-wide v2

    .local v2, "skipped":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_11

    .line 226
    add-long/2addr v0, v2

    goto :goto_2

    .line 228
    :cond_11
    return-wide v0
.end method

.method public static empty()Lcom/google/common/io/ByteSource;
    .registers 1

    .prologue
    .line 432
    sget-object v0, Lcom/google/common/io/ByteSource$EmptyByteSource;->INSTANCE:Lcom/google/common/io/ByteSource$EmptyByteSource;

    return-object v0
.end method

.method public static wrap([B)Lcom/google/common/io/ByteSource;
    .registers 2
    .param p0, "b"    # [B

    .prologue
    .line 423
    new-instance v0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .registers 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 79
    new-instance v0, Lcom/google/common/io/ByteSource$AsCharSource;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/ByteSource$AsCharSource;-><init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public contentEquals(Lcom/google/common/io/ByteSource;)Z
    .registers 13
    .param p1, "other"    # Lcom/google/common/io/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 338
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v0

    .line 341
    .local v0, "buf1":[B
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v1

    .line 343
    .local v1, "buf2":[B
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v2

    .line 345
    .local v2, "closer":Lcom/google/common/io/Closer;
    :try_start_10
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 346
    .local v4, "in1":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    .line 348
    .local v5, "in2":Ljava/io/InputStream;
    :cond_24
    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v4, v0, v9, v10}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v6

    .line 349
    .local v6, "read1":I
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v5, v1, v9, v10}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v7

    .line 350
    .local v7, "read2":I
    if-ne v6, v7, :cond_38

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_35} :catch_44
    .catchall {:try_start_10 .. :try_end_35} :catchall_4a

    move-result v9

    if-nez v9, :cond_3c

    .line 359
    :cond_38
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    :goto_3b
    return v8

    .line 352
    :cond_3c
    :try_start_3c
    array-length v9, v0
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3d} :catch_44
    .catchall {:try_start_3c .. :try_end_3d} :catchall_4a

    if-eq v6, v9, :cond_24

    .line 353
    const/4 v8, 0x1

    .line 359
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    goto :goto_3b

    .line 356
    .end local v4    # "in1":Ljava/io/InputStream;
    .end local v5    # "in2":Ljava/io/InputStream;
    .end local v6    # "read1":I
    .end local v7    # "read2":I
    :catch_44
    move-exception v3

    .line 357
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_45
    invoke-virtual {v2, v3}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4a

    .line 359
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_4a
    move-exception v8

    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    throw v8
.end method

.method public copyTo(Lcom/google/common/io/ByteSink;)J
    .registers 8
    .param p1, "sink"    # Lcom/google/common/io/ByteSink;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 267
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 268
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;

    .line 269
    .local v3, "out":Ljava/io/OutputStream;
    invoke-static {v2, v3}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1e} :catch_23
    .catchall {:try_start_7 .. :try_end_1e} :catchall_29

    move-result-wide v4

    .line 273
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-wide v4

    .line 270
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_23
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_24
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    .line 273
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_29
    move-exception v4

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v4
.end method

.method public copyTo(Ljava/io/OutputStream;)J
    .registers 8
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 245
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 246
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_19
    .catchall {:try_start_7 .. :try_end_14} :catchall_1f

    move-result-wide v4

    .line 250
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-wide v4

    .line 247
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_19
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1a
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    .line 250
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1f
    move-exception v3

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v3
.end method

.method public hash(Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
    .registers 4
    .param p1, "hashFunction"    # Lcom/google/common/hash/HashFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-interface {p1}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v0

    .line 326
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-static {v0}, Lcom/google/common/hash/Funnels;->asOutputStream(Lcom/google/common/hash/PrimitiveSink;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/io/ByteSource;->copyTo(Ljava/io/OutputStream;)J

    .line 327
    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 138
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v3

    .line 139
    .local v3, "sizeIfKnown":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_1c

    .line 149
    :goto_1b
    return v5

    .line 142
    :cond_1c
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 144
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_20
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 145
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2d} :catch_39
    .catchall {:try_start_20 .. :try_end_2d} :catchall_3f

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_37

    move v4, v5

    .line 149
    :goto_32
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    move v5, v4

    goto :goto_1b

    .line 145
    :cond_37
    const/4 v4, 0x0

    goto :goto_32

    .line 146
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_39
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3a
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_3f

    .line 149
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_3f
    move-exception v4

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v4
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 106
    .local v0, "in":Ljava/io/InputStream;
    instance-of v1, v0, Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/io/BufferedInputStream;

    .end local v0    # "in":Ljava/io/InputStream;
    :goto_a
    return-object v0

    .restart local v0    # "in":Ljava/io/InputStream;
    :cond_b
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_a
.end method

.method public abstract openStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read(Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .registers 6
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "processor":Lcom/google/common/io/ByteProcessor;, "Lcom/google/common/io/ByteProcessor<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 310
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 311
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2, p1}, Lcom/google/common/io/ByteStreams;->readBytes(Ljava/io/InputStream;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_19
    .catchall {:try_start_7 .. :try_end_14} :catchall_1f

    move-result-object v3

    .line 315
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-object v3

    .line 312
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_19
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1a
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    .line 315
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1f
    move-exception v3

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v3
.end method

.method public read()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 285
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 286
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_16
    .catchall {:try_start_4 .. :try_end_11} :catchall_1c

    move-result-object v3

    .line 290
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-object v3

    .line 287
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_16
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_17
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1c

    .line 290
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1c
    move-exception v3

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v3
.end method

.method public size()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v3

    .line 193
    .local v3, "sizeIfKnown":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 194
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 214
    :goto_14
    return-wide v4

    .line 197
    :cond_15
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 199
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_19
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 200
    .local v2, "in":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/google/common/io/ByteSource;->countBySkipping(Ljava/io/InputStream;)J
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_26} :catch_2b
    .catchall {:try_start_19 .. :try_end_26} :catchall_45

    move-result-wide v4

    .line 204
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    goto :goto_14

    .line 201
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_2b
    move-exception v4

    .line 204
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 207
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 209
    :try_start_33
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 210
    .restart local v2    # "in":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/google/common/io/ByteStreams;->exhaust(Ljava/io/InputStream;)J
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_40} :catch_4a
    .catchall {:try_start_33 .. :try_end_40} :catchall_50

    move-result-wide v4

    .line 214
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    goto :goto_14

    .line 204
    .end local v2    # "in":Ljava/io/InputStream;
    :catchall_45
    move-exception v4

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v4

    .line 211
    :catch_4a
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_4b
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_50

    .line 214
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_50
    move-exception v4

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v4
.end method

.method public sizeIfKnown()Lcom/google/common/base/Optional;
    .registers 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public slice(JJ)Lcom/google/common/io/ByteSource;
    .registers 12
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .prologue
    .line 121
    new-instance v0, Lcom/google/common/io/ByteSource$SlicedByteSource;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/io/ByteSource$SlicedByteSource;-><init>(Lcom/google/common/io/ByteSource;JJ)V

    return-object v0
.end method
