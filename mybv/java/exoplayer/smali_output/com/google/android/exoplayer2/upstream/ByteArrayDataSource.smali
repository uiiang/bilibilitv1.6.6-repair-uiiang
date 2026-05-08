.class public final Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "ByteArrayDataSource.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bytesRemaining:I

.field private final data:[B

.field private opened:Z

.field private readPosition:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>([B)V
    .registers 4
    .param p1, "data"    # [B

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 50
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    array-length v1, p1

    if-lez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    .line 53
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 96
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->opened:Z

    if-eqz v0, :cond_a

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->opened:Z

    .line 98
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->transferEnded()V

    .line 100
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    .line 101
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 8
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 59
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_46

    .line 62
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    array-length v0, v0

    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    long-to-int v2, v1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    .line 64
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_33

    .line 65
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    int-to-long v0, v0

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    .line 67
    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->opened:Z

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 69
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_42

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_45

    :cond_42
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    int-to-long v0, v0

    :goto_45
    return-wide v0

    .line 60
    :cond_46
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 74
    if-nez p3, :cond_4

    .line 75
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    if-nez v0, :cond_a

    .line 77
    const/4 v0, -0x1

    return v0

    .line 80
    :cond_a
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    .line 83
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    .line 84
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesTransferred(I)V

    .line 85
    return p3
.end method
