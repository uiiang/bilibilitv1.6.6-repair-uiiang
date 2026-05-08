.class public final Lcom/google/android/exoplayer2/upstream/AssetDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "AssetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    .line 79
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    .line 163
    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_b

    .line 164
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_19
    .catchall {:try_start_4 .. :try_end_b} :catchall_17

    .line 169
    :cond_b
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 170
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->opened:Z

    if-eqz v0, :cond_16

    .line 171
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->opened:Z

    .line 172
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->transferEnded()V

    .line 175
    :cond_16
    return-void

    .line 169
    :catchall_17
    move-exception v2

    goto :goto_22

    .line 166
    :catch_19
    move-exception v2

    .line 167
    .local v2, "e":Ljava/io/IOException;
    :try_start_1a
    new-instance v3, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    .line 169
    .end local v2    # "e":Ljava/io/IOException;
    :goto_22
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 170
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->opened:Z

    if-eqz v0, :cond_2d

    .line 171
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->opened:Z

    .line 172
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->transferEnded()V

    .line 174
    :cond_2d
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 13
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 84
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    .line 85
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    .line 87
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_2c

    .line 88
    :cond_1f
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 91
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 92
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 93
    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 94
    .local v3, "skipped":J
    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6b

    .line 100
    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_50

    .line 101
    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    goto :goto_62

    .line 103
    :cond_50
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    .line 104
    const-wide/32 v9, 0x7fffffff

    cmp-long v1, v5, v9

    if-nez v1, :cond_62

    .line 108
    iput-wide v7, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_62
    .catch Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException; {:try_start_0 .. :try_end_62} :catch_84
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_62} :catch_74

    .line 119
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "skipped":J
    :cond_62
    :goto_62
    nop

    .line 121
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->opened:Z

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 123
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    return-wide v0

    .line 97
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v3    # "skipped":J
    :cond_6b
    :try_start_6b
    new-instance v1, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    const/4 v2, 0x0

    const/16 v5, 0x7d8

    invoke-direct {v1, v2, v5}, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .end local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    throw v1
    :try_end_74
    .catch Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException; {:try_start_6b .. :try_end_74} :catch_84
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_74} :catch_74

    .line 113
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "skipped":J
    .restart local p1    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :catch_74
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    .line 116
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_7e

    .line 117
    const/16 v2, 0x7d5

    goto :goto_80

    .line 118
    :cond_7e
    const/16 v2, 0x7d0

    :goto_80
    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :catch_84
    move-exception v0

    .line 112
    .local v0, "e":Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
    throw v0
.end method

.method public read([BII)I
    .registers 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 128
    if-nez p3, :cond_4

    .line 129
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_e

    .line 131
    return v4

    .line 137
    :cond_e
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_16

    move v1, p3

    goto :goto_1c

    :cond_16
    int-to-long v5, p3

    :try_start_17
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    :goto_1c
    move v0, v1

    .line 138
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_3c

    move v0, v1

    .line 141
    .local v0, "bytesRead":I
    nop

    .line 143
    if-ne v0, v4, :cond_2e

    .line 144
    return v4

    .line 146
    :cond_2e
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_38

    .line 147
    int-to-long v1, v0

    sub-long/2addr v4, v1

    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    .line 149
    :cond_38
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesTransferred(I)V

    .line 150
    return v0

    .line 139
    .end local v0    # "bytesRead":I
    :catch_3c
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    const/16 v2, 0x7d0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v1
.end method
