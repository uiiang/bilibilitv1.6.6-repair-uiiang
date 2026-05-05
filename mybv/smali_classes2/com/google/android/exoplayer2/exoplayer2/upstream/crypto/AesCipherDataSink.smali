.class public final Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;
.super Ljava/lang/Object;
.source "AesCipherDataSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSink;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

.field private final scratch:[B

.field private final secretKey:[B

.field private final wrappedDataSink:Lcom/google/android/exoplayer2/upstream/DataSink;


# direct methods
.method public constructor <init>([BLcom/google/android/exoplayer2/upstream/DataSink;)V
    .registers 4
    .param p1, "secretKey"    # [B
    .param p2, "wrappedDataSink"    # Lcom/google/android/exoplayer2/upstream/DataSink;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;-><init>([BLcom/google/android/exoplayer2/upstream/DataSink;[B)V

    .line 54
    return-void
.end method

.method public constructor <init>([BLcom/google/android/exoplayer2/upstream/DataSink;[B)V
    .registers 4
    .param p1, "secretKey"    # [B
    .param p2, "wrappedDataSink"    # Lcom/google/android/exoplayer2/upstream/DataSink;
    .param p3, "scratch"    # [B

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lcom/google/android/exoplayer2/upstream/DataSink;

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->secretKey:[B

    .line 71
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    .line 72
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lcom/google/android/exoplayer2/upstream/DataSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSink;->close()V

    .line 108
    return-void
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 11
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lcom/google/android/exoplayer2/upstream/DataSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSink;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 77
    new-instance v0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->secretKey:[B

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uriPositionOffset:J

    iget-wide v7, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long/2addr v5, v7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;-><init>(I[BLjava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 83
    return-void
.end method

.method public write([BII)V
    .registers 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    if-nez v0, :cond_15

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lcom/google/android/exoplayer2/upstream/DataSink;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSink;->write([BII)V

    goto :goto_3e

    .line 93
    :cond_15
    const/4 v0, 0x0

    .line 94
    .local v0, "bytesProcessed":I
    :goto_16
    if-ge v0, p3, :cond_3e

    .line 95
    sub-int v1, p3, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 96
    .local v1, "bytesToProcess":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    add-int v5, p2, v0

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    const/4 v8, 0x0

    .line 97
    move-object v4, p1

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->update([BII[BI)V

    .line 98
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lcom/google/android/exoplayer2/upstream/DataSink;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/google/android/exoplayer2/upstream/DataSink;->write([BII)V

    .line 99
    add-int/2addr v0, v1

    .line 100
    .end local v1    # "bytesToProcess":I
    goto :goto_16

    .line 102
    .end local v0    # "bytesProcessed":I
    :cond_3e
    :goto_3e
    return-void
.end method
