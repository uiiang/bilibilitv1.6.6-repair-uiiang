.class public Lmybl/CdnFailoverDataSourceFactory;
.super Ljava/lang/Object;
.source "CdnFailoverDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


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

.field private final upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmybl/CdnFailoverDataSourceFactory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 16
    iput-object p2, p0, Lmybl/CdnFailoverDataSourceFactory;->candidates:Ljava/util/List;

    .line 17
    iput-object p3, p0, Lmybl/CdnFailoverDataSourceFactory;->kind:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lmybl/CdnFailoverDataSource;

    iget-object v1, p0, Lmybl/CdnFailoverDataSourceFactory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v2, p0, Lmybl/CdnFailoverDataSourceFactory;->candidates:Ljava/util/List;

    iget-object v3, p0, Lmybl/CdnFailoverDataSourceFactory;->kind:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lmybl/CdnFailoverDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
