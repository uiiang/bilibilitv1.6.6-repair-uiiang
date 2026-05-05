.class final Lcom/google/common/collect/MapMakerInternalMap$CleanupMapTask;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CleanupMapTask"
.end annotation


# instance fields
.field final mapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<****>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<****>;)V"
        }
    .end annotation

    .prologue
    .line 2062
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<****>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2063
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$CleanupMapTask;->mapReference:Ljava/lang/ref/WeakReference;

    .line 2064
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2068
    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap$CleanupMapTask;->mapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap;

    .line 2069
    .local v3, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<****>;"
    if-nez v3, :cond_10

    .line 2070
    new-instance v5, Ljava/util/concurrent/CancellationException;

    invoke-direct {v5}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v5

    .line 2073
    :cond_10
    iget-object v0, v3, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .local v0, "arr$":[Lcom/google/common/collect/MapMakerInternalMap$Segment;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_14
    if-ge v1, v2, :cond_1e

    aget-object v4, v0, v1

    .line 2074
    .local v4, "segment":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<****>;"
    invoke-virtual {v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    .line 2073
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 2076
    .end local v4    # "segment":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<****>;"
    :cond_1e
    return-void
.end method
