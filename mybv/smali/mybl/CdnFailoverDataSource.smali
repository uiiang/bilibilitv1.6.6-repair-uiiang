.class public Lmybl/CdnFailoverDataSource;
.super Ljava/lang/Object;
.source "CdnFailoverDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "CdnFailoverDataSource"


# instance fields
.field private final candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final kind:Ljava/lang/String;

.field private preferredIndex:I

.field private final transferListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/upstream/TransferListener;",
            ">;"
        }
    .end annotation
.end field

.field private upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmybl/CdnFailoverDataSource;->transferListeners:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lmybl/CdnFailoverDataSource;->preferredIndex:I

    .line 28
    iput-object p1, p0, Lmybl/CdnFailoverDataSource;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 29
    iput-object p2, p0, Lmybl/CdnFailoverDataSource;->candidates:Ljava/util/List;

    .line 30
    iput-object p3, p0, Lmybl/CdnFailoverDataSource;->kind:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private closeQuietly()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v0, :cond_c

    .line 109
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-direct {p0, v0}, Lmybl/CdnFailoverDataSource;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lmybl/CdnFailoverDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 112
    :cond_c
    return-void
.end method

.method private closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 4

    .prologue
    .line 116
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 120
    :goto_3
    return-void

    .line 117
    :catch_4
    move-exception v0

    .line 118
    const-string v1, "CdnFailoverDataSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CLOSE] Error closing data source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->transferListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v0, :cond_e

    .line 37
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 39
    :cond_e
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lmybl/CdnFailoverDataSource;->closeQuietly()V

    .line 105
    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v0, :cond_b

    .line 97
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    .line 99
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_a
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lmybl/CdnFailoverDataSource;->closeQuietly()V

    .line 45
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->candidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 46
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No CDN candidates (kind="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/CdnFailoverDataSource;->kind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2c
    const-string v0, "CdnFailoverDataSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OPEN] Opening data source, candidates="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/CdnFailoverDataSource;->candidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", kind="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/CdnFailoverDataSource;->kind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, 0x0

    .line 52
    const/4 v0, 0x0

    move v2, v0

    :goto_59
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->candidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_138

    .line 53
    iget v0, p0, Lmybl/CdnFailoverDataSource;->preferredIndex:I

    add-int/2addr v0, v2

    iget-object v1, p0, Lmybl/CdnFailoverDataSource;->candidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v3, v0, v1

    .line 54
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->candidates:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 56
    const-string v1, "CdnFailoverDataSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OPEN] Trying candidate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lmybl/CdnFailoverDataSource;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v4

    .line 59
    iget-object v1, p0, Lmybl/CdnFailoverDataSource;->transferListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 60
    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    goto :goto_a6

    .line 63
    :cond_b6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v1

    .line 65
    :try_start_c2
    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v6

    .line 66
    iput-object v4, p0, Lmybl/CdnFailoverDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 67
    iput v3, p0, Lmybl/CdnFailoverDataSource;->preferredIndex:I

    .line 68
    const-string v1, "CdnFailoverDataSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OPEN] Successfully opened candidate "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", length="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_fa} :catch_fb

    .line 69
    return-wide v6

    .line 70
    :catch_fb
    move-exception v1

    .line 71
    const-string v5, "CdnFailoverDataSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OPEN] Failed to open candidate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", error="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0, v4}, Lmybl/CdnFailoverDataSource;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 52
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_59

    .line 77
    :cond_138
    const-string v0, "CdnFailoverDataSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OPEN] All candidates failed, kind="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmybl/CdnFailoverDataSource;->kind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz v1, :cond_155

    :goto_154
    throw v1

    :cond_155
    new-instance v1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open any CDN candidate (kind="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmybl/CdnFailoverDataSource;->kind:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_154
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_25

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read() before open() (kind="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmybl/CdnFailoverDataSource;->kind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_25
    iget-object v0, p0, Lmybl/CdnFailoverDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    return v0
.end method
