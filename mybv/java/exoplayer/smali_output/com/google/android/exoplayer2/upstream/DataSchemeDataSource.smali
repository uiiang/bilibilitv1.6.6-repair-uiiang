.class public final Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "DataSchemeDataSource.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final SCHEME_DATA:Ljava/lang/String; = "data"


# instance fields
.field private bytesRemaining:I

.field private data:[B

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private readPosition:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 117
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    .line 118
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->transferEnded()V

    .line 120
    :cond_a
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 121
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 12
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 59
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    .line 60
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported scheme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 62
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "uriParts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_bb

    .line 67
    const/4 v3, 0x1

    aget-object v3, v2, v3

    .line 68
    .local v3, "dataString":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v6, v2, v4

    const-string v7, ";base64"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 70
    :try_start_48
    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_4e} :catch_4f

    .line 74
    goto :goto_78

    .line 71
    :catch_4f
    move-exception v4

    .line 72
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while parsing Base64 encoded string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedDataOfUnknownType(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v5

    throw v5

    .line 77
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_68
    sget-object v4, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    .line 79
    :goto_78
    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    array-length v4, v4

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-gtz v4, :cond_b1

    .line 83
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    long-to-int v5, v4

    iput v5, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->readPosition:I

    .line 84
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    array-length v4, v4

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->bytesRemaining:I

    .line 85
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_a1

    .line 86
    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->bytesRemaining:I

    int-to-long v4, v4

    iget-wide v8, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    iput v5, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->bytesRemaining:I

    .line 88
    :cond_a1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 89
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_ad

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_b0

    :cond_ad
    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->bytesRemaining:I

    int-to-long v4, v4

    :goto_b0
    return-wide v4

    .line 80
    :cond_b1
    iput-object v5, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    .line 81
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/16 v5, 0x7d8

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw v4

    .line 64
    .end local v3    # "dataString":Ljava/lang/String;
    :cond_bb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected URI format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedDataOfUnknownType(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v3

    throw v3
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 94
    if-nez p3, :cond_4

    .line 95
    const/4 v0, 0x0

    return v0

    .line 97
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->bytesRemaining:I

    if-nez v0, :cond_a

    .line 98
    const/4 v0, -0x1

    return v0

    .line 100
    :cond_a
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->readPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->readPosition:I

    .line 103
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->bytesRemaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->bytesRemaining:I

    .line 104
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->bytesTransferred(I)V

    .line 105
    return p3
.end method
