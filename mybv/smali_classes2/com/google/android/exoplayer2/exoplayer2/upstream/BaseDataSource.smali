.class public abstract Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.super Ljava/lang/Object;
.source "BaseDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final isNetwork:Z

.field private listenerCount:I

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/TransferListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Z)V
    .registers 4
    .param p1, "isNetwork"    # Z

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->isNetwork:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    .line 53
    return-void
.end method


# virtual methods
.method public final addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 3
    .param p1, "transferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 57
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listenerCount:I

    .line 62
    :cond_16
    return-void
.end method

.method protected final bytesTransferred(I)V
    .registers 6
    .param p1, "bytesTransferred"    # I

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 95
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listenerCount:I

    if-ge v1, v2, :cond_1d

    .line 96
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->isNetwork:Z

    .line 98
    invoke-interface {v2, p0, v0, v3, p1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZI)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 100
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public synthetic getResponseHeaders()Ljava/util/Map;
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSource$-CC;->$default$getResponseHeaders(Lcom/google/android/exoplayer2/upstream/DataSource;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final transferEnded()V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 105
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listenerCount:I

    if-ge v1, v2, :cond_1d

    .line 106
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->isNetwork:Z

    invoke-interface {v2, p0, v0, v3}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 108
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 109
    return-void
.end method

.method protected final transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 5
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listenerCount:I

    if-ge v0, v1, :cond_15

    .line 71
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->isNetwork:Z

    invoke-interface {v1, p0, p1, v2}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    .end local v0    # "i":I
    :cond_15
    return-void
.end method

.method protected final transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 5
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 81
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listenerCount:I

    if-ge v0, v1, :cond_17

    .line 83
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->isNetwork:Z

    invoke-interface {v1, p0, p1, v2}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 85
    .end local v0    # "i":I
    :cond_17
    return-void
.end method
