.class public final Lcom/google/android/exoplayer2/upstream/FileDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "FileDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;,
        Lcom/google/android/exoplayer2/upstream/FileDataSource$Api21;,
        Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bytesRemaining:J

.field private file:Ljava/io/RandomAccessFile;

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 115
    return-void
.end method

.method private static openLocalFile(Landroid/net/Uri;)Ljava/io/RandomAccessFile;
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 192
    const/16 v0, 0x7d6

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_13} :catch_24
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_13} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_13} :catch_14

    return-object v1

    .line 214
    :catch_14
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/16 v2, 0x7d0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    .line 212
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v2, v1, v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v2

    .line 193
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_24
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 207
    new-instance v2, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    .line 209
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4c

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    # invokes: Lcom/google/android/exoplayer2/upstream/FileDataSource$Api21;->isPermissionError(Ljava/lang/Throwable;)Z
    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource$Api21;->access$000(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 210
    goto :goto_4e

    .line 211
    :cond_4c
    const/16 v0, 0x7d5

    :goto_4e
    invoke-direct {v2, v1, v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v2

    .line 195
    :cond_52
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 200
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 196
    const-string v3, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3ec

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->uri:Landroid/net/Uri;

    .line 176
    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_b

    .line 177
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_19
    .catchall {:try_start_4 .. :try_end_b} :catchall_17

    .line 182
    :cond_b
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 183
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    if-eqz v0, :cond_16

    .line 184
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 185
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->transferEnded()V

    .line 188
    :cond_16
    return-void

    .line 182
    :catchall_17
    move-exception v2

    goto :goto_22

    .line 179
    :catch_19
    move-exception v2

    .line 180
    .local v2, "e":Ljava/io/IOException;
    :try_start_1a
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    .line 182
    .end local v2    # "e":Ljava/io/IOException;
    :goto_22
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 183
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    if-eqz v0, :cond_2d

    .line 184
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 185
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->transferEnded()V

    .line 187
    :cond_2d
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 8
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 119
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 120
    .local v0, "uri":Landroid/net/Uri;
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->uri:Landroid/net/Uri;

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 122
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->openLocalFile(Landroid/net/Uri;)Ljava/io/RandomAccessFile;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 124
    :try_start_d
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 125
    nop

    .line 126
    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_25

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v1, v3

    goto :goto_27

    :cond_25
    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    :goto_27
    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_29} :catch_42

    .line 129
    nop

    .line 130
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_39

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 140
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    return-wide v1

    .line 131
    :cond_39
    new-instance v1, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/16 v2, 0x7d8

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 127
    :catch_42
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/16 v3, 0x7d0

    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public read([BII)I
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 145
    if-nez p3, :cond_4

    .line 146
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 148
    const/4 v0, -0x1

    return v0

    .line 152
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, p1, p2, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_2f

    .line 155
    .local v0, "bytesRead":I
    nop

    .line 157
    if-lez v0, :cond_2e

    .line 158
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    .line 159
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesTransferred(I)V

    .line 162
    :cond_2e
    return v0

    .line 153
    .end local v0    # "bytesRead":I
    :catch_2f
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/16 v2, 0x7d0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v1
.end method
