.class public final Lorg/jsoup/internal/ConstrainableInputStream;
.super Ljava/io/BufferedInputStream;
.source "ConstrainableInputStream.java"


# static fields
.field private static final DefaultSize:I = 0x8000


# instance fields
.field private final capped:Z

.field private interrupted:Z

.field private final maxSize:I

.field private remaining:I

.field private startTime:J

.field private timeout:J


# direct methods
.method private constructor <init>(Ljava/io/InputStream;II)V
    .registers 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .param p3, "maxSize"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 22
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/jsoup/internal/ConstrainableInputStream;->timeout:J

    .line 28
    if-ltz p3, :cond_1e

    move v0, v1

    :goto_c
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 29
    iput p3, p0, Lorg/jsoup/internal/ConstrainableInputStream;->maxSize:I

    .line 30
    iput p3, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    .line 31
    if-eqz p3, :cond_20

    :goto_15
    iput-boolean v1, p0, Lorg/jsoup/internal/ConstrainableInputStream;->capped:Z

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->startTime:J

    .line 33
    return-void

    :cond_1e
    move v0, v2

    .line 28
    goto :goto_c

    :cond_20
    move v1, v2

    .line 31
    goto :goto_15
.end method

.method private expired()Z
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 114
    iget-wide v6, p0, Lorg/jsoup/internal/ConstrainableInputStream;->timeout:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_a

    .line 119
    :cond_9
    :goto_9
    return v4

    .line 117
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 118
    .local v2, "now":J
    iget-wide v6, p0, Lorg/jsoup/internal/ConstrainableInputStream;->startTime:J

    sub-long v0, v2, v6

    .line 119
    .local v0, "dur":J
    iget-wide v6, p0, Lorg/jsoup/internal/ConstrainableInputStream;->timeout:J

    cmp-long v5, v0, v6

    if-lez v5, :cond_9

    const/4 v4, 0x1

    goto :goto_9
.end method

.method public static wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "bufferSize"    # I
    .param p2, "maxSize"    # I

    .prologue
    .line 43
    instance-of v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;

    if-eqz v0, :cond_7

    .line 44
    check-cast p0, Lorg/jsoup/internal/ConstrainableInputStream;

    .line 43
    .end local p0    # "in":Ljava/io/InputStream;
    :goto_6
    return-object p0

    .line 45
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_7
    new-instance v0, Lorg/jsoup/internal/ConstrainableInputStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/jsoup/internal/ConstrainableInputStream;-><init>(Ljava/io/InputStream;II)V

    move-object p0, v0

    goto :goto_6
.end method


# virtual methods
.method public read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 50
    iget-boolean v2, p0, Lorg/jsoup/internal/ConstrainableInputStream;->interrupted:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lorg/jsoup/internal/ConstrainableInputStream;->capped:Z

    if-eqz v2, :cond_e

    iget v2, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    if-gtz v2, :cond_e

    .line 68
    :cond_d
    :goto_d
    return v1

    .line 52
    :cond_e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jsoup/internal/ConstrainableInputStream;->interrupted:Z

    goto :goto_d

    .line 57
    :cond_18
    invoke-direct {p0}, Lorg/jsoup/internal/ConstrainableInputStream;->expired()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 58
    new-instance v2, Ljava/net/SocketTimeoutException;

    const-string v3, "Read timeout"

    invoke-direct {v2, v3}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_26
    iget-boolean v2, p0, Lorg/jsoup/internal/ConstrainableInputStream;->capped:Z

    if-eqz v2, :cond_30

    iget v2, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    if-le p3, v2, :cond_30

    .line 61
    iget p3, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    .line 64
    :cond_30
    :try_start_30
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    .line 65
    .local v1, "read":I
    iget v2, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I
    :try_end_39
    .catch Ljava/net/SocketTimeoutException; {:try_start_30 .. :try_end_39} :catch_3a

    goto :goto_d

    .line 67
    .end local v1    # "read":I
    :catch_3a
    move-exception v0

    .line 68
    .local v0, "e":Ljava/net/SocketTimeoutException;
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public readToByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 12
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v0, 0x8000

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 77
    if-ltz p1, :cond_2d

    move v6, v7

    :goto_8
    const-string v9, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v6, v9}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 78
    if-lez p1, :cond_2f

    move v1, v7

    .line 79
    .local v1, "localCapped":Z
    :goto_10
    if-eqz v1, :cond_15

    if-ge p1, v0, :cond_15

    move v0, p1

    .line 80
    .local v0, "bufferSize":I
    :cond_15
    new-array v4, v0, [B

    .line 81
    .local v4, "readBuffer":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 84
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    move v5, p1

    .line 87
    .local v5, "remaining":I
    :goto_1d
    invoke-virtual {p0, v4}, Lorg/jsoup/internal/ConstrainableInputStream;->read([B)I

    move-result v3

    .line 88
    .local v3, "read":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_31

    .line 98
    :goto_24
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    return-object v6

    .end local v0    # "bufferSize":I
    .end local v1    # "localCapped":Z
    .end local v2    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "read":I
    .end local v4    # "readBuffer":[B
    .end local v5    # "remaining":I
    :cond_2d
    move v6, v8

    .line 77
    goto :goto_8

    :cond_2f
    move v1, v8

    .line 78
    goto :goto_10

    .line 89
    .restart local v0    # "bufferSize":I
    .restart local v1    # "localCapped":Z
    .restart local v2    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "read":I
    .restart local v4    # "readBuffer":[B
    .restart local v5    # "remaining":I
    :cond_31
    if-eqz v1, :cond_3a

    .line 90
    if-lt v3, v5, :cond_39

    .line 91
    invoke-virtual {v2, v4, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_24

    .line 94
    :cond_39
    sub-int/2addr v5, v3

    .line 96
    :cond_3a
    invoke-virtual {v2, v4, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1d
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 104
    iget v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->maxSize:I

    iget v1, p0, Lorg/jsoup/internal/ConstrainableInputStream;->markpos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    .line 105
    return-void
.end method

.method public timeout(JJ)Lorg/jsoup/internal/ConstrainableInputStream;
    .registers 8
    .param p1, "startTimeNanos"    # J
    .param p3, "timeoutMillis"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lorg/jsoup/internal/ConstrainableInputStream;->startTime:J

    .line 109
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p3

    iput-wide v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->timeout:J

    .line 110
    return-object p0
.end method
