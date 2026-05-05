.class public final Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;,
        Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final resolver:Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

.field private final upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private upstreamOpened:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;)V
    .registers 3
    .param p1, "upstreamDataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "resolver"    # Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 103
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->resolver:Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    .line 104
    return-void
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 3
    .param p1, "transferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 108
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 110
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamOpened:Z

    if-eqz v0, :cond_c

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamOpened:Z

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

    .line 142
    :cond_c
    return-void
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

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 128
    .local v0, "reportedUri":Landroid/net/Uri;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->resolver:Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;->resolveReportedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 5
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->resolver:Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;->resolveDataSpec(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 115
    .local v0, "resolvedDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamOpened:Z

    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v1

    return-wide v1
.end method

.method public read([BII)I
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    return v0
.end method
