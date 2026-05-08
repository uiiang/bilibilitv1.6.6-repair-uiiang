.class public final Lcom/google/android/exoplayer2/upstream/DataSourceUtil;
.super Ljava/lang/Object;
.source "DataSourceUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .registers 2
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 92
    if-eqz p0, :cond_8

    .line 93
    :try_start_2
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 95
    :catch_6
    move-exception v0

    goto :goto_9

    .line 97
    :cond_8
    :goto_8
    nop

    .line 98
    :goto_9
    return-void
.end method

.method public static readExactly(Lcom/google/android/exoplayer2/upstream/DataSource;I)[B
    .registers 8
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-array v0, p1, [B

    .line 73
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 74
    .local v1, "position":I
    :goto_3
    if-ge v1, p1, :cond_33

    .line 75
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v2

    .line 76
    .local v2, "bytesRead":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    .line 80
    add-int/2addr v1, v2

    .line 81
    .end local v2    # "bytesRead":I
    goto :goto_3

    .line 77
    .restart local v2    # "bytesRead":I
    :cond_10
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough data could be read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    .end local v2    # "bytesRead":I
    :cond_33
    return-object v0
.end method

.method public static readToEnd(Lcom/google/android/exoplayer2/upstream/DataSource;)[B
    .registers 6
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 46
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 47
    .local v1, "position":I
    const/4 v2, 0x0

    .line 48
    .local v2, "bytesRead":I
    :cond_6
    :goto_6
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    .line 49
    array-length v4, v0

    if-ne v1, v4, :cond_13

    .line 50
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 52
    :cond_13
    array-length v4, v0

    sub-int/2addr v4, v1

    invoke-interface {p0, v0, v1, v4}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v2

    .line 53
    if-eq v2, v3, :cond_6

    .line 54
    add-int/2addr v1, v2

    goto :goto_6

    .line 57
    :cond_1d
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    return-object v3
.end method
