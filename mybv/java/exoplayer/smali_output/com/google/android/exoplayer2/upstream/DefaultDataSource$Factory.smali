.class public final Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DefaultDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final baseDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final context:Landroid/content/Context;

.field private transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->context:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->baseDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 96
    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DefaultDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DefaultDataSource;
    .registers 4

    .line 116
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->baseDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 117
    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 118
    .local v0, "dataSource":Lcom/google/android/exoplayer2/upstream/DefaultDataSource;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_14

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 121
    :cond_14
    return-object v0
.end method

.method public setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;
    .registers 2
    .param p1, "transferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 111
    return-object p0
.end method
