.class public final Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;
.super Ljava/lang/Object;
.source "FileDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private listener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/FileDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/FileDataSource;
    .registers 3

    .line 100
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    .line 101
    .local v0, "dataSource":Lcom/google/android/exoplayer2/upstream/FileDataSource;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_c

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 104
    :cond_c
    return-object v0
.end method

.method public setListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;
    .registers 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 95
    return-object p0
.end method
