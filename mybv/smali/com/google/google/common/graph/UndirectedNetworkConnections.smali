.class final Lcom/google/common/graph/UndirectedNetworkConnections;
.super Lcom/google/common/graph/AbstractUndirectedNetworkConnections;
.source "UndirectedNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractUndirectedNetworkConnections",
        "<TN;TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;TN;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/graph/UndirectedNetworkConnections;, "Lcom/google/common/graph/UndirectedNetworkConnections<TN;TE;>;"
    .local p1, "incidentEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;-><init>(Ljava/util/Map;)V

    .line 39
    return-void
.end method

.method static of()Lcom/google/common/graph/UndirectedNetworkConnections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/graph/UndirectedNetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/google/common/graph/UndirectedNetworkConnections;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/UndirectedNetworkConnections;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedNetworkConnections;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TE;TN;>;)",
            "Lcom/google/common/graph/UndirectedNetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "incidentEdges":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    new-instance v0, Lcom/google/common/graph/UndirectedNetworkConnections;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableBiMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/UndirectedNetworkConnections;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public adjacentNodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/google/common/graph/UndirectedNetworkConnections;, "Lcom/google/common/graph/UndirectedNetworkConnections<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/UndirectedNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/google/common/graph/UndirectedNetworkConnections;, "Lcom/google/common/graph/UndirectedNetworkConnections<TN;TE;>;"
    new-instance v1, Lcom/google/common/graph/EdgesConnecting;

    iget-object v0, p0, Lcom/google/common/graph/UndirectedNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/common/graph/EdgesConnecting;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v1
.end method
