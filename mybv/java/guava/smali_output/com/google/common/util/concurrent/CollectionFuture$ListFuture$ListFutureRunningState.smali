.class final Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;
.super Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;
.source "CollectionFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListFutureRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/CollectionFuture",
        "<TV;",
        "Ljava/util/List",
        "<TV;>;>.CollectionFutureRunningState;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;Lcom/google/common/collect/ImmutableCollection;Z)V
    .registers 4
    .param p3, "allMustSucceed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;, "Lcom/google/common/util/concurrent/CollectionFuture$ListFuture<TV;>.ListFutureRunningState;"
    .local p2, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;-><init>(Lcom/google/common/util/concurrent/CollectionFuture;Lcom/google/common/collect/ImmutableCollection;Z)V

    .line 101
    return-void
.end method


# virtual methods
.method public bridge synthetic combine(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 96
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;, "Lcom/google/common/util/concurrent/CollectionFuture$ListFuture<TV;>.ListFutureRunningState;"
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;->combine(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public combine(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/Optional",
            "<TV;>;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;, "Lcom/google/common/util/concurrent/CollectionFuture$ListFuture<TV;>.ListFutureRunningState;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/base/Optional<TV;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 106
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    .line 107
    .local v0, "element":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TV;>;"
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v3

    :goto_1e
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_22
    const/4 v3, 0x0

    goto :goto_1e

    .line 109
    .end local v0    # "element":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TV;>;"
    :cond_24
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method
