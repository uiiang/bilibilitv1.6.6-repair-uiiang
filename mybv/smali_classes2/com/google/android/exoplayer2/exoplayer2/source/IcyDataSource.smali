.class final Lcom/google/android/exoplayer2/source/IcyDataSource;
.super Ljava/lang/Object;
.source "IcyDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bytesUntilMetadata:I

.field private final listener:Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;

.field private final metadataIntervalBytes:I

.field private final metadataLengthByteHolder:[B

.field private final upstream:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/IcyDataSource$Listener;)V
    .registers 6
    .param p1, "upstream"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "metadataIntervalBytes"    # I
    .param p3, "listener"    # Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    if-lez p2, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 70
    iput p2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataIntervalBytes:I

    .line 71
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->listener:Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;

    .line 72
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataLengthByteHolder:[B

    .line 73
    iput p2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    .line 74
    return-void
.end method

.method private readMetadata()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataLengthByteHolder:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 128
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 129
    return v2

    .line 131
    :cond_e
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataLengthByteHolder:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    .line 132
    .local v4, "metadataLength":I
    if-nez v4, :cond_19

    .line 133
    return v3

    .line 136
    :cond_19
    const/4 v5, 0x0

    .line 137
    .local v5, "offset":I
    move v6, v4

    .line 138
    .local v6, "lengthRemaining":I
    new-array v7, v4, [B

    .line 139
    .local v7, "metadata":[B
    :goto_1d
    if-lez v6, :cond_2b

    .line 140
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v8, v7, v5, v6}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 141
    if-ne v0, v1, :cond_28

    .line 142
    return v2

    .line 144
    :cond_28
    add-int/2addr v5, v0

    .line 145
    sub-int/2addr v6, v0

    goto :goto_1d

    .line 149
    :cond_2b
    :goto_2b
    if-lez v4, :cond_36

    add-int/lit8 v1, v4, -0x1

    aget-byte v1, v7, v1

    if-nez v1, :cond_36

    .line 150
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .line 153
    :cond_36
    if-lez v4, :cond_42

    .line 154
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->listener:Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;

    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v2, v7, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;->onIcyMetadata(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 156
    :cond_42
    return v3
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 3
    .param p1, "transferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 78
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 80
    return-void
.end method

.method public close()V
    .registers 2

    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 3
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    const/4 v1, -0x1

    if-nez v0, :cond_11

    .line 90
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/IcyDataSource;->readMetadata()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 91
    iget v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->metadataIntervalBytes:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    goto :goto_11

    .line 93
    :cond_10
    return v1

    .line 96
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget v2, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, p1, p2, v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 97
    .local v0, "bytesRead":I
    if-eq v0, v1, :cond_24

    .line 98
    iget v1, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/IcyDataSource;->bytesUntilMetadata:I

    .line 100
    :cond_24
    return v0
.end method
