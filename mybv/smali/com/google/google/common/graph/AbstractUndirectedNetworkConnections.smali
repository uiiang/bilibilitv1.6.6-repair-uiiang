.class abstract Lcom/google/common/graph/AbstractUndirectedNetworkConnections;
.super Ljava/lang/Object;
.source "AbstractUndirectedNetworkConnections.java"

# interfaces
.implements Lcom/google/common/graph/NetworkConnections;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/NetworkConnections",
        "<TN;TE;>;"
    }
.end annotation


# instance fields
.field protected final incidentEdgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;TN;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;TN;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/graph/AbstractUndirectedNetworkConnections;, "Lcom/google/common/graph/AbstractUndirectedNetworkConnections<TN;TE;>;"
    .local p1, "incidentEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 4
    .param p3, "isSelfLoop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;Z)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/graph/AbstractUndirectedNetworkConnections;, "Lcom/google/common/graph/AbstractUndirectedNetworkConnections<TN;TE;>;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    if-nez p3, :cond_5

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    :cond_5
    return-void
.end method

.method public addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/google/common/graph/AbstractUndirectedNetworkConnections;, "Lcom/google/common/graph/AbstractUndirectedNetworkConnections<TN;TE;>;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    iget-object v1, p0, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "previousNode":Ljava/lang/Object;, "TN;"
    if-nez v0, :cond_d

    const/4 v1, 0x1

    :goto_9
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 96
    return-void

    .line 95
    :cond_d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public inEdges()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/graph/AbstractUndirectedNetworkConnections;, "Lcom/google/common/graph/AbstractUndirectedNetworkConnections<TN;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->incidentEdges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public incidentEdges()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/graph/AbstractUndirectedNetworkConnections;, "Lcom/google/common/graph/AbstractUndirectedNetworkConnections<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public oppositeNode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "edge"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TN;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/google/common/graph/AbstractUndirectedNetworkConnections;, "Lcom/google/common/graph/AbstractUndirectedNetworkConnections<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public outEdges()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/google/common/graph/AbstractUndirectedNetworkConnections;, "Lcom/google/common/graph/AbstractUndirectedNetworkConnections<TN;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->incidentEdges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public predecessors()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/graph/AbstractUndirectedNetworkConnections;, "Lcom/google/common/graph/AbstractUndirectedNetworkConnections<TN;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->adjacentNodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 4
    .param p1, "edge"    # Ljava/lang/Object;
    .param p2, "isSelfLoop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)TN;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/google/common/graph/AbstractUndirectedNetworkConnections;, "Lcom/google/common/graph/AbstractUndirectedNetworkConnections<TN;TE;>;"
    if-nez p2, :cond_7

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "edge"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TN;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/graph/AbstractUndirectedNetworkConnections;, "Lcom/google/common/graph/AbstractUndirectedNetworkConnections<TN;TE;>;"
    iget-object v1, p0, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "previousNode":Ljava/lang/Object;, "TN;"
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public successors()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/graph/AbstractUndirectedNetworkConnections;, "Lcom/google/common/graph/AbstractUndirectedNetworkConnections<TN;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractUndirectedNetworkConnections;->adjacentNodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
