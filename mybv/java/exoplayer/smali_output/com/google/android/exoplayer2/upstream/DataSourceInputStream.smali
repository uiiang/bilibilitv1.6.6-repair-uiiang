.class public final Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private closed:Z

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private opened:Z

.field private final singleByteArray:[B

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 4
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    .line 40
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 49
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    .line 51
    return-void
.end method

.method private checkOpened()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    if-nez v0, :cond_e

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    .line 108
    :cond_e
    return-void
.end method


# virtual methods
.method public bytesRead()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    return-wide v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_c

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    .line 101
    :cond_c
    return-void
.end method

.method public open()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->checkOpened()V

    .line 69
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->read([B)I

    move-result v0

    .line 74
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_11

    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    :goto_11
    return v1
.end method

.method public read([B)I
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 85
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->checkOpened()V

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 87
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 88
    return v1

    .line 90
    :cond_14
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    .line 91
    return v0
.end method
